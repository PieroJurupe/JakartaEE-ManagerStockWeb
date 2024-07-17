<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%@ page isELIgnored="false"%>
    <div class="container-fluid" style="height: 40px;background-color: #009688"></div>
    <div class="container-fluid p-3 bg-light">
    <div class="row">
    <div class="col-md-3 text success">
    <h3>E-WILSON<i class="fa-solid fa-laptop"></i></h3>
    </div>
    <div class="col-md-6 ml-auto text-right">
        <c:if test="${not empty userobj }">
            <a href="" class="btn btn-primary"><i class="fas fa-user"></i> ${userobj.name}</a>
            <a data-toggle="modal" data-target="#exampleModalCenter" class="btn btn-danger text-white"><i class="fas fa-sign-in-alt"></i> Salir</a>

        </c:if>
        <c:if test="${empty userobj }">
            <a href="../login.jsp" class="btn btn-success"><i class="fas fa-sign-in-alt"></i> Ingresar</a>
            <a href="../register.jsp" class="btn btn-primary text-white"><i class="fas fa-user-plus"></i> Registrarse</a>
            <a href="../ChangeLanguage?lang=en" class="btn btn-primary">English</a>
            <a href="../ChangeLanguage?lang=es" class="btn btn-primary">Español</a>
        </c:if>

    </div>
    </div>
    </div>

<!--  Logout -->

<!-- Modal -->
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

<!--  Logout -->
<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
    <a class="navbar-brand" href="#"><i class="fa-solid fa-house"></i></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="home.jsp">Inicio<span class="sr-only">(current)</span></a>
            </li></ul></div>
</nav>