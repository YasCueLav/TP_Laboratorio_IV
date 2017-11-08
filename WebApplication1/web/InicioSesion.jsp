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
        <h1>Inicio Sesion</h1>
        
        <form>
            <label>Usuario </label><input type="text" name="usuario"/>
            <br/>
            <label>Contraseña </label><input type="text" name="pas"/>
            <br/>
            <input type="subit" value="Iniciar" class="btn btn-primary"/>
        </form>
    </body>
</html>
