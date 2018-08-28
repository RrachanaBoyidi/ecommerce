
DISPLAYING:

<%@page import ="java.sql.*"%>
<html>
<head>
<title>Display</title>
</head>
<body>
<br>
<table border="2" align="center">
<%
	Class.forName("com.mysql.jdbc.Driver").newInstance();
	Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/one","root","root");
	String vsql="select * from register";
	PreparedStatement pst= con.prepareStatement(vsql);
	ResultSet rs=pst.executeQuery();
	%>
	<tr bgcolor="chocolate"><td align="center"><b>NAME</b></td><td align="center"><b>PASSWORD</b></td><td align="center"><b>EMAILID</b></td><td align="center"><b>PHONE NO</b></td></tr>
	<%
	while(rs.next())
		 {
         		%>		
		<tr><td><%=rs.getString("name")%></td>
<td><%=rs.getString("pwd")%></td><td><%=rs.getString("mailid")%></td><td><%=rs.getString("phone")%></tr>
<%}
	con.close();
	  %>
		</table>
</body>
</html>