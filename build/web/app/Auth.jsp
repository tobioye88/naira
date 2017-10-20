<%@page import="com.naira3.jsp.*"%>
<%
//String log = (String) session.getAttribute("log");
//if(log == null){
//    response.sendRedirect("login.jsp");
//}

if(Auth.check((String) session.getAttribute("log"))){
    //out.print("hello");
}
%>