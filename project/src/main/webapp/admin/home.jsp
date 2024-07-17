<%--
  Created by IntelliJ IDEA.
  User: Pixeup
  Date: 7/16/2024
  Time: 3:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%@ page isELIgnored="false"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Admin:Home</title>
    <%@include file="allCss.jsp"%>
    <style type="text/css">
        a{
            text-decoration: none;
            color: black;
        }
        a:hover{
            text-decoration: none;
            color: black;
        }
    </style>
</head>
<body>
<%@include file="navbar.jsp"%>
<div class="container">
    <div class="row p-5">
        <div class="col-md-3">
            <a href="add_product.jsp">
            <div class="card">
            <div class="card-body text-center">
                <i class="fa-solid fa-plus fa-3x text-primary"></i>
                <h4>Agregar</h4>
                ------------
            </div>
        </div>
            </a>
        </div>

        <div class="col-md-3">
            <a href="all_products.jsp">
            <div class="card">
                <div class="card-body text-center">
                    <i class="fa-solid fa-laptop-file fa-3x text-danger"></i>
                    <h4>Ver productos</h4>
                    ------------
                </div>
            </div>
            </a>
        </div>

        <div class="col-md-3">
            <a href="all_order.jsp">
            <div class="card">
                <div class="card-body text-center">
                    <i class="fa-solid fa-box-open fa-3x text-warning"></i>
                    <h4>Ordenes</h4>
                    ------------
                </div>
            </div>
            </a>
        </div>

        <div class="col-md-3">
            <a>
            <div class="card">
                <div class="card-body text-center">
                    <i class="fa-solid fa-right-from-bracket fa-3x text-primary"></i>
                    <h4>Salir</h4>
                    ------------
                </div>
            </div>
            </a>
        </div>

    </div>
</div>
<div style="margin-top: 130px">
<%@include file="footer.jsp"%></div>

</body>
</html>
