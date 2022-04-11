package com.spring.starter.api.controller;

import java.util.UUID;

import javax.mail.MessagingException;
import javax.validation.Valid;

import com.spring.starter.api.request.user.CertificationReq;
import com.spring.starter.api.request.user.ChangePwdReq;
import com.spring.starter.api.request.user.TokenRequestDto;
import com.spring.starter.api.request.user.VerifyCodeReq;
import com.spring.starter.api.response.index.InfoDto;
import com.spring.starter.api.response.index.TokenResponseDto;
import com.spring.starter.api.service.CertificationService;
import com.spring.starter.api.service.MailService;
import com.spring.starter.common.util.RandomCodeUtil;
import com.spring.starter.config.jwt.TokenDto;
import com.spring.starter.config.security.SecurityUtil;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.starter.api.request.user.LoginReq;
import com.spring.starter.api.request.user.SignUpUserReq;
import com.spring.starter.api.response.index.LoginRes;
import com.spring.starter.api.service.AreaService;
import com.spring.starter.api.service.UserService;
import com.spring.starter.common.model.BaseResponse;
import com.spring.starter.db.entity.Area;
import com.spring.starter.db.entity.User;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
@RequestMapping("/user")
public class UserController {

	private final UserService userService;
	private final AreaService areaService;
	private final PasswordEncoder passwordEncoder;
	private final MailService mailService;
	private final CertificationService certificationService;

	@PostMapping("/signup")
	public ResponseEntity<? extends BaseResponse> signUpUser(@Valid @RequestBody SignUpUserReq singUpUserReq) {
		if (userService.isExistEmail(singUpUserReq.getEmail()))
			// 200, 201, 400, 401, 403, 409, 500
			return ResponseEntity.status(409).body(new BaseResponse("이미 존재하는 이메일입니다.", 409));
		if (userService.isExistUserId(singUpUserReq.getUserId()))
			return ResponseEntity.status(409).body(new BaseResponse("이미 존재하는 아이디입니다.", 409));

		Area area = null;
		if (singUpUserReq.getArea() != null) {
			area = areaService.nameToArea(singUpUserReq.getArea());
			if (area == null)
				return ResponseEntity.status(400).body(new BaseResponse("Area의 값이 잘못됐습니다.", 400));
		}

		// ToDo(천천히) 학생 Area -> 자동화
		String encode = passwordEncoder.encode(singUpUserReq.getPassword());
		userService.save(singUpUserReq.toUserEntity(area, encode));

		return ResponseEntity.status(201).body(new BaseResponse("회원가입에 성공하였습니다.", 201));
	}

	@PostMapping("/login")
	public ResponseEntity<? extends BaseResponse> login(@Valid @RequestBody LoginReq loginReq) {
		User byId = userService.findByUserId(loginReq.getUserId());

		if (byId == null) {
			return ResponseEntity.status(400).body(new BaseResponse("존재하지 않는 아이디입니다.", 400));
		}

		if (!passwordEncoder.matches(loginReq.getPassword(), byId.getPassword())) {
			return ResponseEntity.status(400).body(new BaseResponse("비밀번호가 일치하지 않습니다.", 400));
		}

		TokenDto tokenDto = userService.createToken(loginReq);
		return ResponseEntity.status(201).body(new LoginRes("로그인을 성공적으로 했습니다.", 201, tokenDto.getAccessToken(), tokenDto.getRefreshToken()));
	}

	@PostMapping("/reissue")
	public ResponseEntity reissue(@RequestBody TokenRequestDto tokenRequestDto) {

		TokenDto newToken = userService.reissue(tokenRequestDto);
		return ResponseEntity.status(201).body(new TokenResponseDto(newToken.getAccessToken(), newToken.getRefreshToken()));
	}

	@PostMapping("/certification/signup")
	public ResponseEntity<? extends BaseResponse> sendEmailCertification(@RequestBody CertificationReq certificationReq) throws
		MessagingException {
		String code = certificationService.saveCertification(certificationReq.getEmail());
		mailService.sendSignUpCertificationMail(certificationReq.getEmail(), code);
		return ResponseEntity.status(201).body(new BaseResponse("인증코드 발송을 완료했습니다.", 201));
	}

	@PostMapping("/verification")
	public ResponseEntity<? extends BaseResponse> verifyCertification(@RequestBody VerifyCodeReq verifyCodeReq) {
		if (certificationService.matchCode(verifyCodeReq.getEmail(), verifyCodeReq.getCode())) {
			return ResponseEntity.status(200).body(new BaseResponse("인증을 성공했습니다.", 200));
		}
		return ResponseEntity.status(200).body(new BaseResponse("인증을 실패했습니다.", 400));
	}

	@PostMapping("/certification/change-pwd")
	public ResponseEntity<? extends BaseResponse> sendEmailChangePwdCertification(@RequestBody CertificationReq certificationReq) throws
		MessagingException {
		String code = certificationService.saveCertification(certificationReq.getEmail());
		mailService.sendChangePwdCertificationMail(certificationReq.getEmail(), code);
		return ResponseEntity.status(201).body(new BaseResponse("인증코드 발송을 완료했습니다.", 201));
	}

	@PostMapping("change/password")
	public ResponseEntity<? extends BaseResponse> changePwd(@RequestBody ChangePwdReq changePwdReq) {
		userService.changePassword(changePwdReq.getUserId(), changePwdReq.getPassword());
		return ResponseEntity.status(201).body(new BaseResponse("비밀번호 변경을 완료했습니다.", 201));
	}
}
