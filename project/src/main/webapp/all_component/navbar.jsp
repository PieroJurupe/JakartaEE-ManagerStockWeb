<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page session="true" %>
<fmt:setLocale value="${sessionScope.lang}" scope="session"/>
<fmt:setBundle basename="utils.message" scope="session"/>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
    <div class="container-fluid" style="height: 40px;background-color: #009688"></div>
    <div class="container-fluid p-3 bg-light">
    <div class="row">
    <div class="col-md-3 text success">
    <h3>E-WILSO<i class="fa-solid fa-laptop"></i></h3>
    </div>
    <div class="col-md-6">
        <form class="form-inline my-2 my-lg-0">
        </form>
    </div>
    <div class="col-md-3">
        <a href="login.jsp" class="btn btn-success"><i class="fa-solid fa-right-to-bracket"></i> Ingresar</a>
        <a href="register.jsp" class="btn btn-primary text-white"><i class="fa-solid fa-user-plus"></i> Registrarse</a>

    </div>
    </div>
    </div>
<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
    <a class="navbar-brand" href="#"><i class="fa-solid fa-house"></i></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="index.jsp">Inicio<span class="sr-only">(current)</span></a>
            </li>
        </ul>
    </div>
</nav>