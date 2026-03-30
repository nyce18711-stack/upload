package com.kky.el;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Student {
    //결과에서 뭐 쓸지
    private String name;
    private double mid;
    private double last;
    private double avg;
    private String grade;
}
