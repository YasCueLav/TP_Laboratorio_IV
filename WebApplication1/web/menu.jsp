<%-- 
    Document   : menu
    Created on : 08/11/2017, 09:25:55
    Author     : Yasmin
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<nav class="navbar navbar-inverse">
    <div class="container-fluid">
      <div class="navbar-header">
        <a class="navbar-brand" href="/WebApplication1/Index">Inicio</a>
      </div>
      <ul class="nav navbar-nav">
        <li><a href="/WebApplication1/AltaCliente.jsp">Registros Cliente</a></li>
        <li><a href="/WebApplication1/AltaPuesto.jsp">Registros Puesto</a></li>
        <li><a href="/WebApplication1/AltaAlquiler.jsp">Registros Alquiler</a></li>
        <li><a href="/WebApplication1/ModificarAlquiler.jsp">Modificar Alquiler</a></li>
        <li><a href="/WebApplication1/ListadoClientes.jsp">Listado de Clientes</a></li>
        <li><a href="/WebApplication1/ListadoCompletoPuestos.jsp">Listado de Completo de Puestos</a></li>
        <li><a href="/WebApplication1/TotalAlquilerXPiso.jsp">Total de alquiler por Piso</a></li>
        <c:if test="${inicio}">
            <li><a href="/WebApplication1/RevicionInicio.jsp" onclick="alert('Desconectado');">Cerrar Sesion</a></li>
        </c:if>
        <c:if test="${!inicio}">
            <li><a href="/WebApplication1/Login">Iniciar Sesion</a></li>
        </c:if>        
      </ul>
    </div>
  </nav>