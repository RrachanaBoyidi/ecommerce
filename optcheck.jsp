
Optcheck.jsp:

<%
String vopt=request.getParameter("opt");

 if(vopt.equals("Delete"))
	response.sendRedirect("./delete.html");
else if(vopt.equals("Update"))
	response.sendRedirect("./update.html");
else if(vopt.equals("Display"))
	response.sendRedirect("./display.jsp");

%>
