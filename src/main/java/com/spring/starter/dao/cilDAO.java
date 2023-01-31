package com.spring.starter.dao;

import com.spring.starter.model.cilDTO;
import com.spring.starter.model.jobDTO;
import com.spring.starter.model.cilDetailDTO;
import com.spring.starter.model.cilTrackDTO;
import org.apache.ibatis.annotations.Mapper;

import java.util.ArrayList;

@Mapper
public interface cilDAO {
    public ArrayList<cilDTO> subjectList();
    public ArrayList<jobDTO> jobList();
    public ArrayList<cilDetailDTO> subjectDetailList(String subject);
    public ArrayList<cilTrackDTO> subjectTrackList(int page_id);
}