<%-- 
    Document   : AltaCliente
    Created on : 08/11/2017, 08:41:32
    Author     : Yasmin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
            <label>Documento</label> 
            <select name="tipoDocumento" class="form-control">
                <c:forEach items="${documentos}" var="tpV">
                    <option value="${tpV.getIdCliente()}">${tpV.getDescripcion()}</option>
                </c:forEach>
            </select>
            
            
            
            <input type="number" name="Documento" value="0"  min="0"/>
            <br/><%-- tipo --%>
            <label>Telefono</label> <input type="checkbox" name="ventana" value="false"/>
            <br/>
            <input type="subit" value="Cargar" class="btn btn-primary" />
        </from>     
    </body>
</html>
