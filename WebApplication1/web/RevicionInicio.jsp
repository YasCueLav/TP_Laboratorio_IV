<%-- 
    Document   : RevicionInicio
    Created on : 15/11/2017, 08:47:29
    Author     : Yasmin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <% HttpSession mySession = request.getSession();
        mySession.setAttribute("inicio", false);
        getServletContext().getRequestDispatcher("/Index").forward(request, response);
        %>
    </body>
</html>
