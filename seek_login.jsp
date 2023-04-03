<jsp:include page="page.html"/>
<html>
<head></head>
<body>
<%@page import="java.sql.* "%>
<%@page import="java.io.*"%>
<%! String name,password; %>
<%
name=request.getParameter("j_id");
password=request.getParameter("pwd");
try
{
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:project1", "", "");
	PreparedStatement pstm=con.prepareStatement(" select * from seek_login where j_id='"+name+"' and pwd='"+password+"' ");
	ResultSet res=pstm.executeQuery();
	if(res.next())
	{
		session.putValue(name,password);
		response.sendRedirect("seek_profile.jsp?j_id="+name+"&pwd="+password);
		
	}
	else
		out.println("Data does not exist in database");
}
catch(SQLException e)
{ 
	out.println("Error of SQL" +e); 
}
catch(ClassNotFoundException e1)
{
}
catch(IOException e2)
{}
%>

</body>
</html>
