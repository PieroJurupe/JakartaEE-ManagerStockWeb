package com.user.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
        try {
            String nombre = req.getParameter("fname");
            String phno = req.getParameter("phno");
            String email = req.getParameter("email");
            String password = req.getParameter("password");
            String check = req.getParameter("check");
            System.out.println(nombre+" "+ check +" "+phno+" "+password+" "+check);

        } catch (Exception e) {
            e.printStackTrace();
        }

    }
}
