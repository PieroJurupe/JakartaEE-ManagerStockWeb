<%@ page import="com.DB.DBconnect" %>
<%@ page import="java.sql.Connection" %>
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


<% /*Connection conn=DBconnect.getConn();
out.println(conn); */%>

<!-- Componentes Novedosos -->

<hr>

<div class="container">
    <h3 class="text-center">Componentes Novedosos</h3>
    <div class="row">
        <div class="col-md-3">
            <div class="card cdr-ho">
                <div class="card-body text-center">
                <img alt="" src="componentesNovedosos/mouse1.jpg" style="width: 150px; height: 200px" class="img-thumblin">
                <p>Mouse</p>
                <p>Logitech 5900k</p>
                <p>Categoria: Nuevo</p>
                <div class="row">
                <a href="" class="btn btn-danger btn-sm ml-4"><i class="fa-solid fa-cart-shopping"></i> Carrito</a>
                    <a href="" class="btn btn-success btn-sm ml-1">Detalles</a>
                    <a href="" class="btn btn-danger btn-sm ml-1">S/150</a>
                </div>
            </div>
            </div>
        </div>
                <div class="col-md-3">
                    <div class="card cdr-ho">
                        <div class="card-body text-center">
                        <img alt="" src="componentesNovedosos/mouse3.jpg" style="width: 150px; height: 200px" class="img-thumblin">
                        <p>Mouse</p>
                        <p>Logitech G203</p>
                        <p>Categoria: Nuevo</p>
                        <div class="row">
                        <a href="" class="btn btn-danger btn-sm ml-4"><i class="fa-solid fa-cart-shopping"></i> Carrito</a>
                            <a href="" class="btn btn-success btn-sm ml-1">Detalles</a>
                            <a href="" class="btn btn-danger btn-sm ml-1">S/80</a>
                        </div>
                    </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card cdr-ho">
                        <div class="card-body text-center">
                        <img alt="" src="componentesNovedosos/mouse4.jpg" style="width: 150px; height: 200px" class="img-thumblin">
                        <p>Mouse</p>
                        <p>Redragon M612 Predator</p>
                        <p>Categoria: Nuevo</p>
                        <div class="row">
                        <a href="" class="btn btn-danger btn-sm ml-4"><i class="fa-solid fa-cart-shopping"></i> Carrito</a>
                            <a href="" class="btn btn-success btn-sm ml-1">Detalles</a>
                            <a href="" class="btn btn-danger btn-sm ml-1">S/85</a>
                        </div>
                    </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card cdr-ho">
                        <div class="card-body text-center">
                        <img alt="" src="componentesNovedosos/mouse5.jpg" style="width: 150px; height: 200px" class="img-thumblin">
                        <p>Mouse</p>
                        <p>Redragon Mouse M908</p>
                        <p>Categoria: Nuevo</p>
                        <div class="row">
                        <a href="" class="btn btn-danger btn-sm ml-4"><i class="fa-solid fa-cart-shopping"></i> Carrito</a>
                            <a href="" class="btn btn-success btn-sm ml-1">Detalles</a>
                            <a href="" class="btn btn-danger btn-sm ml-1">S/180</a>
                        </div>
                    </div>
                    </div>
                </div>
    </div>
<div class="text-center mt-3">
    <a href="" class="btn btn-danger btn-sm">Ver Todos</a>
</div>

</div>



<! -- FIN COMPONENTES NOVEDOSOS -->

<hr>

<!-- Componentes Nuevos -->

<div class="container">
    <h3 class="text-center">Componentes Nuevos</h3>
    <div class="row">
        <div class="col-md-3">
            <div class="card cdr-ho">
                <div class="card-body text-center">
                <img alt="" src="componentesNuevos/producto1.jpg" style="width: 150px; height: 200px" class="img-thumblin">
                <p>VR</p>
                <p>Meta Quest 3</p>
                <p>Categoria: Nuevo</p>
                <div class="row">
                <a href="" class="btn btn-danger btn-sm ml-4"><i class="fa-solid fa-cart-shopping"></i> Carrito</a>
                    <a href="" class="btn btn-success btn-sm ml-1">Detalles</a>
                    <a href="" class="btn btn-danger btn-sm ml-1">S/250</a>
                </div>
            </div>
            </div>
        </div>

            <div class="col-md-3">
                    <div class="card cdr-ho">
                        <div class="card-body text-center">
                        <img alt="" src="componentesNuevos/producto2.jpg" style="width: 150px; height: 200px" class="img-thumblin">
                        <p>Celular</p>
                        <p>iPhone 15 Pro Max, 512GB Blue Titanium</p>
                        <p>Categoria: Nuevo</p>
                        <div class="row">
                        <a href="" class="btn btn-danger btn-sm ml-4"><i class="fa-solid fa-cart-shopping"></i> Carrito</a>
                            <a href="" class="btn btn-success btn-sm ml-1">Detalles</a>
                            <a href="" class="btn btn-danger btn-sm ml-1">S/5,999</a>
                        </div>
                    </div>
                    </div>
                </div>

            <div class="col-md-3">
                    <div class="card cdr-ho">
                        <div class="card-body text-center">
                        <img alt="" src="componentesNuevos/producto3.jpg" style="width: 150px; height: 200px" class="img-thumblin">
                        <p>Laptop</p>
                        <p>MSI Vector GP77</p>
                        <p>Categoria: Nuevo</p>
                        <div class="row">
                        <a href="" class="btn btn-danger btn-sm ml-4"><i class="fa-solid fa-cart-shopping"></i> Carrito</a>
                            <a href="" class="btn btn-success btn-sm ml-1">Detalles</a>
                            <a href="" class="btn btn-danger btn-sm ml-1">S/5,700</a>
                        </div>
                    </div>
                    </div>
                </div>

            <div class="col-md-3">
                    <div class="card cdr-ho">
                        <div class="card-body text-center">
                        <img alt="" src="componentesNuevos/producto4.jpg" style="width: 150px; height: 200px" class="img-thumblin">
                        <p>Audifonos</p>
                        <p>Logitech G Pro X Wireless USB </p>
                        <p>Categoria: Nuevo</p>
                        <div class="row">
                        <a href="" class="btn btn-danger btn-sm ml-4"><i class="fa-solid fa-cart-shopping"></i> Carrito</a>
                            <a href="" class="btn btn-success btn-sm ml-1">Detalles</a>
                            <a href="" class="btn btn-danger btn-sm ml-1">S/899</a>
                        </div>
                    </div>
                    </div>
                </div>

    </div>
<div class="text-center mt-3">
    <a href="" class="btn btn-danger btn-sm">Ver Todos</a>
</div>

</div>


<! -- FIN COMPONENTES Nuevos -->

<hr>

<! -- COMPONENTES Viejos -->

<div class="container">
    <h3 class="text-center">Componentes Viejos</h3>
    <div class="row">
        <div class="col-md-3">
            <div class="card cdr-ho">
                <div class="card-body text-center">
                <img alt="" src="componentesViejos/viejo1.png" style="width: 150px; height: 200px" class="img-thumblin">
                <p>Mouse</p>
                <p>Geforce GTX 1050</p>
                <p>Categoria: Viejo</p>
                <div class="row">
                <a href="" class="btn btn-danger btn-sm ml-4"><i class="fa-solid fa-cart-shopping"></i> Carrito</a>
                    <a href="" class="btn btn-success btn-sm ml-1">Detalles</a>
                    <a href="" class="btn btn-danger btn-sm ml-1">S/150</a>
                </div>
            </div>
            </div>
        </div>

                    <div class="col-md-3">
                            <div class="card cdr-ho">
                                <div class="card-body text-center">
                                <img alt="" src="componentesViejos/viejo2.jpg" style="width: 150px; height: 200px" class="img-thumblin">
                                <p>Audifonos</p>
                                <p>Blue Yeti USB</p>
                                <p>Categoria: Viejo</p>
                                <div class="row">
                                <a href="" class="btn btn-danger btn-sm ml-4"><i class="fa-solid fa-cart-shopping"></i> Carrito</a>
                                    <a href="" class="btn btn-success btn-sm ml-1">Detalles</a>
                                    <a href="" class="btn btn-danger btn-sm ml-1">S/399</a>
                                </div>
                            </div>
                            </div>
                        </div>

                    <div class="col-md-3">
                            <div class="card cdr-ho">
                                <div class="card-body text-center">
                                <img alt="" src="componentesViejos/viejo3.jpg" style="width: 150px; height: 200px" class="img-thumblin">
                                <p>Audifonos</p>
                                <p>Toshiba Satellite LT50</p>
                                <p>Categoria: Nuevo</p>
                                <div class="row">
                                <a href="" class="btn btn-danger btn-sm ml-4"><i class="fa-solid fa-cart-shopping"></i> Carrito</a>
                                    <a href="" class="btn btn-success btn-sm ml-1">Detalles</a>
                                    <a href="" class="btn btn-danger btn-sm ml-1">S/799</a>
                                </div>
                            </div>
                            </div>
                        </div>

                     <div class="col-md-3">
                             <div class="card cdr-ho">
                                 <div class="card-body text-center">
                                 <img alt="" src="componentesViejos/viejo4.jpg" style="width: 150px; height: 200px" class="img-thumblin">
                                 <p>Audifonos</p>
                                 <p>Alcatel 1 4G Aqua 1-32GB</p>
                                 <p>Categoria: Viejo</p>
                                 <div class="row">
                                 <a href="" class="btn btn-danger btn-sm ml-4"><i class="fa-solid fa-cart-shopping"></i> Carrito</a>
                                     <a href="" class="btn btn-success btn-sm ml-1">Detalles</a>
                                     <a href="" class="btn btn-danger btn-sm ml-1">S/239</a>
                                 </div>
                             </div>
                             </div>
                         </div>

    </div>
<div class="text-center mt-3">
    <a href="" class="btn btn-danger btn-sm">Ver Todos</a>
</div>

</div>

<! -- FIN COMPONENTES Viejos -->

<hr>

<%@include file="all_component/footer.jsp"%>

</body>
</html>