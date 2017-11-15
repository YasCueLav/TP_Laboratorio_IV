<%-- 
    Document   : Index
    Created on : 15/11/2017, 08:45:47
    Author     : Yasmin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Inicio</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>
        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
              <div class="navbar-header">
                <a class="navbar-brand" href="Idex.jsp">Inicio</a>
              </div>
              <ul class="nav navbar-nav">
                <li><a href="AltaCliente.jsp">Registros Cliente</a></li>
                <li><a href="AltaPuesto.jsp">Registros Puesto</a></li>
                <li><a href="AltaAlquiler.jsp">Registros Alquiler</a></li>
                <li><a href="ModificarAlquiler.jsp">Modificar Alquiler</a></li>
                <li><a href="ListadoClientes.jsp">Listado de Clientes</a></li>
                <li><a href="ListadoCompletoPuestos.jsp">Listado de Completo de Puestos</a></li>
                <li><a href="TotalAlquilerXPiso.jsp">Total de alquiler por Piso</a></li>
              </ul>
            </div>
        </nav>
        <div>Inicio</div>
    </body>
</html>
