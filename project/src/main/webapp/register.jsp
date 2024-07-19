<%@ page language="java" contentType="text/html; charset=UTF-8"
            pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>EWilson Registro</title>

    <%@include file="all_component/allCss.jsp"%>
    </head>
    <body style="background-color: #f0f1f2;">
    <%@include file="all_component/navbar.jsp"%>
    <div class="container p-2">
    <div class="row">
    <div class="col-md-4 offset-md-4">
    <div class="card">
    <div class="card-body">
    <h4 class="text-center">Pagina de Registro</h4>
        <c:if test="${not empty succMsg}">
            <p class="text-center text-success">${succMsg}</p>
            <% session.removeAttribute("succMsg"); %>
        </c:if>
        <c:if test="${not empty failedMsg}">
        <p class="text-center text-danger">${failedMsg}</p>
            <% session.removeAttribute("failedMsg"); %>
        </c:if>
<form action="register" method="post">
  <div class="form-group">
    <label for="exampleInputEmail1">Nombre Completo</label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required="required" name="fname">

  <div class="form-group">
    <label for="exampleInputEmail1">Email</label>
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required="required" name="email">

  <div class="form-group">
    <label for="exampleInputEmail1">Numero de celular</label>
    <input type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required="required" name="phno"></div>

  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1" required="required" name="password"></div>
  </div>
  <div class="form-check">
    <input type="checkbox" class="form-check-input" name="check" id="exampleCheck1">
    <label class="form-check-label" for="exampleCheck1">Terminos y condiciones</label>
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
</form>

    </div>
    </div>
    </div>
    </div>
    </div>

    <%@include file="all_component/footer.jsp"%>

    </body>
    </html>