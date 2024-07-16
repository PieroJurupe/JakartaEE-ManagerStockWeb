<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
            pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Wilson E-commerce</title>
    <%@ include file="all_component/allCss.jsp"%>
    <style type="text/css">
        .back-img {
            background: url("img/banner.jpg");
            height: 50vh;
            width: 100%;
            background-repeat: no-repeat;
            background-size: cover;
        }
        .cdr-ho:hover {
            background: #FCF7F7;
        }
    </style>
</head>
<body style="background-color: #F9F9F9;">
<%@ include file="all_component/navbar.jsp"%>
<div class="container-fluid back-img">
    <h2 class="text-center text-danger">COMPRA BARATO CON E-WILSON</h2>
</div>

<!-- Componentes Novedosos -->

<div class="container">
    <h3 class="text-center">Componentes Novedosos</h3>
    <div class="row">
        <div class="col-md-3">
            <div class="card cdr-ho">
                <div class="card-body text-center">
                <img alt="" src="componentesNuevos/mouse1.jpg" style="width: 150px; height: 200px" class="img-thumblin">
                <p>Mouse</p>
                <p>Logitech 5900k</p>
                <p>Categoria:Nuevo</p>
                <div class="row">
                <a href="" class="btn btn-danger btn-sm ml-4">Carrito</a>
                    <a href="" class="btn btn-success btn-sm ml-1">Detalles</a>
                    <a href="" class="btn btn-danger btn-sm ml-1">150</a>
                </div>
            </div>
            </div>
        </div>
    </div>
<div class="text-center mt-1">
    <a href="" class="btn btn-danger btn-sm">Ver Todos</a>
</div>
</div>
<! -- FIN COMPONENTES NOVEDOSOS -->
<!-- Componentes Nuevos -->
</body>
</html>