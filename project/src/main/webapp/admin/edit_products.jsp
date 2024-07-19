<%@ page import="com.DAO.ProductDAOImpl" %>
<%@ page import="com.DB.DBconnect" %>
<%@ page import="com.entity.ProductDtls" %><%--
  Created by IntelliJ IDEA.
  User: Pixeup
  Date: 7/17/2024
  Time: 1:37 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%><%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%@ page isELIgnored="false"%>
<html>

<head>
    <meta charset="UTF-8">
    <title>Admin:Agregar productos</title>
    <%@include file="allCss.jsp"%>

</head>
<body style="background-color: #f0f2f2;">
<%@include file="navbar.jsp"%>
<div class="container">
    <div class="row">
        <div class="col-md-4 offset-md-4">
            <div class="card">
                <div class="card-body">
                    <h4 class="text-center">Editar Producto</h4>


                    <%
                            int id=Integer.parseInt(request.getParameter("id"));
                        ProductDAOImpl dao=new ProductDAOImpl(DBconnect.getConn());
                        ProductDtls b=dao.getProductById(id);
                    %>

                    <form action="../editProducts" method="post">
                        <input type="hidden" name="id" value="<%=b.getProductId()%>">
                        <div class="form-group">
                            <label for="exampleInputEmail1">Nombre de producto</label>
                            <input name="productName" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="<%=b.getProductname()%>">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Nombre de fabricante</label>
                            <input name="author" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="<%=b.getAuthor()%>">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Precio</label>
                            <input name="price" type="number" class="form-control" id="exampleInputPassword1" aria-describedby="emailHelp" value="<%=b.getPrice()%>">
                        </div>
                        <div class="form-group">
                            <label for="inputState">Estado producto</label>
                            <select id="inputState" name="status" class="form-control">
                                <%if("Active".equals(b.getStatus())){
                                %>
                                <option value="Nuevo">Nuevo</option>
                                <option value="Usado">Usado</option>
                                   <%
                                } else{
                                    %>
                                <option value="Nuevo">Nuevo</option>
                                <option value="Usado">Usado</option>
                                <%
                                  }
                                %>
                            </select>
                        </div>
                        <button type="submit" class="btn btn-primary">Agregar</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
