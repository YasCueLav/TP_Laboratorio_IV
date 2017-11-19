<%-- 
    Document   : ListadoAlquileres
    Created on : 19-nov-2017, 17:21:52
    Author     : Gabriel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar</title>
    </head>
    <body>
        <h3>Selecionar el que desea modificar</h3>
        
        
        <table>
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
                    <td>${a.getIdAlquiler}</td>
                    <td>${a.getNombre}</td>
                    <td>${a.getPuesto}</td>
                    <td>${a.getCantEquipos}</td>
                    <td>${a.getSillasExtra}</td>
                    <c:if test="${a.getSalaReunion}">
                        <td>Tiene</td>
                    </c:if>
                    <c:if test="${!a.getSalaReunion}">
                        <td>No Tiene</td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
