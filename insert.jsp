REGISTRATION JSP PAGE:
INSERTING:

<%@ page import="java.sql.*,java.lang.*"%>
<html>
<head>
<title>registration details</title>
</head>
<%	try	
	{
	Class.forName("com.mysql.jdbc.Driver").newInstance();
	Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/one","root","root");

		String vname=request.getParameter("fname");
		String pname=request.getParameter("password");
		String veml=request.getParameter("email");
		String mno=request.getParameter("mnum");
		String vsql="insert into register values(?,?,?,?)";		
		PreparedStatement pst = con.prepareStatement(vsql);
		pst.setString(1,vname);
		pst.setString(2,pname);
		pst.setString(3,veml);
		pst.setString(4,mno);
		pst.executeUpdate();
		out.println("inserted successfully");
		con.close();
		}
		catch(Exception e)
		{
			response.sendError(504,"Err Msg--> "+e);
		}
                    %>
</html>
