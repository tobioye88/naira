<%-- 
    Document   : login.jsp
    Created on : Sep 7, 2017, 10:46:09 AM
    Author     : Super Soft Tech
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.naira.jsp.Validate"%>
<%
//out.print("logging in");
String email = request.getParameter("email");
String password = request.getParameter("password");
String dbusername = new String("user@email.com");
String dbpassword = new String("password");
// Validate
out.print(email);
out.print(password);
Validate v = new Validate();
if(v.min(email, 6).result()
   && v.max(email, 20).result()
   && v.alpha(email).result()
   && v.same(email, dbusername).result()
   && v.same(password, dbpassword).result()
   ){
    session.setAttribute("log", "true");
    response.sendRedirect("../dashboard.jsp");
}else{
    session.invalidate();
    response.sendRedirect("../login.jsp");
}
%>