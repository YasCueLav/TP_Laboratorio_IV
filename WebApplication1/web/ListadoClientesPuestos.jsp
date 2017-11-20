<%-- 
    Document   : ListadoClientesPuestos
    Created on : 19/11/2017, 18:30:20
    Author     : Yasmin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reporte</title>
        <jsp:include page="links.jsp"></jsp:include>
    </head>
    <body>
        <jsp:include page="menu.jsp"></jsp:include>
        <h1>Detalle Cliente</h1>   
        
        
        
        
        <table border="1">
            <tr>
                <th>Puesto</th>
                <th>Piso</th>
                <th>Cantidad Sillas</th>
                <th>Ventana</th>
                <th>Precio Base</th>
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
