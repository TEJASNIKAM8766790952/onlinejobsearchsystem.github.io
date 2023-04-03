<html>
<body>
<%@ page import="java.io.* " %>
<%@ page import="java.sql.* " %>
<%@ page import="java.net.* " %>
<%@page import="java.util.* "%>
<%! String u_id,pwd,fname,lname,p,m,country,city,cd,access,delete,edit,send;
%>

<%		


p=request.getParameter("phone");
m=request.getParameter("mobile");


Calendar cl=Calendar.getInstance();
String cd=String.valueOf(cl.get(Calendar.DATE))+"/"+String.valueOf(cl.get(Calendar.MONTH))+"/"+String.valueOf(cl.get(Calendar.YEAR));

		fname=request.getParameter("fname");
		lname=request.getParameter("lname");
		u_id=request.getParameter("u_id");
		pwd=request.getParameter("pwd");
		country=request.getParameter("country");
		access=request.getParameter("access");
		delete=request.getParameter("delete");
		edit=request.getParameter("edit");
		send=request.getParameter("send");
		city=request.getParameter("city");

	try
	{
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		Connection con1=DriverManager.getConnection("jdbc:odbc:project1","","");
		PreparedStatement stmt1=con1.prepareStatement("insert into admin_det values(?,?,?,?,?,?,?,?)");
		stmt1.setString(1,u_id);
		stmt1.setString(2,fname);
		stmt1.setString(3,lname);
		stmt1.setString(4,p);
		stmt1.setString(5,m);
		stmt1.setString(6,country);
		stmt1.setString(7,city);
		stmt1.setString(8,cd);
	
		int k1=stmt1.executeUpdate();
		
		Connection con2=DriverManager.getConnection("jdbc:odbc:project1","","");
		PreparedStatement stmt2=con2.prepareStatement("insert into admin values(?,?,?,?,?,?)");
		stmt2.setString(1,u_id);
		stmt2.setString(2,pwd);
		stmt2.setString(3,access);
		stmt2.setString(4,delete);
		stmt2.setString(5,edit);
		stmt2.setString(6,send);

		int k2=stmt2.executeUpdate();

		
		

	
		
		response.sendRedirect("page.html");
			con1.close();
			stmt1.close();
			con2.close();
			stmt2.close();
			
	}

	catch(SQLException e)
	{
		System.out.println("error is:"+e);
	}
	catch(ClassNotFoundException e1)
	{
		System.out.println("error is:"+e1);
	}

	catch(IOException e2)
	{
	}


%>

</body>
</html>
