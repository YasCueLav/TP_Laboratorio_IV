<%-- 
    Document   : ModificarAlquiler
    Created on : 08/11/2017, 08:42:28
    Author     : Yasmin
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
            <h1>Modificar Alquiler</h1>


        <form action="ModificarAlquilerServlet" method="POST">
            <input type="hidden" name="idAlquiler" value="${alquiler.getIdAlquiler()}">
            Cliente<select name="cliente">
            <c:forEach items="${clientes}" var="cliente">
                <option value="${cliente.getIdCliente()}">${cliente.getApellido()} ${cliente.getNombre()}</option>
            </c:forEach>
        </select>
        Puesto<select name="puesto">
            <c:forEach items="${puestos}" var="puesto">
                <option value="${puesto.getIdPuesto()}">${cliente.getPuesto()}</option>
            </c:forEach>
        </select>

        <br/>
        <label>Cantidad equipos</label> <input  type="number" name="canEquipo" value="${alquiler.getCanEquipo()}"  min="0"/>
        <br/>
        <label>Sillas extras</label> <input type="number" name="sillasExtra" value="${alquiler.getSillasExtras()}"  min="0"/>
        <br/>
        <c:if test="${alquiler.isSalaReunion()}">
            <label>Sala de Reuniones</label> <input type="checkbox" name="salaReunion" checked/>
        </c:if>
        <c:if test="${!alquiler.isSalaReunion()}">
        <label>Sala de Reuniones</label> <input type="checkbox" name="salaReunion"/>
        </c:if>
        <br/>
        <input type="subit" value="Modificar" class="btn btn-primary" />
    </form> 

</body>
</html>
