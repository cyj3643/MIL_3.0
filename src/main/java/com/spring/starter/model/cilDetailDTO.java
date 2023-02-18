package com.spring.starter.model;
public class cilDetailDTO {

    private String name;
    private String detail;
    private int semester;
    private int semester_social_media;
    private String tool;
    private String relate_subject;
    private String keyword;
    private String subject;
    private String page_id;

    public String getSubject() {
        return subject;
    }
    public void setSubject(String subject) {
        this.subject = subject;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public String getDetail() {
        return detail;
    }
    public void setDetail(String detail) {
        this.detail = detail;
    }
    public int getSemester() {
        return semester;
    }
    public void setSemester(int semester) {
        this.semester = semester;
    }
    public int getSemester_social_media() {
        return semester_social_media;
    }
    public void setSemester_social_media(int semester_social_media) {
        this.semester_social_media = semester_social_media;
    }
    public String getTool() {
        return tool;
    }
    public void setTool(String tool) {
        this.tool = tool;
    }
    public String getRelate_subject() {
        return relate_subject;
    }
    public void setRelate_subject(String relate_subject) {
        this.relate_subject = relate_subject;
    }
    public String getKeyword() {
        return keyword;
    }
    public void setKeyword(String keyword) {
        this.keyword = keyword;
    }

    public String getPage_id() {
        return page_id;
    }
    public void setPage_id(String page_id) {
        this.page_id = page_id;
    }
}
