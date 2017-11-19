<%-- 
    Document   : TotalAlquilerXPiso
    Created on : 08/11/2017, 08:45:19
    Author     : Yasmin
--%>

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
        <h1>Total de alquileres por piso</h1>
        
        <table border="1">
            <tr>
                <th>Piso</th>
                <th>Total Recaudado</th>
            </tr>
            <c:forEach items="${alquiler}" var="a">
                <tr>
                    <td>${a.getPsio}</td>
                    <td>${a.getTotalRecaudado}</td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
