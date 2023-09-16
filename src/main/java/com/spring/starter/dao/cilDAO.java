package com.spring.starter.dao;

import com.spring.starter.model.filDTO;
import com.spring.starter.model.jobDTO;
import com.spring.starter.model.cilDetailDTO;
import com.spring.starter.model.cilPositionDTO;
import com.spring.starter.model.adminSubjectDTO;
import com.spring.starter.model.cilTrackDTO;
import com.spring.starter.model.cilPreDTO;
import org.apache.ibatis.annotations.Mapper;

import java.util.ArrayList;

@Mapper
public interface cilDAO {
    public ArrayList<filDTO> subjectList();
    public ArrayList<jobDTO> jobList();
    public ArrayList<adminSubjectDTO>subjectAllList();
    public ArrayList<cilDetailDTO> subjectDetailList(String code);
    public ArrayList<cilPositionDTO> subjectPositionList(String code);
    public ArrayList<cilPreDTO> subjectPreList(String subject);
    //public ArrayList<cilDetailCoreDTO> subjectDetailCoreList(String subject);
    public ArrayList<cilTrackDTO> subjectTrackList(String carrer_path_id);
}