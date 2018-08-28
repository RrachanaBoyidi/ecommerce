



DELETING:

DELETE.jsp:
<%@ page import="java.sql.*"%>
<%
	try
		{
	Class.forName("com.mysql.jdbc.Driver").newInstance();
	Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/one","root","root");

		String vno=request.getParameter("no");
	
		String vsql="delete from register  where name=?";		
		PreparedStatement pst = con.prepareStatement(vsql);
		pst.setString(1,vno);
		int x=pst.executeUpdate();
		out.println(x+" Record deleted");

		
		con.close();
		}
		catch(Exception e)
		{
			response.sendError(504,"Err Msg--> "+e);
		}

	%>


