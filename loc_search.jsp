<jsp:include page="page.html"/>
<html>
<head></head>
<body>
<%@page import="java.sql.* "%>
<%@page import="java.io.* "%>
<%! String exp,j_id,j_cat,type,city,country,email,e_id,email2; %>
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
		out.println("<form action=mail.jsp?e_id="+e_id+"&email="+email2+" method=post>");
		
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

<table border="1" width="100%" align="center">
<caption>Job Aspirants</caption>
<tr>
	<th>Employee-Id</th>
	<th>Job Category</th>
	<th>Job Type</th>
	<th>Experience</th>
	<th>Location</th>
	<th>Email-Id</th>
	<th>Option Select</th>

</tr>
<%
city=request.getParameter("location");
try
{
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:project1", "", "");
	PreparedStatement pstm=con.prepareStatement(" select * from experience where city='"+city+"' ");
	ResultSet res=pstm.executeQuery();
	while(res.next())
	{
		j_id=res.getString(1);
		j_cat=res.getString(2);
		type=res.getString(3);
		exp=res.getString(4);
		city=res.getString(8);
		country=res.getString(9);
		email=res.getString(10);
		out.println("<tr><td>"+j_id+"</td><td>"+j_cat+"</td><td>"+type+"</td><td>"+exp+"</td><td>"+city+","+country+"</td><td>"+email+"</td><td><input type=checkbox name=slocation selected value=yes></td></tr>");
	}	
	
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
<input type=submit value="Send Jobs"></form>
</table>
</body>
</html>
