<jsp:include page="page.html"/>
<html>
<head></head>
<body>
<%@page import="java.sql.* "%>
<%@page import="java.io.*"%>
<%! String name,password; %>
<%
name=request.getParameter("e_id");
password=request.getParameter("password");
try
{
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:project1", "sysman", "ankita");
	PreparedStatement pstm=con.prepareStatement(" select * from emp_login where e_id='"+name+"' and password='"+password+"' ");
	ResultSet res=pstm.executeQuery();
	if(res.next())
	{
		session.putValue(name,password);
		response.sendRedirect("emp_profile.jsp?e_id="+name+"&password="+password);
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
