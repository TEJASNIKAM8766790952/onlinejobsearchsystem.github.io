<jsp:include page="blank.html"/>
<html>
<head></head>
<body bgcolor=orange><center><font size=6><b>
<%@page import="java.sql.* "%>
<%@page import="java.io.*"%>
<%! int k;
String email,e_id,fname,pwd,j_id,email2; %>
<%
e_id=request.getParameter("e_id");
pwd=request.getParameter("pwd");
try
{
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:project1", "", "");
	
	PreparedStatement pstm=con.prepareStatement(" select  * from emp_inbox where e_id='"+e_id+"' ");
	ResultSet res=pstm.executeQuery();
	if(res.next())
	{
		e_id=res.getString(1);
		fname=res.getString(2);
		email=res.getString(3);
		j_id=res.getString(4);
		email2=res.getString(5);
		out.println("dear\t"+fname+"You Have a mail!\t\t\n");
		out.println("you received the mail from the id:"+email2);
	}
	else
		out.println("You hav no mail!");
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
