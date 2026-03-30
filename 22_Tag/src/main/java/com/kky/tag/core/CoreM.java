package com.kky.tag.core;

import javax.servlet.http.HttpServletRequest;
import java.time.LocalDate;
import java.util.ArrayList;

public class CoreM {
    public static void work(HttpServletRequest request) {
        //1. 값 받기
        int year = Integer.parseInt(request.getParameter("y"));
        System.out.println(year);

        int ourYear = LocalDate.now().getYear();
        int age = ourYear - year + 1;

        request.setAttribute("age", age);

        int[] ar = {1, 2, 3, 4, 5};
        request.setAttribute("ar", ar);

        ArrayList<Menu> menus = new ArrayList<>();
        menus.add(new Menu("짜장면", 7000));
        menus.add(new Menu("볶음밥", 7500));
        menus.add(new Menu("짬뽕", 8500));
        menus.add(new Menu("군만두", 3500));
        menus.add(new Menu("탕수육", 15000));

        request.setAttribute("menus", menus);
    }
}
