<%-- 
    Document   : ListadoClientes
    Created on : 08/11/2017, 08:44:58
    Author     : Yasmin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reporte</title>
        <jsp:include page="links.jsp"></jsp:include>
    </head>
    <body>
        <jsp:include page="menu.jsp"></jsp:include>
        <h1>Listado Clientes (Todos e Individual)</h1>
        
        <div>
            
        </div>
        <%--
        <c:forEach items="${}" var="list">
                <tr>
                    
                </tr>
            </c:forEach>
        --%>
        
        <form acion="ListadoClientesServlet">
            
        </form>
    
        <table>

        </table>
        
    </body>
</html>
