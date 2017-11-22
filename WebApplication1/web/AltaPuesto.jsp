<%-- 
    Document   : AltaPuesto
    Created on : 08/11/2017, 08:41:13
    Author     : Yasmin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro</title>
        <link rel="shortcut icon" href="favicon.ico" />
        <jsp:include page="links.jsp"></jsp:include>
            <script src="validar.js" type="text/javascript"></script>
        </head>
        <body>
        <jsp:include page="menu.jsp"></jsp:include>
        <div id="bordes">
            <h1>Registro Puesto</h1>

            <form action="AltaPuestoServlet" method="POST" onsubmit="return validarNuevoPuesto();">
                <div class="form-group">
                    <label for="exampleFormControlInput1">Piso</label>
                    <input type="number" class="form-control" id="exampleFormControlInput1"name="pisoPuesto" value="1" min="1" max="5">
                </div>
                <div class="form-group">
                    <label for="exampleFormControlInput1">Número</label>
                    <input type="number" class="form-control" id="exampleFormControlInput1"  name="numeroPuesto" value="1"  min="1">
                </div>
                <div class="form-group">
                    <label for="exampleFormControlInput1">Cantidad de sillas</label>
                    <input type="number" class="form-control" id="exampleFormControlInput1" name="sillasExtra" value="0"  min="0" max="100">
                </div>
                <div class="form-group">
                    <label class="form-check-label" for="exampleFormControlInput1">
                        <input type="checkbox" class="form-check-input"  name="ventana" value="false">
                        Ventana
                    </label>
                </div>
                <input type="submit" value="Cargar" class="btn btn-primary" />
            </form>     
        </div>

    </body>
</html>
