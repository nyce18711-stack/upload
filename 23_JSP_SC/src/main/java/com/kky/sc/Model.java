package com.kky.sc;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Model {
    public static void make(HttpServletRequest request, HttpServletResponse response) {
        String bbb = "zzz";
        request.setAttribute("b", bbb);

        request.getParameter("a");

        //param, attr
        //특성 third에서 사용불가.



          /*
            parameter : V에서 만든 값 (html, jsp, get요청 만든 문자열, form - input name)
                        String, String[] - checkbox
                        request에 실려서 전송.

                        -값 읽을때
                        java : request.getparameter("이름");
                        EL   : ${param.이름}


            attribute : Model에서 java에서 만든 값.
                        Object형 - 다 된다.
                        request에 실려서 전송됨.

                        -값 읽을때
                        java : request.getAttribute("이름");
                        EL   : ${이름}

         */


        //session, cookie


        String ccc = "세션~~~";
        HttpSession hs = request.getSession();
        hs.setAttribute("c", ccc);
        hs.setMaxInactiveInterval(10);  //10초


        // 서버와 클라이언트 연결상태 (접속한거)
        // 연결만 살아있으면 이 사이트 어디에서나 사용 가능

        // 연결 끊어지면 못봄 (접속 종료/ 브라우저 닫음)
        // 세션 유지시간 (기본 30분)

        //유지시간 이내에 '요청'들이 일어나지 않으면 죽음
        //시간내에 '요청'등 작업을 하면 갱신됨 (유지시간 초기화).

        // cookie

        // 사용자 컴퓨터에 파일로 저장.
        // 브라우저를 꺼도, 접속을 끊어도, 재부팅을 해도 살아있음.

        // 시간제한 할 수 있음.

        String ddd = "쿠키~~~";
        Cookie coo = new Cookie("d", ddd);

        coo.setMaxAge(5 * 60); //5분

        response.addCookie(coo);


    }


    public static void printsc(HttpServletRequest request) {
           /*
                session.attr - java(M,C) - 서버~~~클라이언트 연결상태에 담김.
                    //Object / 시간제한 (기본 30분)

                - 값 읽을때
                    JAVA  - request.getSession().getAttribute("이름);
                    EL    - ${sessionScope.이름} / ${이름}

            */
        Object session = request.getSession().getAttribute("c");
        System.out.println(session);

        /*
            cookie  -  java에서 만든값

            -값 읽을때
                EL : ${cookie.쿠키이름.value}
                java :
         */

         Cookie[] cookies = request.getCookies();

         for (Cookie cookie : cookies) {
             System.out.println(cookie.getName());
             if (cookie.getName().equals("d")) {
                 System.out.println(cookie.getValue());
             }
         }
    }
}

