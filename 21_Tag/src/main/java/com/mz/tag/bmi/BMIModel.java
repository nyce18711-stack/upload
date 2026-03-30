package com.mz.tag.bmi;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

public class BMIModel {

    public static void calcBMI(HttpServletRequest request) throws IOException {
        // 1. 로컬경로
// 		String path = "C:\\Users\\soldesk/Desktop/asdasd";
        // 서버상 경로
        String path = request.getServletContext().getRealPath("uploadFile");
        System.out.println(path);


        // 파일 업로드 기능.		// cos.jar
        // 2. mr 객체 생성

        MultipartRequest mr = new MultipartRequest(request, path,
                1024 * 1024 * 20,  // 20mb 최대 허용 용량
                "utf-8", // req.setCharacter("utf-8") 그거
                new DefaultFileRenamePolicy()
        );


        // 3. 값 받기

        String n = mr.getParameter("name");
        double height = Double.parseDouble(mr.getParameter("height"));
        double weight = Double.parseDouble(mr.getParameter("weight"));

        String imgF = mr.getFilesystemName("imgFile"); // 서버상 올라간 파일명

        if (height > 10) {
            // cm로 입력했을것.
            height /= 100;
        }

        double bmi = weight / (height * height); // m용 계산
        String bmi2 = String.format("%.1f", bmi);
        System.out.println(bmi);
        // @ cm, m 다 되게

        String status = "3단계 비만";
        if (bmi < 18.5) {
            status = "저체중";
        } else if (bmi <= 22.9) {
            status = "정상";
        } else if (bmi <= 24.9) {
            status = "비만전단계";
        } else if (bmi <= 29.9) {
            status = "1단계 비만";
        } else if (bmi <= 34.9) {
            status = "2단계 비만";
        }

        BmiVO  bmiVO = new BmiVO(n,weight,height,bmi2,status,imgF);
        System.out.println(bmiVO);
        request.setAttribute("bmiVO", bmiVO);

    }
}
