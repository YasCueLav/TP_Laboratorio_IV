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
        <ul class="nav navbar-nav"><%-- Ir al Servlet No al JSP --%>
        <li><a href="/WebApplication1/AltaClienteServlet">Nuevo Cliente</a></li>
        <li><a href="/WebApplication1/AltaPuestoServlet">Nuevo Puesto</a></li>
        <li><a href="/WebApplication1/AltaAlquilerServlet">Alquilar</a></li>
        <li><a href="/WebApplication1/ListadoAlquileresServlet">Alquileres</a></li>
        <li><a href="/WebApplication1/ListadoClientesServlet">Clientes</a></li>
        <li><a href="/WebApplication1/ListadoCompletoPuestosServlet">Puestos</a></li>
        <li><a href="/WebApplication1/ListadoPuestoDisponiblesServlet">Puestos Disponibles</a></li>
        <li><a href="/WebApplication1/TotalAlquilerXPisoServlet">Ganancias por Piso</a></li>
        <c:if test="${inicio}">
            <li><a href="/WebApplication1/RevicionInicio.jsp" onclick="alert('Desconectado');">Cerrar Sesion</a></li>
        </c:if>
        <c:if test="${!inicio}">
            <li><a href="/WebApplication1/Login">Iniciar Sesion</a></li>
        </c:if>        
      </ul>
    </div>
  </nav>