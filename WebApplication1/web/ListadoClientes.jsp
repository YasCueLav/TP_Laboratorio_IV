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
                <th>Teléfono</th>
                <th>Cantidad de Puestos</th>                
                <th>Importe</th>
                <th></th>
            </tr>
            <c:forEach items="${clientes}" var="c">
                <tr>
                    <td>${c.getApellidoCliente()}, ${c.getNombreCliente()}</td>
                    <td>${c.getTelefono()}</td>
                    <td>${c.getCantidadPuesto()}</td>
                    <td>${c.getImporte()}</td>
                    <td><a href="/WebApplication1/DetalleClientesServlet?idCliente=${c.getIdCliente()}">Ver Detalle</a></td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
