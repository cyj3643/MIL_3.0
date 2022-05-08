package com.spring.starter.api.request.user;

import com.spring.starter.db.entity.Survey;
import lombok.Builder;
import lombok.Getter;

@Getter
@Builder
public class SurveyDto {
    String name;
    String graduate;
    String company;
    String question1;
    String question2;
    String question3;
    String question4;
    String question5;
    String question6;
    String question7;
    String question8;
    String question9;
    String question10;
    String question11;
    String question12;
    String question13;

    public Survey toEntity(){
        Survey survey = Survey.builder()
                .name(this.name)
                .graduate(this.graduate)
                .company(this.company)
                .question1(this.question1)
                .question2(this.question2)
                .question3(this.question3)
                .question4(this.question4)
                .question5(this.question5)
                .question6(this.question6)
                .question7(this.question7)
                .question8(this.question8)
                .question9(this.question9)
                .question10(this.question10)
                .question11(this.question11)
                .question12(this.question12)
                .question13(this.question13)
                .build();
        return survey;
    }
}
