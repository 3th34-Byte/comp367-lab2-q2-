<%@ page import="java.time.*" %>
<%
  String t = request.getParameter("t");
  String name = "Jerome";
  String greet;

  if ("morning".equalsIgnoreCase(t)) greet = "Good morning";
  else if ("afternoon".equalsIgnoreCase(t)) greet = "Good afternoon";
  else greet = (LocalTime.now().getHour() < 12) ? "Good morning" : "Good afternoon";
%>
<html><body>
<h1><%= greet %>, <%= name %>, Welcome to COMP367</h1>
</body></html>