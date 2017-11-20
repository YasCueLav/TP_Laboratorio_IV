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
        <jsp:include page="links.jsp"></jsp:include>
    </head>
    <body>
        <jsp:include page="menu.jsp"></jsp:include>
        <h1>Listado de Puesto Disponibles</h1>
        
        <table border="1">
            <tr>
                <th>Puesto</th>
                <th>Piso</th>
                <th>Cantidad Sillas</th>
                <th>Ventanas</th>
                <th>Precio</th>
            </tr>
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
        </table>
    </body>
</html>