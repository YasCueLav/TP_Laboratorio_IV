<%-- 
    Document   : ListadoPuestoDisponibles
    Created on : 08/11/2017, 08:47:25
    Author     : Yasmin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reporte</title>
        <link rel="shortcut icon" href="favicon.ico" />
        <jsp:include page="links.jsp"></jsp:include>
        </head>
        <body>
        <jsp:include page="menu.jsp"></jsp:include>

            <div id="bordes">
                <h1>Listado de Puesto Disponibles</h1>
                <table class="table table-hover" border="1" id="bordesColor">
                    <thead class="thead-light">
                        <tr>
                            <th scope="col">Puesto</th>
                            <th scope="col">Piso</th>
                            <th scope="col">Cantidad Sillas</th>
                            <th scope="col">Ventana</th>
                            <th scope="col">Precio</th>
                        </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${puestos}" var="p">
                        <tr>
                            <td>${p.getPuesto()}</td>
                            <td>${p.getPiso()}</td>
                            <td>${p.getCantSillas()}</td>
                            <c:if test="${p.isVentana()}">
                                <td>Tiene</td>
                            </c:if>
                            <c:if test="${!p.isVentana()}">
                                <td>No Tiene</td>
                            </c:if>
                            <td>$${p.getPrecioBase()}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </body>
</html>