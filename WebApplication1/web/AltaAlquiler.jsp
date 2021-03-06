<%-- 
    Document   : AltaAlquiler
    Created on : 08/11/2017, 08:42:05
    Author     : Yasmin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="favicon.ico" />
        <title>Registro</title>
        <jsp:include page="links.jsp"></jsp:include>
            <script src="validar.js" type="text/javascript"></script>
        </head>
        <body>
        <jsp:include page="menu.jsp"></jsp:include>
            <div id="bordes">
                <h1>Registro Alquiler</h1>

                <form action="AltaAlquilerServlet" method="POST">
                    <div class="form-group">
                        <label for="exampleFormControlSelect1">Cliente</label>
                        <select name="Cliente" class="form-control" id="exampleFormControlSelect1">
                        <c:forEach items="${clientes}" var="cl">
                            <option value="${cl.getIdCliente()}">${cl.getNombre()}, ${cl.getApellido()}</option>
                        </c:forEach>
                    </select>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlSelect1">Puesto</label>
                    <select name="Puesto" class="form-control" id="exampleFormControlSelect1">
                        <c:forEach items="${puestos}" var="p">
                            <option value="${p.getIdPuesto()}">${p.getPuesto()}</option>
                        </c:forEach>
                    </select>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlInput1">Cantidad equipos</label>
                    <input type="number" class="form-control" id="exampleFormControlInput1" name="CantidadEquipo" value="0"  min="0">
                </div>
                <div class="form-group">
                    <label for="exampleFormControlInput1">Sillas extras</label>
                    <input type="number" class="form-control" id="exampleFormControlInput1" name="CantidadSilla" value="0"  min="0">
                </div>
                <div class="form-group">
                    <label class="form-check-label" for="exampleFormControlInput1">
                        <input type="checkbox" class="form-check-input"  name="SalaDeReunion" value="false">
                        Sala de Reuniones
                    </label>
                </div>
                <input type="submit" value="Cargar" class="btn btn-primary" />
            </form>
        </div>
    </body>
</html>