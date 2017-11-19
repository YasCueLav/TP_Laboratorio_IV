<%-- 
    Document   : ListadoCompletoPuestos
    Created on : 08/11/2017, 08:44:43
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
        <h1>Listado Completo de Puestos</h1>
        <table>
            <tr>
                <th>Id Puedto</th>
                <th>Piso</th>
                <th>Cantidad Sillas</th>
                <th>Ventanas</th>
                <th>Precio</th>
                <th>Disponible</th>
            </tr>
            <c:forEach items="${puestos}" var="">
                <tr>
                    <td>${puestos.getIdPuesto}</td>
                    <td>${puestos.getPiso}</td>
                    <td>${puestos.getCantSillas}</td>
                    <c:if test="${puestos.isVentana}">
                        <td>Tiene</td>
                    </c:if>
                    <c:if test="${!puestos.isVentana}">
                        <td>No Tiene</td>
                    </c:if>
                    <td>$${puestos.getPrecioBace()}</td>
                    <c:if test="${puestos.isDisponible}">
                        <td>Disponible</td>
                    </c:if>
                    <c:if test="${!puestos.isDisponible}">
                        <td>No Disponible</td>
                    </c:if>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
