package com.kky.tag.format;

import lombok.Data;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.Date;

public class FormatM {
    public static void dataMaker(HttpServletRequest request) {

        int a = 123456789;
        double b = 0.4566;
        double c = 123123.456456;
        Date date = new Date();

        request.setAttribute("a", a);
        request.setAttribute("b", b);
        request.setAttribute("c", c);
        request.setAttribute("d", date);

        ArrayList<Snack> snacks = new ArrayList<>();
        snacks.add(new Snack("감자깡", 1000, new Date()));
        snacks.add(new Snack("꽃게랑", 2000, new Date()));
        snacks.add(new Snack("고래밥", 3000, new Date()));
        request.setAttribute("snacks", snacks);

    }
}
