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
		<h1 class="title"><font size=5>Job By Category</font>
		<form  action="category.jsp" method="post">
		<p><font size=5></font></p></h1><p>Select your category.</p>
		<p>Job category:<select name="j_cat" value=""><option value="IT">IT</option>
						<option value="sales">Sales</option>
						<option value="finance">Finance</option>
						<option value="marketing">Marketing</option></select></p>
		<p></p>
		<p><center><input type="submit" value="Start Search"></center></form></p>
		<p><font size=3><a href="seek_profile.jsp">Quick Job Search</a>|<a href="advance.html">Advanced Job Search</a>|<a href="job_loc.jsp">Jobs by Location</a></font></p>
	</div>
<div class="post">
				<h2 class="title"><a href="#">New Jobs Avaliable!</a></h2>
				<div class="entry">
					<h3></h3>
					<blockquote>
						<p><img src="images\img14.gif"><img src="images\img17.gif"></p>
					</blockquote>
					<h3></h3>
					<p><img src="images\img13.gif"><img src="images\img18.gif"><img src="images\img16.gif"></p>
					
					
						
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
					<h2>other Searchs</h2>

					
					  <p><a herf="search.html">Search other resume.</a></p>
					<p><font size=4>Security Notice:Keep your id and password safe</font></p>
						</li>
				<li>
					<h2>Are you an Employer?</h2>
					<p><ul><a href="">CLICK HERE.</a></ul></p></li>
				<li>
					<h2>job seekers check your inbox</h2>
					<form action="inbox.jsp" method="post"><p>Username:<input type="text" name="j_id"></p>
					<p>Password:<input type="password" name="pwd"></p>
					<p><input type=submit value="Check Inbox" name="inbox"></form></p></li>
				
			</ul>
		</div>
</div>
</div>
<div id="footer">
	<p class="copyright"><font size=4> Developed by:Tejas Ganesh Nikam</font></p>
</div>
</body>
</html>
