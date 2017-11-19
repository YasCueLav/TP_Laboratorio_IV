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
        
        <c:forEach items="${cliente}" var="c">
            <div>
                <b>Cliente </b> nombre + Apellido
                </br>
                <b>Puestos </b>
                <c:forEach items="${puesto}" var="p">
                    nombre + piso for br x c/u
                </c:forEach>
                </br>
                <b>Importe Total</b> importe
            </div>
        </c:forEach>
    </body>
</html>
