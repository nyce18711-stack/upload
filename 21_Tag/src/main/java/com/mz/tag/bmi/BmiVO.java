package com.mz.tag.bmi;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class BmiVO {
    private String name;
    private double weight;
    private double height;
    private String bmi;
    private String status;
    private String fName;


}
