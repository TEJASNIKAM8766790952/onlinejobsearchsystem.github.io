<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Online Job Search System</title>
<meta name="keywords" content="" />
<meta name="Simple Passage" content="" />
<link href="default.css" rel="stylesheet" type="text/css" media="screen" />
</head>
<body>
<%@page import="java.sql.* "%>
<%@page import="java.io.* "%>
<%@page import="java.net.* "%>
<%! String n,p,f,email;%>
<%
	n=request.getParameter("e_id");
	p=request.getParameter("password");
try
{

	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:project1", "", "");
	PreparedStatement pstm=con.prepareStatement(" select  * from emp_det  where e_id='"+n+"' ");
	ResultSet res=pstm.executeQuery();
	while(res.next())
	{
		f=res.getString(3);
		out.println("<h1><font size=5 color=blue>Welcome\t"+f+"!</font></h1>");
}
}
catch(SQLException e)
{ 
	
}
catch(ClassNotFoundException e1)
{

}
catch(IOException e2)
{}
%>

	
	
<div id="header">
	<div id="logo">
		<h1><a href="#"><span>Online Job Search System</span></a></h1>
		<p><marquee><font size=4>We find the right place for u!</font></marquee></p>
	</div>
	<div id="menu">
		<ul id="main">
			<li class="current_page_item"><a href="home.html">Home</a></li>
			<li><a href="seeker.html">Submit Resume</a></li>
			<li><a href="employer.html">Employer Register</a></li>
			<li><a href="#">About Us</a></li>
			<li><a href="#">Comments</a></li>
		</ul>
		<ul id="feed">
			<li><a href="search.html">Search</a></li>
			<li><a href="logout.jsp">Log Out</a></li>
		</ul>
	</div>
	
</div>
<div id="wrapper">
	<!-- start page -->
	<div id="page">
	<div id="page-bgtop">
	<div id="page-bgbtm">
		<div id="sidebar1" class="sidebar">
			<ul>
				<li>
					<h2>Recent Posts</h2>
					<ul>
						<li><a href="#">Create customized job messengers</a></li>
						<li><a href="#">Create multiple profiles</a></li>
						<li><a href="#">Let recruiters find you the right job</a></li>
						<li><a href="#">Provide confidentiality</a></li>
						<li><a href="#">Provide privacy of personal data</a></li>
						<li><a href="#">Assure secrecy of data</a></li>
						
					</ul>
				</li>
				
				
				
			</ul>
		</div>
	
<div id="content">
	<div class="post">
		<h1 class="title"><font size=5>Online Candidates Search</font>
		<p><font size=4>Easy way to find your candidate!</font></p></h1><p>Enter keywords,job categories,location,etc, to start your search.</p>
		<form name="search" action="q_search.jsp" method="post"><p><input type="text" size="50" name="search"><input type="submit" value="Start Search"></form></p>
		<p>Keywords(eg:c,c++,java),categories(eg:IT,sales,call centers)</p>
	</div>
<div class="post">
				<h2 class="title"><a href="#">New Jobs Avaliable?Post it here.</a></h2>
				<div class="entry">
					<form name="employer" action="empreg1.jsp" method="post">
					<p><h2>EMPLOYER DETAILS:</h2></p>
					
					<ul>Your UserName:<input type="text" size="15" name="e_id"></ul>
					<ul>Password:<input type="password" size="15" name="password">Re-type Password:<input type="password" size="15" name="password"></ul>
					
					<p><h2>COMPANY DETAILS:</h2></p>
					<ul>Company Name:<input type="text" size="15" name="c_name"></ul>
					<ul>Registration No:<input type="text" size="10" name="reg_no"></ul>
					<ul>Type:<select name="c_type" value=""><option value="company">Company Type</option><option value="placement agency">Placement Agency Type</option></select></ul>
					<ul>Key Skills:<input type="text" size="15" name="skills"></ul>
					<ul>No of vacancy:<select name="no_vac" value="'><option selected value="0">0</option>
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
						<option value="6">6</option>
						<option value="more than 6">more than 6</option></select></ul>
					<ul>Category:<select name="job_cat" value="'><option Selected value="null">Null</option>
						<option value="IT">IT</option>
						<option value="sales">Testing</option>
						<option value="sales">Sales</option>
						<option value="finance">Finance</option>
						<option value="marketing">Marketing</option></select></ul>
					<ul>Qualification:<select name="q_id" value="">
						<option value="Aviation">Aviation</option>
						<option value="B.A.">B.Tech</option>
						<option value="B.A.">B.A.</option>
						<option value="B.Arch">B.Arch</option>
						<option value="B.C.A">B.C.A</option>
						<option value="C.A.">C.A.</option>
						<option value="Diploma">Diploma</option>
						<option value="MBA">MBA</option></select></ul>
					<ul>Requirement:<select name="req" value="">
						<option value="immediate">Immediate</option>
						<option value="within 1 month">Within 1 month</option>
						<option value="within 3 months">Within 3 months</option>
						<option value="within 6 months">Within 6 months</option>
						<option value="within 12 months">Within 12 month</option></select></ul>
					<p><h2>LOCATION:</h2></p>
					<ul>Address:<input type="text" size="15" name="addr1"></ul>
					<ul>Country:<select name="country" value="">
						<option value="india">India</option></select></ul>
					<ul>City:<select name="city" value="">
						<option value="Delhi">Pune</option>
						<option value="Mumbai">Mumbai</option>
						<option value="Chennai">Chennai</option>
						<option value="Kolkata">Bangalore</option></select></ul>
					<ul><input type="submit" value="Submit"></ul></form>
						 
					
						
				</div>
				
</div>
</div>
</div>

<div id="sidebar2" class="sidebar">
			<ul>
				<li>
					
						<div>
							
						</div>
					
				</li>
				
				<li>
					<h2>Advanced Search</h2>

					<p><a href="resume_search.jsp">Search Resume.</a></p>
					  <p></p>
						</li>
				<li><h2>Check your Inbox:</h2>
				<form action="emp_inbox.jsp" method="post">
				<p>Username:<input type="text" name="e_id"></p>
				<p>Password:<input type="password" name="pwd"></p>
				<p><input type="submit" value="Check Inbox"></p></form></li>
				<li>
					<h2>Are you a JOB SEEKER?</h2>
					<p><ul><a href="seeker.html">CLICK HERE.</a></ul></p></li>
				<li>
					<h2>Ease your SEARCH BY</h2>

<%
n=request.getParameter("e_id");
try
{
	
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:project1", "", "");
	PreparedStatement pstm=con.prepareStatement(" select  * from emp_det  where e_id='"+n+"' ");
	ResultSet res=pstm.executeQuery();
	while(res.next())
	{
		email=res.getString(2);
		session.putValue(n,email);
		
		out.println("<p>CATEGORY:<a href=jobcat.jsp?e_id="+n+"&email="+email+">IT|Sales|Finance|Marketing</a></p>");
		
	}
}
catch(SQLException e)
{ 
	
}
catch(ClassNotFoundException e1)
{

}
catch(IOException e2)
{}
%>
					
<%
n=request.getParameter("e_id");
try
{
	
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:project1", "", "");
	PreparedStatement pstm=con.prepareStatement(" select  * from emp_det  where e_id='"+n+"' ");
	ResultSet res=pstm.executeQuery();
	while(res.next())
	{
		email=res.getString(2);
		session.putValue(n,email);
		
		out.println("<p>LOCATION:<a href=place.jsp?e_id="+n+"&email="+email+">Pune|Mumbai|Bangalore|Chennai</a></p>");
		
	}
}
catch(SQLException e)
{ 
	
}
catch(ClassNotFoundException e1)
{

}
catch(IOException e2)
{}
%>
<%
n=request.getParameter("e_id");
try
{
	
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:project1", "", "");
	PreparedStatement pstm=con.prepareStatement(" select  * from emp_det  where e_id='"+n+"' ");
	ResultSet res=pstm.executeQuery();
	while(res.next())
	{
		email=res.getString(2);
		session.putValue(n,email);
		
		out.println("<p>TYPE:<a href=type.jsp?e_id="+n+"&email="+email+">Company|Placement Agency</a></p></li>");
		
	}
}
catch(SQLException e)
{ 
	
}
catch(ClassNotFoundException e1)
{

}
catch(IOException e2)
{}
%>

					
				
			</ul>
		</div>
</div>
</div>
<div id="footer">
	<p class="copyright"><font size=4> Developed by:Tejas Ganesh Nikam</font></p>
</div>
</body>
</html>
