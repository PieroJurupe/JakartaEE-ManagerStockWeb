package com.admin.servlet;
import java.io.IOException;
import java.io.File;

import com.DAO.ProductDAOImpl;
import com.DB.DBconnect;
import com.entity.ProductDtls;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/add_products")
@MultipartConfig
public class ProductAdd extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try{
            String productName = request.getParameter("pname");
            String author = request.getParameter("author");
            String price = (request.getParameter("price"));
            String categories = request.getParameter("categories");
            String status = request.getParameter("status");
            Part part=request.getPart("pimg");
            String fileName = part.getSubmittedFileName();

            ProductDtls b=new ProductDtls(productName,author,price,categories,status,fileName,"admin");
            ProductDAOImpl dao=new ProductDAOImpl(DBconnect.getConn());



            boolean f = dao.addProduct(b);
            HttpSession session=request.getSession();
            if(f) {

            String path=getServletContext().getRealPath("")+"img";

            File file = new File(path);

            part.write(path + File.separator + fileName);

                session.setAttribute("succMsg", "Producto Añadido exitosamente");
                response.sendRedirect("admin/add_product.jsp");

            }else {    session.setAttribute("failedMsg", "Algo salió mal");
                response.sendRedirect("admin/add_product.jsp");
            }


        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
