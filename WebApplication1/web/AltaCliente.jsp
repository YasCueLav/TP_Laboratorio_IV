<%-- 
    Document   : AltaCliente
    Created on : 08/11/2017, 08:41:32
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
        <h1>Registro Cliente</h1>
        
        <from action="AltaClienteServlet" method="POST">
            <label>Nombre</label><input type="text" name="nombreCliente" value="1" min="1" max="5"/>
            <br/>
            <label>Apellido</label> <input type="text" name="apellidoCliente" value="1"  min="1"/>
            <br/>
            <label>Tipo Documento</label> 
            <select name="tiposDocumento" class="form-control">
                <c:forEach items="${tiposDocumento}" var="tpV">
                    <option value="${tpV.getIdTipoDocumento()}">${tpV.getDescripcion()}</option>
                </c:forEach>
            </select>
            
            
            <br/>
            <label>Documento</label>
            <input type="number" name="documento" value="0"  min="0"/>
            <br/><%-- tipo --%>
            <label>Teléfono</label> <input type="text" name="telefono" value="0"  min="0"/>
            <br/>
            <input type="submit" value="Cargar" class="btn btn-primary" />
        </from>     
    </body>
</html>
