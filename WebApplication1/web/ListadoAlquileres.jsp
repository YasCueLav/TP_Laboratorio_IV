<%-- 
    Document   : ListadoAlquileres
    Created on : 19-nov-2017, 17:21:52
    Author     : Gabriel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar</title>
        <jsp:include page="links.jsp"></jsp:include>
    </head>
    <body>
        <jsp:include page="menu.jsp"></jsp:include>
        <h3>Selecionar el que desea modificar</h3>
        
        
        <table border="1">
            <tr>
                <th>Id alquiler</th>
                <th>Cliente</th>
                <th>Puesto</th>
                <th>Cantidad Equipos</th>
                <th>Sillas Extras</th>
                <th>Sala Reunion</th>
            </tr>
            <c:forEach items="${alquileres}" var="a">
                <tr>
                    <td>${a.getId()}</td>
                    <td>${a.getNombre()}</td>
                    <td>${a.getPuesto()}</td>
                    <td>${a.getCanEquipo()}</td>
                    <td>${a.getSillasExtras()}</td>
                    <c:if test="${a.isSalaReunion()}">
                        <td>Tiene</td>
                    </c:if>
                    <c:if test="${!a.isSalaReunion()}">
                        <td>No Tiene</td>
                    </c:if>
                    <td><a href="/WebApplication1/ModificarAlquilerServlet?idAlquiler=${a.getId()}">Editar</a></td>
                </tr>
            </c:forEach>
                        
        </table>
    </body>
</html>
