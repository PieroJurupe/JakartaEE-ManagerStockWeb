<%@ page import="com.DAO.ProductDAOImpl" %>
<%@ page import="com.DB.DBconnect" %>
<%@ page import="com.entity.ProductDtls" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Pixeup
  Date: 7/16/2024
  Time: 7:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%@ page isELIgnored="false"%>
<html>
<head>
    <title>Admin: Productos</title>
    <%@include file="allCss.jsp"%>

</head>
<body>
<%@include file="navbar.jsp"%>
<h3 class="text-center">Hello Admin</h3>

<c:if test="${not empty succMsg }">
    <h5 class="text-center text-success">${succMsg }</h5>
    <c:remove var="succMsg" scope="session" />
</c:if>
<c:if test="${not empty failedMsg }">
    <p class="text-center text-danger">${failedMsg }</p>
    <c:remove var="failedMsg" scope="session" />
</c:if>

<table class="table table-striped">
    <thead class="bg-primary text-white">
    <tr>
        <th scope="col">ID</th>}
        <th scope="col">Imagen</th>
        <th scope="col">Producto</th>
        <th scope="col">Fabricante</th>
        <th scope="col">Precio</th>
        <th scope="col">Categoria</th>
        <th scope="col">Estado</th>
        <th scope="col">Accion</th>
    </tr>
    </thead>
    <tbody>

    <%
        ProductDAOImpl dao=new ProductDAOImpl(DBconnect.getConn());
        List <ProductDtls> list=dao.getAllProduct();
        for (ProductDtls b : list) {
    %>
    <tr>
        <th><%=b.getProductId()%></th>
        <td><img src="../img/<%=b.getPhotoName()%>" style="width: 50px; height: 50px;"></td>
        <td><%=b.getProductname()%></td>
        <td><%=b.getAuthor()%>></td>
        <td><%=b.getPrice()%>></td>
        <td><%=b.getProductCategory()%>></td>
        <td><%=b.getStatus()%></td>
        <td><a href="edit_products.jsp?id=<%=b.getProductId()%>" class="btn btn-sm btn-primary">Editar</a>
            <a href="../delete?id=<%=b.getProductId()%>" class="btn btn-sm btn-danger">Eliminar</a>
        </td>
    </tr>
    <%
        }
        %>



    <tr>
        <th scope="row">2</th>
        <td>Jacob</td>
        <td>Thornton</td>
        <td>@fat</td>
        <td>Otto</td>
        <td>@mdo</td>
        <td>
            <a href="#" class="btn btn-sm btn-primary">Editar</a>
            <a href="#" class="btn btn-sm btn-danger">Eliminar</a>
        </td>
    </tr>
    <tr>
        <th scope="row">3</th>
        <td>Larry</td>
        <td>the Bird</td>
        <td>@twitter</td>
        <td>Otto</td>
        <td>@mdo</td>
        <td>
            <a href="#" class="btn btn-sm btn-primary">Editar</a>
            <a href="#" class="btn btn-sm btn-danger">Eliminar</a>
        </td>
    </tr>
    </tbody>
</table>
<div style="margin-top: 130px">
    <%@include file="footer.jsp"%></div>
</body>
</html>
