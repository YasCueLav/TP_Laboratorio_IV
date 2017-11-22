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
        <link rel="shortcut icon" href="favicon.ico" />
        <jsp:include page="links.jsp"></jsp:include>
        </head>
        <body>
        <jsp:include page="menu.jsp"></jsp:include>
        <div id="bordes">
            <h1>Modifique los datos</h1>
            <table class="table table-hover" border="1" id="bordesColor">
                    <thead class="thead-light">
                        <tr>
                            <th scope="col">Cliente</th>
                            <th scope="col">Puesto</th>
                            <th scope="col">Cantidad Equipos</th>
                            <th scope="col">Sillas Extras</th>
                            <th scope="col">Sala Reunión</th>
                            <th scope="col"></th>
                        </tr>
                </thead>
                <tbody>
                    <c:forEach items="${alquileres}" var="a">
                        <tr>
                            <td>${a.getDocumentoCliente()}</td>
                            <td>${a.getNombre()}</td>
                            <%--<td>${a.getPuesto()}</td>--%>
                            <td>${a.getCanEquipo()}</td>
                            <td>${a.getSillasExtras()}</td>
                            <c:if test="${a.isSalaReunion()}">
                                <td>Tiene Permiso</td>
                            </c:if>
                            <c:if test="${!a.isSalaReunion()}">
                                <td>No Tiene Permiso</td>
                            </c:if>
                            <td><a id="Link" href="/WebApplication1/ModificarAlquilerServlet?idAlquiler=${a.getId()}">Editar</a></td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </body>
</html>
