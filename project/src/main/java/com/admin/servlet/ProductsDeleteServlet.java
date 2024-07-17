package com.admin.servlet;

import com.DAO.ProductDAOImpl;
import com.DB.DBconnect;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/delete")
public class ProductsDeleteServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            int id = Integer.parseInt(req.getParameter("id"));

            ProductDAOImpl dao = new ProductDAOImpl((DBconnect.getConn()));
            boolean f = dao.deleteProduct(id);
            HttpSession session = req.getSession();

            if (f) {
                session.setAttribute("succMsg", "Producto eliminado exitosamente");
                resp.sendRedirect("admin/all_products.jsp");
            } else {
                session.setAttribute("failedMsg", "Algo salió mal");
                resp.sendRedirect("admin/all_products.jsp");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
