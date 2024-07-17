package com.user.servlet;
import java.io.IOException;

import com.DAO.UserDAO;
import com.DAO.UserDAOImpl;
import com.DB.DBconnect;
import com.entity.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            String name = req.getParameter("fname");
            String email = req.getParameter("email");
            String phno = req.getParameter("phno");
            String password = req.getParameter("password");
            String check = req.getParameter("check");
           //System.out.println(name+" "+email+" "+phno+" "+password+" "+check);

            User us=new User();
            us.setName(name);
            us.setEmail(email);
            us.setPhno(phno);
            us.setPassword(password);

            HttpSession session=req.getSession();

            if (check!=null){
                UserDAOImpl dao=new UserDAOImpl(DBconnect.getConn());
                boolean f=dao.userRegister(us);

                if (f){
                    //System.out.println("Se registro al usuario");
                    session.setAttribute(("succMsg"),"Registro exitoso");
                    resp.sendRedirect("register.jsp");
                }
                else {
                    //System.out.println("No se registro al usuario");
                    session.setAttribute(("failedMsg"),"Error al registrar...");
                    resp.sendRedirect("register.jsp");
                }
                }
            else {
                    //System.out.println("Por favor acepta terminos y condiciones");
                session.setAttribute(("failedMsg"),"Por favor aceptar terminos y condiciones");
                resp.sendRedirect("register.jsp");

                }

        } catch (Exception e) {
            e.printStackTrace();
        }

    }
}
