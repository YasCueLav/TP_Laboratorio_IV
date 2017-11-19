<%-- 
    Document   : ListadoClientesPuestos
    Created on : 19/11/2017, 18:30:20
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
        <h1>Listado Cliente filto</h1>
        
        <form acion="ListadoClientesPuestosServlet">
            <label>Cliente DNI</label> <input type="text" name="filtroDNI" />
        </form>
        
        <div>
            <b>Cliente: </b> <label> nombre + Apellido</label>
            </br>
            <b>Documento: </b> <label> TipoDNU + DNI</label>
            </br>
            <b>Telefono </b> <label> tel</label>
        </div>
        
        <table border="1">
            <tr>
                <th>Puesto</th>
                <th>Piso</th>
                <th>Cantidad Sillas</th>
                <th>Ventana</th>
                <th>Cantidad Equipos</th>
                <th>Sillas Extras</th>
                <th>Sala Reunion</th>
            </tr>
            <c:forEach items="${puesto}" var="p">
                <tr>
                    <td>${p.getNombre}</td>
                    <td>${p.getPiso}</td>
                    <td>${p.getCantSillas}</td>
                    <c:if test="${p.isVentana}">
                        <td>Tiene</td>
                    </c:if>
                    <c:if test="${!p.isVentana}">
                        <td>No Tiene</td>
                    </c:if>
                    <td>${p.getCanEquipo}</td>
                    <td>${p.getSillasExtras}</td>
                    <c:if test="${p.getSalaReunion}">
                        <td>Tiene</td>
                    </c:if>
                    <c:if test="${!p.getSalaReunion}">
                        <td>No Tiene</td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
