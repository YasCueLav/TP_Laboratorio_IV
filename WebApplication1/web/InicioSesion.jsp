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
        <link rel="shortcut icon" href="favicon.ico" />
        <jsp:include page="links.jsp"></jsp:include>
        </head>
        <body>
        <jsp:include page="menu.jsp"></jsp:include>
        <div id="iniciosecion">
            <h1 id="iniciosecionTitle">Inicio Sesion</h1>

            <form action="Login" method="POST">
              <div class="form-group">
                <label for="exampleInputEmail1" id="letraNegraUsuario">Usuario</label>
                <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Usuario" name="mail">
              </div>
              <div class="form-group">
                <label for="exampleInputPassword1" id="letraNegraUsuario">Contraseña</label>
                <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Contraseña" name="pass">
              </div>
              <input type="submit" value="Iniciar" class="btn btn-primary" id="iniciosecionButton"/>
            </form>
        </div>
    </body>
</html>


        