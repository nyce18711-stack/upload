package com.kky.web;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Human {

    //결과에서 뭘 쓸지? db
    private String name;
    private int age;


}
