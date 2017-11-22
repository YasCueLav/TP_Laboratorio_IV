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
        <link rel="shortcut icon" href="favicon.ico" />
        <jsp:include page="links.jsp"></jsp:include>
            <script src="validar.js" type="text/javascript"></script>
        </head>
        <body>
        <jsp:include page="menu.jsp"></jsp:include>
            <div id="bordes">
                <h1>Registro Cliente</h1>

                <form action="AltaClienteServlet" method="POST" onsubmit="return validarNuevoCliente();">
                    <div class="form-group">
                        <label for="exampleFormControlInput1">Nombre</label>
                        <input type="text" class="form-control" id="exampleFormControlInput1" name="nombreCliente" placeholder="Nombre">
                    </div>
                    <div class="form-group">
                        <label for="exampleFormControlInput1">Apellido</label>
                        <input type="text" class="form-control" id="exampleFormControlInput1" name="apellidoCliente" placeholder="Apellido">
                    </div>
                    <div class="form-group">
                        <label for="exampleFormControlSelect1">Documento</label>
                        <select name="tiposDocumento" class="form-control" id="exampleFormControlSelect1" id="tamTipoDNI" >
                        <c:forEach items="${tiposDocumento}" var="tpV">
                            <option value="${tpV.getIdTipoDocumento()}">${tpV.getDescripcion()}</option>
                        </c:forEach>
                    </select>
                    <input type="number" class="form-control" id="exampleFormControlInput1" name="documento" placeholder="14474472" >
                </div>
                <div class="form-group">
                    <label for="exampleFormControlInput1">Teléfono</label>
                    <input type="text" class="form-control" id="exampleFormControlInput1" name="telefono" placeholder="156326598">
                </div>
                <input type="submit" value="Cargar" class="btn btn-primary" />
            </form>     
        </div>
    </body>
</html>
