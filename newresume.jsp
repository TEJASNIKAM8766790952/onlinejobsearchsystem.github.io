<jsp:include page="blank.html"/>
<html>
<head><title>Online Job Search System</title></head>
<body>
<table border="1" align="center">
<caption>NEW RESUME POSTED</caption>
<tr>
	<th>Name</th>
	<th>Email-id</th>
	<th>Phone</th>
	<th>Mobile</th>
	<th>Qualification</th>
	<th>Skills</th>
	<th>City</th>
	<th>Country</th>
</tr>
<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>
<%@page import="java.net.*" %>
<%@page import="java.lang.*" %>
<%! String fname,lname,email,p,m,q,s,city,co,d; %>
<%
try
{
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:project1", "", "");
	PreparedStatement pstm=con.prepareStatement(" select  * from seek_det ");
	ResultSet res=pstm.executeQuery();
	while(res.next())
	{
		fname=res.getString(3);
		lname=res.getString(4);
		email=res.getString(2);
		p=res.getString(5);
		m=res.getString(6);
		q=res.getString(7);
		s=res.getString(8);
		city=res.getString(9);
		co=res.getString(10);
		d=res.getString(11);
		
			out.println("<tr><td>"+fname+"\t"+lname+"</td><td>"+email+"</td><td>"+p+"</td><td>"+m+"</td><td>"+q+"</td><td>"+s+"</td><td>"+city+"</td><td>"+co+"</td><td>"+d+"</td></tr>");
	}	
	
}
catch(SQLException e)
{ 
	out.println("Error of SQL is "+e); 
}
catch(ClassNotFoundException e1)
{
out.println("driver error is "+e1); 
}
catch(IOException e2)
{}

	
%>
</table><p></p>
<table align="center" border="4">
<tr><td><a href="ad_profile.jsp">Back</td></tr></table>

</body>
</html>
