<jsp:include page="page.html"/>
<html>
<head></head>
<body bgcolor=orange><center><font size=6><b>
<%@page import="java.sql.* "%>
<%@page import="java.io.*"%>
<%! int k=0;
String email,j_id,fname,e_id,email2; %>
<%
email=request.getParameter("area");
e_id=request.getParameter("e_id");
email2=request.getParameter("email");

try
{
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:project1", "", "");
	
	PreparedStatement pstm=con.prepareStatement(" select f_name,j_id,email from seek_det where email='"+email+"' ");
	ResultSet res=pstm.executeQuery();
	if(res.next())
	{
		fname=res.getString(1);
		j_id=res.getString(2);
		email=res.getString(3);
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		Connection con1=DriverManager.getConnection("jdbc:odbc:project1","","");
		PreparedStatement pstm1=con1.prepareStatement("insert into seek_inbox values(?,?,?,?,?)");
		pstm1.setString(1,j_id);
		pstm1.setString(2,fname);
		pstm1.setString(3,email);
		pstm1.setString(4,e_id);
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
