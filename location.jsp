<jsp:include page="page.html"/>
<html>
<head></head>
<body><form action="seek_mail.jsp" method="post">
<table border="1" width="100%" align="center">
<caption>Vacancies Avaliable</caption>
<tr>
	
	<th>Email-id</th>
	<th>Job Category</th>
	<th>No. of Seats Vacant</th>
	<th>Qualification req</th>
	<th>Address</th>
	<th>Skills Required</th>
	<th>Option Select</th>
	
</tr>
<%@page import="java.sql.* "%>
<%@page import="java.io.* "%>
<%! String email,addr1,city,country,j_cat,q_id,key,no_vac,e_id,skills; %>
<%
city=request.getParameter("location");

try
{
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:project1", "", "");
	PreparedStatement pstm=con.prepareStatement(" select * from vacancy where city='"+city+"' ");
	ResultSet res=pstm.executeQuery();
	while(res.next())
	{
		e_id=res.getString(1);
		j_cat=res.getString(2);
		no_vac=res.getString(3);
		q_id=res.getString(4);
		addr1=res.getString(5);
		city=res.getString(6);
		country=res.getString(7);
		skills=res.getString(8);
		email=res.getString(9);
		out.println("<tr><td>"+email+"</td><td>"+j_cat+"</td><td>"+no_vac+"</td><td>"+q_id+"</td><td>"+addr1+","+city+","+country+"</td><td>"+skills+"</td><td><input type=checkbox name=seek_search selected value=yes></tr>");
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
<center><input type=submit value="Send Resume"></center></form>
</table>
</body>
</html>
