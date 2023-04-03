<jsp:include page="page.html"/>
<html>
<head></head>
<body>
<table border="1" width="100%" align="center">
<caption>Job Aspirants</caption>
<tr>
	<th>First Name</th>
	<th>Last Name</th>
	<th>Email-id</th>
	<th>Phone-no</th>
	<th>Mobile-no</th>
	<th>Qualification</th>
	<th>Skills</th>
	<th>City</th>
	<th>Country</th>
</tr>
<%@page import="java.sql.* "%>
<%@page import="java.io.* "%>
<%! String p,m,key,j_id,email,f_name,l_name,q_id,skills,city,country; %>
<%
key=request.getParameter("search");
try
{
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:project1", "", "");
	PreparedStatement pstm=con.prepareStatement(" select * from seek_det where skills='"+key+"' ");
	ResultSet res=pstm.executeQuery();
	while(res.next())
	{
		j_id=res.getString(1);
		email=res.getString(2);
		f_name=res.getString(3);
		l_name=res.getString(4);
		p=res.getString(5);
		m=res.getString(6);
		q_id=res.getString(7);
		skills=res.getString(8);
		city=res.getString(9);
		country=res.getString(10);
		out.println("<tr><td>"+f_name+"</td><td>"+l_name+"</td><td>"+email+"</td><td>"+p+"</td><td>"+m+"</td><td>"+q_id+"</td><td>"+skills+"</td><td>"+city+"</td><td>"+country+"</td></tr>");
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
</table>
</body>
</html>
