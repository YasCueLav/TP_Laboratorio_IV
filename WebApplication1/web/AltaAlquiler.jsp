<%-- 
    Document   : AltaAlquiler
    Created on : 08/11/2017, 08:42:05
    Author     : Yasmin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro</title>
        <jsp:include page="links.jsp"></jsp:include>
        </head>
        <body>
        <jsp:include page="menu.jsp"></jsp:include>
            <h1>Registro Alquiler</h1>

        <from action="AltaAlquilerServlet" method="POST">
            Cliente <select name="Cliente" class="form-control">
                <c:forEach items="${clientes}" var="cl">
                <option value="${cl.getIdCliente()}">${cl.getNombre()}, ${cl.getApellido()}</option>
            </c:forEach>
        </select>
        <br/>
        <label>Puesto</label>
        <select name="Puesto" class="form-control">
                <c:forEach items="${puestos}" var="p">
                <option value="${p.getIdPuesto()}">${p.getPuesto()}</option>
            </c:forEach>
        </select>
        <br/>
        Piso:<input type="number" name="pisoPuesto" value="1" min="1" max="5"/>
        Numero:<input type="number" name="numeroPuesto" value="1"  min="1"/>
        <br/>
        <label>Cantidad equipos</label> <input  type="number" name="CantidadEquipo" value="0"  min="0"/>
        <br/>
        <label>Sillas extras</label> <input type="number" name="CantidadSilla" value="0"  min="0"/>
        <br/>
        <label>Sala de Reuniones</label> <input type="checkbox" name="SalaDeReunion" value="false"/>
        <br/>
        <input type="submit" value="Cargar" class="btn btn-primary" />
    </from>        
</body>
</html>