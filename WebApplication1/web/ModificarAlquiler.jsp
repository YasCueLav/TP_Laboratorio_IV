<%-- 
    Document   : ModificarAlquiler
    Created on : 08/11/2017, 08:42:28
    Author     : Yasmin
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar</title>
        <link rel="shortcut icon" href="favicon.ico" />
        <jsp:include page="links.jsp"></jsp:include>
        </head>
        <body>
        <jsp:include page="menu.jsp"></jsp:include>
            <div id="bordes">
                <h1>Modificar Alquiler</h1>

                <form action="ModificarAlquilerServlet" method="POST">
                    <input type="hidden" name="idAlquiler" value="${alquiler.getIdAlquiler()}">

                <div class="form-group">
                    <label for="exampleFormControlInput1">Cantidad equipos</label>
                    <input type="number" class="form-control" id="exampleFormControlInput1" name="canEquipo" value="${alquiler.getCanEquipo()}"  min="0">
                </div>
                <div class="form-group">
                    <label for="exampleFormControlInput1">Sillas extras</label>
                    <input type="number" class="form-control" id="exampleFormControlInput1" name="sillasExtra" value="${alquiler.getSillasExtras()}"  min="0">
                </div>
                <div class="form-group">
                    <label class="form-check-label" for="exampleFormControlInput1">
                        <c:if test="${alquiler.isSalaReunion()}">
                            <input type="checkbox" class="form-check-input"  name="SalaDeReunion" checked>
                        </c:if>
                        <c:if test="${!alquiler.isSalaReunion()}">
                            <input type="checkbox" class="form-check-input"  name="SalaDeReunion" value="false">
                        </c:if>
                        Sala de Reuniones
                    </label>
                </div>
                <input type="submit" value="Modificar"  class="btn btn-primary" />
            </form>
        </div>


    </body>
</html>
