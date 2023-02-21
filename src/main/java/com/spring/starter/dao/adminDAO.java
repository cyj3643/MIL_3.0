package com.spring.starter.dao;

import com.spring.starter.model.curriDTO;
import com.spring.starter.model.mentorDTO;
import com.spring.starter.model.videoDTO;

import java.util.ArrayList;

public interface adminDAO {
    //교과과정 편집
    public ArrayList<curriDTO> curriList();
    public void deleteCurriculum(int page_id);

    //멘토
    public ArrayList<mentorDTO> mentorList();
    public ArrayList<mentorDTO> mentorDetailList(int id);
    public void addMentor(String name,String industry_name,String email, String area);
    public void updateMentor(int id,String name,String industry_name,String email, String area);

    //비디오
    public ArrayList<videoDTO> videoList();
    public ArrayList<videoDTO> videoDetailList(int id);
    public void addVideo(String job_name,String video_title,String thumbnail_url, String video_link,String jobs_id);
    public void updateVideo(int id,String job_name,String video_title,String thumbnail_url, String video_link,String jobs_id);

    //이메일 전송
}
