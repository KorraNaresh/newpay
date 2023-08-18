<%@page import="com.rs.fer.ex.News"%>
<%@page import="java.util.List"%>
<%@page import="com.rs.fer.ex.NewsDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>News & Events</title>
<link href="news.css" rel="stylesheet" type="text/css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
<!--ICONS LINK-->
<link rel="stylesheet" href="https://kit.fontawesome.com/fafd4002bd.css"
	crossorigin="anonymous">
<script src="https://kit.fontawesome.com/fafd4002bd.js"
	crossorigin="anonymous"></script>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<link href='http://fonts.googleapis.com/css?family=Raleway'
	rel='stylesheet' type='text/css'>
<link href="http://www.jqueryscript.net/css/jquerysctipttop.css"
	rel="stylesheet" type="text/css">
	<style>
    .navbar-brand{
    width:20%;
    
    }
    </style>
</head>
 
<body>

	<%
Connection con=NewsDao.getConnection();
	String query = "select scrollnews from scroll ";
	PreparedStatement ps = con.prepareStatement(query);
	ResultSet rs = ps.executeQuery();

	String scrollnews = null;

	while (rs.next()) {
		scrollnews = rs.getString(1);

	}
	con.close();
	%>
	<div class="fixed">
		<ul class="topnav">
    <li><a href="https://www.facebook.com/profile.php?id=100090510473876"><i class="fa-brands fa-facebook"></i></a></li>
    <li><a href="https://www.instagram.com/aptit_solution/"><i class="fa-brands fa-instagram"></i></a></li>
    <li><a href="https://twitter.com/info_Aptits"><i class="fa-brands fa-twitter"></i></a></li>
      <li><a href="https://www.youtube.com/channel/UC91-ZPPRaaH98GkE10AAhcg"><i class="fa fa-youtube-play" style="font-size:30px;color:red"></i></a></li>
    <li><a href="https://employers.indeed.com/messages?hl=en&co=IN"><i class="fa-brands fa-linkedin"></i></a></li>
   
  </ul>
	</div>
	<div class="mananav">
		<div class="container">
			<div class="row">
				<div class="col-md-10">
					<span class="callnow">
						<div class="naree">

							<marquee><%=scrollnews%></marquee>
						</div>
					</span>
				</div>
				<div class="col-md-2">
					<a href="login.html"><button class="login" hidden>Login Here</button></a>
				</div>
			</div>
		</div>
	</div>

	<nav class="navbar navbar-expand-lg navbar-light fixed-top"
		style="background-color: rgb(15, 66, 88);">
		<div class="container-fluid">
			<a class="navbar-brand" href="index.html"><img
				src="images/im.jpg" class="img-fluid" alt="..."></a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-controls="navbarNav" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav ms-auto mb-2 mb-lg-0" id="nav-list">
					<li class="nav-item"><a class="nav-link" href="index.html">Home</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="about.html">About
							us</a></li>
					<li class="nav-item"><a class="nav-link" href="training.html">Trainings</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="service.html">Services</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="solution.html">Solutions</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="news.jsp">News
							& Events</a></li>
					<li class="nav-item"><a class="nav-link" href="careers.jsp">Careers</a>
					</li>
					
					<li class="nav-item"><a class="nav-link" href="gallery.jsp">Gallery</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="contactus.jsp">Contact
							Us</a></li>
					

					<li class="nav-item"><a class="nav-link" href="payment.html"><button
								class="payment" hidden>Client Payment</button></a></li>
				</ul>
			</div>
		</div>
	</nav>

	<!--text on image-->
	<div class="overview">
		<div class="inover">
			<div class="overtext">
				<a href="index.html"><span>Home</span></a>&nbsp;<i
					class="fa-solid fa-angle-right"></i>&nbsp;&nbsp;<a href="#"><span>News
						& Events</span></a>&nbsp;&nbsp;<i class="fa-solid fa-angle-right"></i>&nbsp;&nbsp;
			</div>
			<div class="company">
				<h2>NEWS & EVENTS</h2>
			</div>
		</div>
	</div>

	<!--Content-->
	<div class="container-fluid jquery sai">
		<div class="container leftside">
			<h5 class="first">
				<br> <br>
				<p width="60%" direction="right" height="100px">

					<%
					
				
					ResultSet rss;

					Connection conn=NewsDao.getConnection();

					String queryy = "select * from addnews";
					PreparedStatement st = conn.prepareStatement(queryy);

					rss = st.executeQuery(queryy);

					while (rss.next()) {
					%>
						
					<%=rss.getString("newsdate")%>
					<div class="virat">
					</div>
					
				
					<%=rss.getString("newsevents")%>

				
				
					
				<%
					}
					%>
					</p>
			</h5>
			<br>

		</div>
	</div>


	<!--FOOTER-->
	<div class="container-fluid footer"
		style="background-color: #272626; margin-top: -47px;">
		<div class="container">
			<div class="row" style="color: #fff;">

				<div class="col-md-4">
					<h3 class="footerh3">COMPANY</h3>
					<ul class="footerservice">
						<li><a href="index.html"><h5>
									<i class="fa fa-angle-right"></i>&nbsp;&nbsp;HOME
								</h5></a></li>
						<li><a href="about.html"><h5>
									<i class="fa fa-angle-right"></i>&nbsp;&nbsp;ABOUT US
								</h5></a></li>
						<li><a href="training.html"><h5>
									<i class="fa fa-angle-right"></i>&nbsp;&nbsp;TRAININGS
								</h5></a></li>
					</ul>
					<br> <br> <br> <br> <br> <br> <br>
					<br> <br> <br><br> <br><br><br><a href="refund.html"
						class="footanchor">Refund Policy</a>
				</div>

				<div class="col-md-4">
					<h3 class="footerh3">OUR SERVICES</h3>
					<ul class="footerservice">
						<li><a href="service.html"><h5>
									<i class="fa fa-angle-right"></i>&nbsp;&nbsp;SERVICES
								</h5></a></li>
						<li><a href="soltion.html"><h5>
									<i class="fa fa-angle-right"></i>&nbsp;&nbsp;SOLUTIONS
								</h5></a></li>
						<li><a href="newsandevents.html"><h5>
									<i class="fa fa-angle-right"></i>&nbsp;&nbsp;NEWS & EVENTS
								</h5></a></li>
					</ul>
					<br> <br> <br> <br> <br> <br> <br>
					<br> <br> <br><br><br><br><br> <a href="privacy.html"
						class="footanchor">Privacy Policy</a>
				</div>
<div class="col-md-4">
        <h3 class="footerh3">CONTACT INFO</h3>
        <ul class="footerservice">
          <h6>APT IT SOLUTIONS</h6><br>
          <div class="corporate">
              <h5>HYDERABAD 1:</h5>
              <prev><p>1-98/7/3/83 Vaibhav Enclave, 2nd Floor, Block-B, Arunodaya Colony, Madhapur,          Hyderabad-500081, India.
              E-mail: info@aptits.com</p></prev>
          </div>

          <div class="corporate">
              <h5>HYDERABAD 2:</h5>
              <prev><p>3rd Floor, Sahithi Arcade,
                  Besides SR Nagar Police Station,
                  S R Nagar,
                  Hyderabad 500 038,  India.</p></prev>
          </div>

          <div class="corporate">
              <h5>Branch Office:</h5>
              <prev><p>Office No: 301, 3rd Floor,
                  Walchand House Happy Colony Lane-1,
                  Warje Malwadi Rd, Kothrud, Pune, Maharashtra, India
                  Pin: 411 038</p></prev>
          </div>
          
           <div class="corporate">
              <h5>BANGALORE OFFICE:</h5>
              <prev><p>A A ARCADE" 2nd floor, Outer Ring Road
					   Opp-Kala Mandir service Road
                       Landmark: Adjacent to AIRTEL office
                       Marathahalli Bengaluru
                       560037 Karnataka,   INDIA.
                       +91 91548 29630
                       helpdesk@coepd.com</p></prev>
          </div>
        </ul> 
        <a href="termsandcondition.html" class="footanchor"style="margin-top:20px">Terms and Conditions</a>
      </div>
			</div>
		</div>
	</div>

	<!--LAST FOOTER -->
	<div class="container-fluid"
		style="background-color: black; color: #fff;">
		<div class="container">
			<div class="row lastfooter">
				<div class="col-sm-6">
					<p>© 2023 Apt It Solutions • All Rights Reserved</p>
				</div>

			</div>
		</div>
	</div>


	<a href="#" class="to-top"> <i class="fa-solid fa-chevron-up"></i>
	</a>






	<script>
    //Change navbar styles on scrolling
window.addEventListener('scroll', () =>{
    document.querySelector('nav').classList.toggle
    ('window-scroll', window.scrollY > 0)
    document.getElementById("mananav").style.display="none";
    
})
</script>


	<script>
  const toTop = document.querySelector(".to-top");

  window.addEventListener("scroll", ()=>{
    if(window.pageYOffset > 100){
      toTop.classList.add("active");
    }
    else{
      toTop.classList.remove("active");
    }
  })
</script>
</body>
</html>