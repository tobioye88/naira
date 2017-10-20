<%-- 
    Document   : logout.jsp
    Created on : Sep 7, 2017, 12:52:41 PM
    Author     : Super Soft Tech
--%>
<%
String log = (String) session.getAttribute("log");
session.removeAttribute(log);
session.invalidate();
response.sendRedirect("../index.jsp");
%>