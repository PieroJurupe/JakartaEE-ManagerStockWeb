<%--
  Created by IntelliJ IDEA.
  User: Pixeup
  Date: 7/16/2024
  Time: 7:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%><html>
<head>
    <title>Admin: Ordenes</title>
    <%@include file="allCss.jsp"%>

</head>
<body>
<%@include file="navbar.jsp"%>
<h3 class="text-center">Hello Admin</h3>

<table class="table table-striped">
    <thead class="bg-primary text-white">
    <tr>
        <th scope="col">Id</th>
        <th scope="col">Nombre</th>
        <th scope="col">Email</th>
        <th scope="col">Direccion</th>
        <th scope="col">Telefono</th>
        <th scope="col">Producto</th>
        <th scope="col">Fabricante</th>
        <th scope="col">Precio</th>
        <th scope="col">Pago</th>

    </tr>
    </thead>
    <tbody>
    <tr>
        <th scope="row">1</th>
        <td>Mark</td>
        <td>Otto</td>
        <td>@mdo</td>
        <td>Otto</td>
        <td>@mdo</td>
        <td>@mdo</td>
        <td>Otto</td>
        <td>Otto</td>

    </tr>
    <tr>
        <th scope="row">2</th>
        <td>Jacob</td>
        <td>Thornton</td>
        <td>@fat</td>
        <td>Otto</td>
        <td>@mdo</td>
        <td>@mdo</td>
        <td>Otto</td>
        <td>Otto</td>

    </tr>
    <tr>
        <th scope="row">3</th>
        <td>Larry</td>
        <td>the Bird</td>
        <td>@twitter</td>
        <td>Otto</td>
        <td>@mdo</td>
        <td>@mdo</td>
        <td>Otto</td>
        <td>Otto</td>



    </tr>
    </tbody>
</table>
<div style="margin-top: 130px">
    <%@include file="footer.jsp"%></div>
</body>
</html>
