
<html>
<head></head>
<body bgcolor=orange>
<center><font size=6 color=green><I><b>Send application to the following mail-id:</b></I></font></center>
<%@page import="java.sql.* "%>
<%@page import="java.io.* "%>
<%@page import="java.net.* "%>
<%! String n,email;%>
<%
n=request.getParameter("j_id");
email=request.getParameter("email");
try
{
	
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:project1", "", "");
	PreparedStatement pstm=con.prepareStatement(" select  * from seek_det  where j_id='"+n+"' and email='"+email+"' ");
	ResultSet res=pstm.executeQuery();
	while(res.next())
	{
		session.putValue(n,email);
		out.println("<form action=seek_send.jsp?j_id="+n+"&email="+email+" method=post>");
		
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
<center><textarea rows=8 cols=15 name="area"></textarea><p><input type=submit value="SEND REQUEST"></p></center></form>
</body>
</html>
