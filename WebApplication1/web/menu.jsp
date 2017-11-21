<%-- 
    Document   : menu
    Created on : 08/11/2017, 09:25:55
    Author     : Yasmin
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<nav  class="navbar navbar-expand-lg navbar-dark bg-dark">
<a class="navbar-brand" href="/WebApplication1/Index">Inicio</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
        <li class="nav-item">
        <a class="nav-link" href="/WebApplication1/AltaAlquilerServlet">Alquilar <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item dropdown" >
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Nuevo
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="/WebApplication1/AltaClienteServlet">Cliente</a>
          <a class="dropdown-item" href="/WebApplication1/AltaPuestoServlet">Puesto</a>
        </div>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" >
          Listado
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="/WebApplication1/ListadoAlquileresServlet">Alquileres</a>
          <a class="dropdown-item" href="/WebApplication1/ListadoClientesServlet">Clientes</a>
          <a class="dropdown-item" href="/WebApplication1/ListadoCompletoPuestosServlet">Puestos</a>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/WebApplication1/TotalAlquilerXPisoServlet">Ganancias por Piso <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/WebApplication1/ListadoPuestoDisponiblesServlet">Puestos Disponibles <span class="sr-only">(current)</span></a>
      </li>
    </ul>
    <ul class="nav justify-content-end">
      <li class="nav-item active">
        <c:if test="${inicio}">
            <a class="nav-link" href="/WebApplication1/RevicionInicio.jsp" onclick="alert('Desconectado');" style="color: dodgerblue;">
                Cerrar Sesion<span class="sr-only">(current)</span></a>
        </c:if>
        <c:if test="${!inicio}">
            <a class="nav-link" href="/WebApplication1/Login" style="color: dodgerblue;">Iniciar Sesion<span class="sr-only">(current)</span></a>
        </c:if>   
      </li>
    </ul>
  </div>
</nav>