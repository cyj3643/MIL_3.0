package com.spring.starter.api.admin.service;

import com.spring.starter.api.response.index.AMAMBoardDto;
import com.spring.starter.db.entity.AMAM;
import com.spring.starter.db.repository.AMAMRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class AdminAMAMService {
    private final AMAMRepository amamRepository;

    @Transactional
    public List<AMAMBoardDto> getAll(Pageable pageable) {
        Page<AMAM> tmp_list = amamRepository.findAll(pageable);
        return tmp_list.toList().stream().map(s -> new AMAMBoardDto(s)).collect(Collectors.toList());
    }

    @Transactional
    public void deleteAMAM(String title){
        amamRepository.deleteByTitle(title);
    }




}
