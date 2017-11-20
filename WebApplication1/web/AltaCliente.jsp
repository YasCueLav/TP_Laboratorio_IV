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
        
        <form action="AltaClienteServlet" method="POST">
            <label>Nombre</label><input type="text" name="nombreCliente"/>
            <br/>
            <label>Apellido</label> <input type="text" name="apellidoCliente"/>
            <br/>
            <label>Tipo Documento</label> 
            <select name="tiposDocumento" class="form-control">
                <c:forEach items="${tiposDocumento}" var="tpV">
                    <option value="${tpV.getIdTipoDocumento()}">${tpV.getDescripcion()}</option>
                </c:forEach>
            </select>           
            
            <br/>
            <label>Documento</label>
            <input type="number" name="documento"/>
            <br/><%-- tipo --%>
            <label>Teléfono</label> <input type="text" name="telefono"/>
            <br/>
            <input type="submit" value="Cargar" class="btn btn-primary" />
        </form>     
    </body>
</html>
