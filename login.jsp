<%@page language="java"%>
<%@page import ="java.lang.*,java.sql.*,java.io.*,java.util.*" %>
<%
  Connection con=null;
  Statement stmt=null;
  ResultSet rs=null;
  try{
        Class.forName("oracle.jdbc.driver.OracleDriver").newInstance();
	    con= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","jsvp1998");
        stmt =con.createStatement();
        String unm = request.getParameter("uname");
        String pwd = request.getParameter("pwd");
        String pno = request.getParameter("phno");
        String str="insert into rachana (name,pwd,pno) values('"+unm+"','"+pwd+"','"+pno+"')";
        rs=stmt.executeQuery(str);
        if(rs.next())
           out.println("Registration Success");
        else
            out.println("Failure");
        rs.close();
        stmt.close();
}
         catch(Exception e)
         {
         out.println(e);
         }
%>