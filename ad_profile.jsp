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

<!-- start header -->
<div id="header">
	<div id="logo">
		<h1><a href="#"><span>Online Job Search System</span></a></h1>
		<p><marquee><font size=4>We find the right place for u!</font></marquee></p>
	</div>
	<div id="menu">
		<ul id="main">
			<li class="current_page_item"><a href="admin.html">ADMIN HOME</a></li>
			<li><a href="newresume.jsp">CHECK RESUME</a></li>
			<li><a href="newjobs.jsp">CHECK NEW JOBS</a></li>
			<li><a href="newemp.jsp">CHECK NEW STUDENTS</a></li>
			<li><a href="logout.jsp">LOGOUT</a></li>
		</ul>
		<ul id="feed">
			
		</ul>
	</div>
	
</div>
<!-- end header -->
<div id="wrapper">
	<!-- start page -->
	<div id="page">
	<div id="page-bgtop">
	<div id="page-bgbtm">
		<div id="sidebar1" class="sidebar">
			<ul>
				<li>
				</li>
				
				
				
			</ul>
		</div>
		<!-- start content -->
		<div id="content">
			<div class="flower"></div>
			<div class="post">
				<h1 class="title"><a href="#">New Admin-REGISTRTION FORM:</a></h1>
				<p class="byline"></p>
				<div class="entry">
					<form name="ad_reg" action="admin_reg.jsp" method="post">
					<p><h2>USER DETAILS:</h2></p>
					
					<ul>First Name:<input type="text" size="10" name="fname"></ul>
					<ul>Last Name:<input type="text" size="10" name="lname"></ul>
					<ul>Phone:<input type="text" size="15" name="phone"></ul>
					<ul>Mobile:<input type="text" size="15" name="mobile"></ul>
					<ul>Country:<select name="country" value="">
						<option value="india">India</option></select></ul>
					<ul>City:<select name="city" value="">
						<option value="Delhi">Pune</option>
						<option value="Mumbai">Mumbai</option>
						<option value="Chennai">Chennai</option>
						<option value="Kolkata">Bangalore</option></select></ul>
					<ul>Desired UserName:<input type="text" size="15" name="u_id"></ul>
					<ul>Password:<input type="password" size="15" name="pwd">Re-type Password:<input type="password" size="15" name="password"></ul>
					
					<p><h2>ACCESS PERMISSIONS:</h2></p>
					<ul>Access:<input type="checkbox" name="access" selected value="yes">Y/N</ul>
					<ul>Delete:<input type="checkbox" name="delete" selected value="yes">Y/N</ul>
					<ul>Edit:<input type="checkbox"  name="edit" selected value="yes">Y/N</ul>
					<ul>Send:<input type="checkbox" name="send" selected value="yes">Y/N</ul>
					<ul><input type="submit" value="Submit"></ul></form>
						 
					
						
				</div>
			</div>
			
			
			</div>
		</div>
		<!-- end content -->
		<!-- start sidebars -->
		<div id="sidebar2" class="sidebar">
			<ul>
				<li>
					
						<div>
							<h2>Security Notice</h2>
							<p><font size=5>Keep your id and password safe!</p>
							
						</div>
					</form>
				</li>
				
				<li></li>
				
			</ul>
		</div>
		<!-- end sidebars -->
		<div style="clear: both;"></div>
	</div>
	</div>
	</div>
	<!-- end page -->
</div>
<div id="footer">
	<p class="copyright"> Developed by:Tejas Ganesh Nikam</p>
</div>
</body>
</html>
