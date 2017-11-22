<%-- 
    Document   : TotalAlquilerXPiso
    Created on : 08/11/2017, 08:45:19
    Author     : Yasmin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="shortcut icon" href="favicon.ico" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reporte</title>
        <jsp:include page="links.jsp"></jsp:include>
        </head>
        <body>
        <jsp:include page="menu.jsp"></jsp:include>
            <div id="bordes">
                <h1>Total de alquileres por piso</h1>

                <table class="table table-hover" border="1" id="bordesColor">
                    <thead class="thead-light">
                        <tr>
                            <th scope="col">Piso</th>
                            <th scope="col">Total Recaudado</th>
                        </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${alquileres}" var="a">
                        <tr>
                            <td>${a.getNroPiso()}</td>
                            <td>${a.getMonto()}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </body>
</html>
