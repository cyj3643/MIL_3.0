package com.spring.starter.api.service;

import java.util.NoSuchElementException;

import com.spring.starter.api.request.user.LoginReq;
import com.spring.starter.api.request.user.TokenRequestDto;
import com.spring.starter.api.response.index.InfoDto;
import com.spring.starter.config.jwt.TokenDto;
import com.spring.starter.config.jwt.TokenProvider;
import com.spring.starter.config.security.SecurityUtil;
import com.spring.starter.db.entity.RefreshToken;
import com.spring.starter.db.repository.RefreshTokenRepository;
import io.jsonwebtoken.JwtException;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.core.Authentication;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.spring.starter.db.entity.User;
import com.spring.starter.db.repository.UserRepository;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
@Slf4j
public class UserService {

	private final UserRepository userRepository;
	private final AuthenticationManagerBuilder authenticationManagerBuilder;
	private final TokenProvider tokenProvider;
	private final RefreshTokenRepository refreshTokenRepository;
	private final PasswordEncoder passwordEncoder;

	public boolean isExistEmail(String email) {
		User byEmail = userRepository.findByEmail(email).orElse(null);
		return byEmail != null;
	}

	public void save(User toUserEntity) {
		userRepository.save(toUserEntity);
	}

	public boolean isExistUserId(String userId) {
		User byUserId = userRepository.findByUserId(userId).orElse(null);
		return byUserId != null;
	}

	public User findByUserId(String userId) {
		return userRepository.findByUserId(userId).orElse(null);
	}

	public InfoDto getMyInfo() {

		return userRepository.findById(SecurityUtil.getCurrentUserId())
				.map(InfoDto::new)
				.orElseThrow(() -> new RuntimeException("로그인 유저 정보가 없습니다."));
	}

	public TokenDto createToken(LoginReq loginReq) {
		// 1. Longin Id/pw 를 기반으로 AuthenticationToken 생성
		UsernamePasswordAuthenticationToken authenticationToken = new UsernamePasswordAuthenticationToken(loginReq.getUserId(), loginReq.getPassword());

		// 2. 실제로 검증 (사용자 비밀번호 체크) 이루어지는 부분
		// authenticate 메서드가 실행이 될 때 CustomUserDetailService 에서 만들었던 loadUserByUsername 메서드가 실행
		Authentication authentication = authenticationManagerBuilder.getObject().authenticate(authenticationToken);

		// 3. 인증 정보를 기반으로 JWT 토큰 생성
		TokenDto tokenDto = tokenProvider.generateTokenDto(authentication);

		// 4. RefreshToken 저장
		RefreshToken refreshToken = RefreshToken.builder()
				.key(authentication.getName())
				.value(tokenDto.getRefreshToken())
				.build();

		refreshTokenRepository.save(refreshToken);

		// 5. 토큰 발금
		return tokenDto;
	}

	public TokenDto reissue(TokenRequestDto tokenRequestDto) {
		// 1. Refresh Token 검증
		if (!tokenProvider.validateToken(tokenRequestDto.getRefreshToken())) {
			throw new JwtException("Refresh Token 이 유효하지 않습니다.");
		}

		// 2. Access Token 에서 User Id 가져오기
		Authentication authentication = tokenProvider.getAuthentication(tokenRequestDto.getAccessToken());

		// 3. 저장소에서 User Id 를 기반으로 Refresh Token 값 가져옴
		RefreshToken refreshToken = refreshTokenRepository.findByRefreshKey(authentication.getName())
				.orElseThrow(() -> new JwtException("로그아웃 된 사용자입니다."));

		// 4. Refresh Token 일치하는지 검사
		if (!refreshToken.getRefreshValue().equals(tokenRequestDto.getRefreshToken())) {
			throw new JwtException("토큰의 유저 정보가 일치하지 않습니다.");
		}

		// 5. 새로운 토큰 생성
		TokenDto tokenDto = tokenProvider.generateTokenDto(authentication);

		// 6. 저장소 정보 업데이트
		RefreshToken newRefreshToken = refreshToken.updateValue(tokenDto.getRefreshToken());
		refreshTokenRepository.save(newRefreshToken);

		// 토큰 발금
		return tokenDto;
	}

	public void changePassword(String userId, String password) {
		User byUserId = userRepository.findByUserId(userId)
			.orElseThrow(() -> new NoSuchElementException("존재하지 않는 아이디입니다."));
		byUserId.updatePassword(passwordEncoder.encode(password));
		userRepository.save(byUserId);
	}
}
