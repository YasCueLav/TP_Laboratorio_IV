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
        <table>
            <tr>
                <th>Id Puedto</th>
                <th>Piso</th>
                <th>Cantidad Sillas</th>
                <th>Ventanas</th>
                <th>Precio</th>
            </tr>
            <c:forEach items="${puesto}" var="">
                <tr>
                    <td>${puesto.getIdPuesto}</td>
                    <td>${puesto.getPiso}</td>
                    <td>${puesto.getCantSillas}</td>
                    <c:if test="${puesto.isVentana}">
                        <td>Tiene</td>
                    </c:if>
                    <c:if test="${!puesto.isVentana}">
                        <td>No Tiene</td>
                    </c:if>
                    <td>$${puesto.getPrecioBace()}</td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>