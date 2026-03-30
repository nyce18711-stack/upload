package com.kky.web;

import javax.servlet.http.HttpServletRequest;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class UserDAO {
    public static void showAllPeople(HttpServletRequest request) {
        //1. 값 or db  3종세트 con, pstmt, rs

        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        String sql = "select * from name_age_test";
        try {

            con = DBManager.connect();
            System.out.println("연결성공!");
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();

            ArrayList<Human> humans = new ArrayList<>();
            Human human = null;
            while (rs.next()) {
                human = new Human(rs.getString("n_name"), rs.getInt("n_age"));
                humans.add(human);
            }
            System.out.println(humans);
            request.setAttribute("humans", humans);


        } catch (Exception e) {
            e.printStackTrace();

        } finally {
            DBManager.close(rs, ps, con);
        }


    }

    public static void addPeople(HttpServletRequest request) {
        // 값받기 db 세팅

        Connection con = null;
        PreparedStatement ps = null;
        try {

        String name = request.getParameter("n");
        String age = request.getParameter("a");

        con = DBManager.connect();
        System.out.println("connect!");

        ps = con.prepareStatement("insert into name_age_test values (?,?)");
        ps.setString(1,name);
        ps.setString(2,age);

        if (ps.executeUpdate() == 1 ) {
            System.out.println("insert success!");
        }




        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBManager.close(null, ps, con);
        }

    }
}
