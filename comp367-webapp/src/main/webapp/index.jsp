<%@ page import="java.time.*" %>
<%
  int hour = LocalTime.now().getHour();
  String name = "Jerome";
  String greet = (hour < 12) ? "Good morning" : "Good afternoon";
%>
<html><body>
<h1><%= greet %>, <%= name %>, Welcome to COMP367</h1>
</body></html>