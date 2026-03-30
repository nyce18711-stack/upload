package com.mz.tag.unit;

import javax.servlet.http.HttpServletRequest;

public class UnitModel {

    public static void calc(HttpServletRequest request) {
            // 1. 값 받기
        double n = Double.parseDouble(request.getParameter("num"));
        String unit = request.getParameter("unit");
        String cc = "d";
        double result = n * 0.6213;
        String convertUnit = "mi/h";


        if(unit.equals("cm")){
            result = n * 0.3937;
            convertUnit = "inch";
            cc = "a";
        }else if(unit.equals("㎡")){
            result = n * 0.3025;
            convertUnit = "평";
            cc = "b";
        }else if(unit.equals("℃")){
            result = n * 1.8 + 32;
            convertUnit = "℉";
            cc = "c";
        }

        // 결과에서 뭘 쓸지? (객체)
        String result2 = String.format("%.1f", result);
        UnitVO unitVO = new UnitVO(n, unit, cc, result2, convertUnit);

        request.setAttribute("unit", unitVO);


    }
}
