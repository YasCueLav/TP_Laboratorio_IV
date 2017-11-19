<%-- 
    Document   : ListadoClientes
    Created on : 08/11/2017, 08:44:58
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
        <h1>Listado Clientes Individual</h1>
        
        <table border="1">
            <tr>
                <th>Cliente</th>
                <th>Cantidad de Puestos</th>
                <th>Importe Total</th>
            </tr>
            <c:forEach items="${cliente}" var="c">
                <tr>
                    <td>${c.getNombre}</td>
                    <td>${c.getCanidadPiso}</td>
                    <td>${c.getTotal}</td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
