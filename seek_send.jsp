<jsp:include page="page.html"/>
<html>
<head></head>
<body bgcolor=orange><center><font size=6><b>
<%@page import="java.sql.* "%>
<%@page import="java.io.*"%>
<%! int k=0;
String email,e_id,fname,j_id,email2; %>
<%
email=request.getParameter("area");
j_id=request.getParameter("j_id");
email2=request.getParameter("email");
try
{
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:project1", "", "");
	
	PreparedStatement pstm=con.prepareStatement(" select e_id,email,fname from emp_det where email='"+email+"' ");
	ResultSet res=pstm.executeQuery();
	if(res.next())
	{
		fname=res.getString(3);
		e_id=res.getString(1);
		email=res.getString(2);
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		Connection con1=DriverManager.getConnection("jdbc:odbc:project1","","");
		PreparedStatement pstm1=con1.prepareStatement("insert into emp_inbox values(?,?,?,?,?)");
		pstm1.setString(1,e_id);
		pstm1.setString(2,fname);
		pstm1.setString(3,email);
		pstm1.setString(4,j_id);
		pstm1.setString(5,email2);
		int k1=pstm1.executeUpdate();
		
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
</b></font></center>
</body>
</html>
