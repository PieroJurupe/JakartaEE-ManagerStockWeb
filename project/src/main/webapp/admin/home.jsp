<%--
  Created by IntelliJ IDEA.
  User: Pixeup
  Date: 7/16/2024
  Time: 3:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%@ page isELIgnored="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%><html>
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
<c:if test="${empty userobj }">
    <c:redirect url="../login.jsp"/>
</c:if>


<div class="container">
    <div class="row p-5">
        <div class="col-md-4">
            <a href="add_product.jsp">
            <div class="card">
            <div class="card-body text-center">
                <i class="fa-solid fa-plus fa-3x text-warning"></i>
                <h4>Agregar</h4>
                ------------
            </div>
        </div>
            </a>
        </div>

        <div class="col-md-4">
            <a href="all_products.jsp">
            <div class="card">
                <div class="card-body text-center">
                    <i class="fa-solid fa-laptop-file fa-3x text-primary"></i>
                    <h4>Ver productos</h4>
                    ------------
                </div>
            </div>
            </a>
        </div>

        <div class="col-md-4">
            <a data-toggle="modal" data-target="#exampleModalCenter">
                <div class="card">
                    <div class="card-body text-center">
                        <i class="fa-solid fa-right-from-bracket fa-3x text-danger"></i>
                        <h4>Salir</h4>
                        ------------
                    </div>
                </div>

            </a>
        </div>

    </div>
</div>

<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLongTitle"></h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="text-center">
                    <h4>Realmente desea salir?</h4>
                    <button type="button" class="btn btn-primary" data-dismiss="modal">Permanecer</button>
                    <a href="../logout" type="button" class="btn btn-danger">Salir</a>
                </div>
            </div>
            <div class="modal-footer">

            </div>
        </div>
    </div>
</div>

<div style="margin-top: 130px">
<%@include file="footer.jsp"%></div>


</body>
</html>
