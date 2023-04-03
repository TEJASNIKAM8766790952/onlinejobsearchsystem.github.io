<jsp:include page="blank.html"/>
<html>
<head><title>Online Job Search System</title></head>
<body>
<table border="1" align="left" width=50%>
<caption>NEW EMPLOYERS</caption>
<tr>
	<th>Name</th>
	<th>E-Mail Id</th>
	<th>Phone No</th>
	<th>Date Posted</th>
	

</tr>
<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>
<%@page import="java.net.*" %>
<%@page import="java.lang.*" %>
<%! String fname,lname,email,p,d; %>
<%
try
{
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:project1", "", "");
	PreparedStatement pstm=con.prepareStatement(" select  * from emp_det ");
	ResultSet res=pstm.executeQuery();
	while(res.next())
	{
		fname=res.getString(3);
		lname=res.getString(4);
		email=res.getString(2);
		p=res.getString(5);
		d=res.getString(8);
			out.print("<tr><td>"+fname+"\t"+lname+"</td><td>"+email+"</td><td>"+p+"</td><td>"+d+"</td></tr>");
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
</table>
<table border="1" align="right" width=50%>
<caption>NEW COMPANIES</caption>
<tr>

	<th>Company Name</th>
	<th>Address of Company</th>
	<th>City</th>
	<th>Country</th>
	<th>Requirement</th>
</tr>

<%! String c_name,addr1,city,country,req; %>
<%
try
{
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	
		
	Connection con1=DriverManager.getConnection("jdbc:odbc:project1", "", "");
	PreparedStatement pstm1=con1.prepareStatement(" select  * from company ");
	ResultSet res1=pstm1.executeQuery();
	while(res1.next())
	{
		c_name=res1.getString(3);
		addr1=res1.getString(6);
		city=res1.getString(8);
		country=res1.getString(7);
		req=res1.getString(5);
		out.print("<tr><td>"+c_name+"</td><td>"+addr1+"</td><td>"+city+"</td><td>"+country+"</td><td>"+req+"</td></tr>");
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
</table>


<a href="ad_profile.jsp">Back</a>

</body>
</html>
