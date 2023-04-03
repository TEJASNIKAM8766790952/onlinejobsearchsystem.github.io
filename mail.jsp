<html>
<head></head>
<body bgcolor=orange>
<center><font size=6 color=green><I><b>Send jobs to the following mail-id:</b></I></font></center>
<%@page import="java.sql.* "%>
<%@page import="java.io.* "%>
<%! String e_id,email2; %>
<%
e_id=request.getParameter("e_id");
email2=request.getParameter("email");
try
{
	
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:project1", "", "");
	PreparedStatement pstm=con.prepareStatement(" select  * from emp_det  where e_id='"+e_id+"' ");
	ResultSet res=pstm.executeQuery();
	while(res.next())
	{
		session.putValue(e_id,email2);
		out.println("<form action=send.jsp?e_id="+e_id+"&email="+email2+" method=post>");
		
	}
}
catch(SQLException e)
{ 
	
}
catch(ClassNotFoundException e1)
{

}
catch(IOException e2)
{}
%>
<center><textarea rows=8 cols=15 name="area"></textarea><p><input type=submit value="SEND JOBS"></p></center></form>
</body>
</html>
