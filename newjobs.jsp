<jsp:include page="blank.html"/>
<html>
<head><title>Online Job Search System</title></head>
<body>
<table border="1" align="center">
<caption>NEW JOBS AVAILABLE</caption>
<tr>
	<th>Job Category</th>
	<th>No.Of Vacancy</th>
	<th>Qualification Required</th>
	<th>Skills Req.</th>
	<th>Address of Company</th>
	<th>City</th>
	<th>Country</th>
</tr>
<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>
<%@page import="java.net.*" %>
<%@page import="java.lang.*" %>
<%! String job_cat,no_vac,q_id,addr1,city,country,skills; %>
<%
try
{
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:project1", "", "");
	PreparedStatement pstm=con.prepareStatement(" select  * from vacancy ");
	ResultSet res=pstm.executeQuery();
	while(res.next())
	{
		job_cat=res.getString(2);
		no_vac=res.getString(3);
		q_id=res.getString(4);
		addr1=res.getString(5);
		city=res.getString(6);
		country=res.getString(7);
		skills=res.getString(8);
			out.println("<tr><td>"+job_cat+"</td><td>"+no_vac+"</td><td>"+q_id+"</td><td>"+skills+"</td><td>"+addr1+"</td><td>"+city+"</td><td>"+country+"</td></tr>");
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
