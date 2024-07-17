package com.admin.servlet;

import com.DAO.ProductDAOImpl;
import com.DB.DBconnect;
import com.entity.ProductDtls;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/editProducts")
public class EditProductsServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
try {
    int id = Integer.parseInt(req.getParameter("id"));
    String productName = req.getParameter("productName");
    String author = req.getParameter("author");
    String price = (req.getParameter("price"));
    String status = req.getParameter("status");
    String productCategory = req.getParameter("productCategory");
    String photoName = req.getParameter("photoName");
    String email = req.getParameter("email");

    ProductDtls b = new ProductDtls(productName, author, price, productCategory, status, photoName, email);    b.setProductId(id);
    b.setProductname(productName);
    b.setAuthor(author);
    b.setPrice(price);
    b.setStatus(status);

    ProductDAOImpl dao=new ProductDAOImpl(DBconnect.getConn());
    boolean f=dao.updateEditProducts(b);

    HttpSession session=req.getSession();

    if (f) {
        session.setAttribute("succMsg", "Producto actualizado exitosamente");
        resp.sendRedirect("admin/all_products.jsp");
    } else {
        session.setAttribute("failedMsg", "Algo salió mal");
        resp.sendRedirect("admin/all_products.jsp");
    }

}catch (Exception e){
    e.printStackTrace();
}
    }
}
