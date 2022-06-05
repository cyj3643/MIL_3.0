package com.spring.starter.api.request.user;

public enum AreaSubjectEnum {
    gi("게임 인터렉티브 콘텐츠"),
    cd("콘텐츠 디자인"),
    de("디지털 엔터테인먼트"),
    vc("비주얼컴퓨팅"),
    md("미디어데이터");

    private final String getArea;
    AreaSubjectEnum(String area) {
        getArea = area;
    }

    public String toString() {
        return getArea;
    }
}
