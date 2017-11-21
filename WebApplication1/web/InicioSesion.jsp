<%-- 
    Document   : InicioSesion
    Created on : 08/11/2017, 08:40:35
    Author     : Yasmin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicio Sesion</title>
        <jsp:include page="links.jsp"></jsp:include>
        </head>
        <body>
        <jsp:include page="menu.jsp"></jsp:include>

        <h1>Inicio Sesion</h1>

        <form action="Login" method="POST">
            <label>Mail </label><input type="text" name="mail"/>
            <br/>
            <label>Contraseña </label><input type="text" name="pass"/>
            <br/>
            <input type="submit" value="Iniciar" class="btn btn-primary"/>
        </form>
    </body>
</html>
