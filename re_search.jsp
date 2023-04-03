<jsp:include page="blank.html"/>
<html>
<head><title>Online Job Search System</title></head>
<body><form action="mail.jsp" method="post">
<table border="1" align="center">
<caption>RESUME POSTED</caption>
<tr>
	<th>Name</th>
	<th>Email-Id</th>
	<th>Skills</th>
	<th>Location</th>
	<th>Experience</th>
	<th>Job Category</th>
	<th>Job Type</th>
	<th>Select</th>
</tr>

<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>
<%@page import="java.net.*" %>
<%@page import="java.lang.*" %>
<%! String fname,lname,email,skills,city,j_cat,c_type,e,j_id; %>
<%
skills=request.getParameter("search");
city=request.getParameter("location");
j_cat=request.getParameter("j_cat");
c_type=request.getParameter("c_type");
try
{
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:project1", "", "");
	PreparedStatement pstm=con.prepareStatement(" select  * from experience where skills='"+skills+"' and city='"+city+"' and job_cat='"+j_cat+"' and j_type='"+c_type+"' ");
	ResultSet res=pstm.executeQuery();
	while(res.next())
	{
		j_id=res.getString(1);
		fname=res.getString(5);
		lname=res.getString(6);
		email=res.getString(10);
		skills=res.getString(7);
		city=res.getString(8);
		j_cat=res.getString(2);
		c_type=res.getString(3);
		e=res.getString(4);
			out.println("<tr><td>"+fname+"\t"+lname+"</td><td>"+email+"</td><td>"+skills+"</td><td>"+city+"</td><td>"+e+"</td><td>"+j_cat+"</td><td>"+c_type+"</td><td><input type=checkbox name=re_select selected value=yes></tr>");
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

</table><p><center><input type="submit" value="Send Mail"></center></form></p>

<table align="center" border="4">
<tr><td><a href="emp_profile.jsp">Back</td></tr></table>

</body>
</html>
