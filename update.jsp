

UPDATING:

Update.jsp:
<%@ page import="java.sql.*"%>
<%
	try
		{
	Class.forName("com.mysql.jdbc.Driver").newInstance();
	Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/one","root","root");

		String vno=request.getParameter("no");
		String vname=request.getParameter("name");

		String vsql="update register set name=? where name=?";		
		PreparedStatement pst = con.prepareStatement(vsql);
		pst.setString(1,vname);
		pst.setString(2,vno);
		int x=pst.executeUpdate();
		out.println(x+" Record Updated");

		
		con.close();
		}
		catch(Exception e)
		{
			response.sendError(504,"Err Msg--> "+e);
		}

	%>




