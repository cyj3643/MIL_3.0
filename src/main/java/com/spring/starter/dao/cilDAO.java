package com.spring.starter.dao;

import com.spring.starter.model.cilDTO;
import com.spring.starter.model.cilDetailDTO;
import org.apache.ibatis.annotations.Mapper;

import java.util.ArrayList;

@Mapper
public interface cilDAO {
    public ArrayList<cilDTO> subjectList();
    public ArrayList<cilDetailDTO> subjectDetailList(String subject);

    //public ArrayList<cilTrackDTO> subjectTrackList(int page_id);
}