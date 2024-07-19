<%--
  Created by IntelliJ IDEA.
  User: Pixeup
  Date: 7/16/2024
  Time: 7:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%@ page isELIgnored="false"%>
<html>

<head>
    <meta charset="UTF-8">
          <title>Admin:Agregar productos</title>
    <%@include file="allCss.jsp"%>

</head>
<body style="background-color: #f0f2f2;">
<%@include file="navbar.jsp"%>
<c:if test="${empty userobj }">
    <c:redirect url="../login.jsp"/>
</c:if>
<div class="container">
<div class="row">
    <div class="col-md-4 offset-md-4">
        <div class="card">
        <div class="card-body">
            <h4 class="text-center">Agregar producto</h4>
            <c:if test="${not empty succMsg }">
                <p class="text-center text-success">${succMsg }</p>
                <c:remove var="succMsg" scope="session" />
            </c:if>
            <c:if test="${not empty failedMsg }">
                <p class="text-center text-danger">${failedMsg }</p>
                <c:remove var="failedMsg" scope="session" />
            </c:if>


            <form action="../add_products" method="post" enctype="multipart/form-data">
                <div class="form-group">
                    <label for="exampleInputEmail1">Nombre de producto</label>
                    <input name="pname" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">Nombre de fabricante</label>
                    <input name="author" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">Precio</label>
                    <input name="price" type="number" class="form-control" id="exampleInputPassword1" aria-describedby="emailHelp">
                </div>
                <div class="form-group">
                    <label for="inputState">Categorias</label>
                    <select id="inputState" name="categories" class="form-control">
                       <option selected>--Seleccionar--</option>
                        <option value="Teclado">Teclado</option>
                        <option value="Mouse">Mouse</option>
                        <option value="Monitor">Monitor</option>
                        <option value="CPU">CPU</option>
                        <option value="Laptop">Laptop</option>
                        <option value="Impresora">Impresora</option>
                        <option value="Telefono">Telefono</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="inputState">Estado producto</label>
                    <select id="inputState" name="status" class="form-control">
                        <option selected>--Seleccionar--</option>
                        <option value="Nuevo">Nuevo</option>
                        <option value="Usado">Usado</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlFile1">Subir foto</label>
                    <input name="pimg" type="file" class="form-control-file" id="exampleFormControlFile1">
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
