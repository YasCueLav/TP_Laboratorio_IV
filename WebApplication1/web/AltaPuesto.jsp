<%-- 
    Document   : AltaPuesto
    Created on : 08/11/2017, 08:41:13
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
        <h1>Registro Puesto</h1>
        
        <from>
            <label>Piso</label><input type="number" name="pisoPuesto" value="1" min="1" max="5"/>
            <br/>
            <label>Numero</label> <input type="number" name="numeroPuesto" value="1"  min="1"/>
            <br/>
            <label>Cantidad de sillas</label> <input type="number" name="sillasExtra" value="0"  min="0"/>
            <br/>
            <label>ventana</label> <input type="checkbox" name="ventana" value="false"/>
            <br/>
            <input type="subit" value="Cargar" class="btn btn-primary" />
        </from>     
    </body>
</html>
