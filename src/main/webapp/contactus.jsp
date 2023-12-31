<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.rs.fer.ex.NewsDao"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.time.LocalTime"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us</title>
    <link href="contactus.css" rel="stylesheet" type="text/css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <!--ICONS LINK-->
    <link rel="stylesheet" href="https://kit.fontawesome.com/fafd4002bd.css" crossorigin="anonymous">
    <script src="https://kit.fontawesome.com/fafd4002bd.js" crossorigin="anonymous"></script>

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script> 
    <link href='http://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>
    <link href="http://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
    
    <style>
    .navbar-brand{
    width:20%;
    
    }
    
    </style>
</head>
<body>

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
            <marquee width="100%">We transform businesses of most major sectors with powerful and adaptable digital solutions that satisfy the needs of today.</marquee>
        </div>
        </span>
      </div>
      <div class="col-md-2">
        <a href="login.html"><button class="login" hidden>Login Here</button></a>
      </div>
    </div>
  </div>
</div>

<nav class="navbar navbar-expand-lg navbar-light fixed-top" style="background-color: rgb(15, 66, 88);">
  <div class="container-fluid">
    <a class="navbar-brand" href="index.html"><img src="images/im.jpg" class="img-fluid" alt="..."></a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">          
          <ul class="navbar-nav ms-auto mb-2 mb-lg-0" id="nav-list">
            <li class="nav-item">
              <a class="nav-link" href="index.html">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="about.html">About us</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="training.html">Trainings</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="service.html">Services</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="solution.html">Solutions</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="news.jsp">News & Events</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="careers.jsp">Careers</a>
            </li>
             <li class="nav-item">
              <a class="nav-link" href="gallery.jsp">Gallery</a>
            </li>
  
            <li class="nav-item">
              <a class="nav-link" href="contactus.html">Contact Us</a>
            </li>
           
            <li class="nav-item">
              <a class="nav-link" href="payment.html"><button class="payment" hidden>Client Payment</button></a>
            </li>
          </ul>
      </div>
  </div>
</nav>
<!--text on image-->
<div class="overview">
<div class="inover">
  <div class="overtext">
    <a href="index.html"><span>Home</span></a>&nbsp;<i class="fa-solid fa-angle-right"></i>&nbsp;&nbsp;<a href="contactus.html"><span>Contact Us</span></a>&nbsp;&nbsp;<i class="fa-solid fa-angle-right"></i>&nbsp;&nbsp;
  </div>
  <div class="company">
    <h2>Contact Us</h2>
    </div>
</div>
</div>


<!--Cards-->
<div class="container">
    <div class="connect">
        <div class="row">
            <div class="col-md-4">
                <div class="card">
                    <div class="space">
                    <i class="fa-solid fa-message"></i>
                    <h1>Chat With Us</h1>
                    <p class="conpara">We've got live Experts waiting to help you monday to Saturday from 9am to 6pm IST.</p>
                    <p><a href=""><button class="connectbtn">Chat With Us</button></a></p>
                </div>
                  </div>
            </div>

            <div class="col-md-4">
                <div class="card">
                    <div class="space">
                    <i class="fa-solid fa-envelope"></i>
                    <h1>Email Us</h1>
                    <p class="conpara">Mail us at <b>info@aptits.com</b> and you'll receive a reply within 24 hours</p>
                    <p><a href="mailto:info@aptits.com"><button class="connectbtn">Email us</button></a></p>
                </div>
                  </div>
            </div>

            <div class="col-md-4">
                <div class="card">
                    <div class="space">
                    <i class="fa-solid fa-phone"></i>
                    <h1>Give us a call</h1>
                    <p class="conpara">Give us a ring.Our Experts are standing by monday to Saturday from 9am to 6pm IST.</p>
                    <p><a href="tel:8712655800"><button class="connectbtn">8712655800</button></a></p>
                </div>
                  </div>
            </div>
        </div>
        
    </div>
</div>

<!--Form Section-->

<div class="container belowcard">
    <div class="title">Talk to Our Concern Department Team</div>
    <div class="row">
    <div class="col-lg-7 formsec">
    
    <div class="content">
      <form action="contactus.jsp" method="post">
        <div class="user-details">
          <div class="input-box">
            <span class="details">First Name</span>
            <input type="text" placeholder="Enter your First name"  name="firstname" required>
          </div>
          <div class="input-box">
            <span class="details">Last Name</span>
            <input type="text" placeholder="Enter your Last name" name="lastname" required>
          </div>
          <div class="input-box">
            <span class="details">Phone Number</span>
            <input type="text" placeholder="Enter your Phone Number" name="phone" required>
          </div>
          <div class="input-box">
            <span class="details">Email</span>
            <input type="text" placeholder="Enter your email"  name="email" required>
          </div>
          <div class="input-box">
            <span class="details">Message</span>
            <textarea  id="" cols="40" rows="5" placeholder="How can we help you" name="message"></textarea>
          </div>
        </div>
        <div class="button"><a href="contactus.jsp"></a>
            <input type="submit" value="Get In Touch">
          </div>
        </form>
    </div>
      </div>

      <div class="col-lg-5 formimg">
      <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d934.2285549168514!2d78.3866382!3d17.445354599999998!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bcb915fd669b1ed%3A0xf439b741ece12726!2z4LC54LC_4LCw4LGH4LCq4LGN4LCw4LGLIOCwleCwqOCxjeCwuOCwsuCxjeCwn-CxhuCwqOCxjeCwuOCxgA!5e1!3m2!1ste!2sin!4v1679037766578!5m2!1ste!2sin" width="100%" height="100%" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
    </div>
    </div>
    </div>

<!--FOOTER-->
<div class="container-fluid footer" style="background-color: #272626;  margin-top: -47px;">
  <div class="container">
    <div class="row" style="color: #fff;">

      <div class="col-md-4">
        <h3 class="footerh3">COMPANY</h3>
        <ul class="footerservice">
          <li><a href="index.html"><h5><i class="fa fa-angle-right"></i>&nbsp;&nbsp;HOME</h5></a></li>
          <li><a href="about.html"><h5><i class="fa fa-angle-right"></i>&nbsp;&nbsp;ABOUT US</h5></a></li>
          <li><a href="training.html"><h5><i class="fa fa-angle-right"></i>&nbsp;&nbsp;TRAININGS</h5></a></li>
        </ul>
          <br><br><br><br><br><br><br><br><br><br><br><br><br>
        <a href="refund.html" class="footanchor">Refund Policy</a>
      </div>

      <div class="col-md-4">
        <h3 class="footerh3">OUR SERVICES</h3>
        <ul class="footerservice">
          <li><a href="service.html"><h5><i class="fa fa-angle-right"></i>&nbsp;&nbsp;SERVICES</h5></a></li>
          <li><a href="soltion.html"><h5><i class="fa fa-angle-right"></i>&nbsp;&nbsp;SOLUTIONS</h5></a></li>
          <li><a href="newsandevents.html"><h5><i class="fa fa-angle-right"></i>&nbsp;&nbsp;NEWS & EVENTS</h5></a></li>
        </ul> <br><br><br><br><br><br><br><br><br><br><br><br><br>
        <a href="privacy.html" class="footanchor">Privacy Policy</a>
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
        </ul><br>
        <a href="termsandcondition.html" class="footanchor" style="margin-bottom:50px">Terms and Conditions</a>
      </div>
    </div>
  </div>
</div>

<!--LAST FOOTER -->
<div class="container-fluid" style="background-color: black; color: #fff;">
  <div class="container">
    <div class="row lastfooter">
      <div class="col-sm-6">
        <p>© 2023 Apt It Solutions • All Rights Reserved</p>
      </div>

      
    </div>
  </div>
</div>


<a href="#" class="to-top">
  <i class="fa-solid fa-chevron-up"></i>
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


<% 
LocalDate id=LocalDate.now();
java.sql.Date sqlDate = java.sql.Date.valueOf( id );

LocalDateTime localDateTime = LocalDateTime.now();
LocalTime localTime = localDateTime.toLocalTime();
java.sql.Time time = java.sql.Time.valueOf(localDateTime.toLocalTime());

String firstname=request.getParameter("firstname");
String lastname=request.getParameter("lastname");
String phonenumber=request.getParameter("phone");
String email=request.getParameter("email");
String message=request.getParameter("message");

Connection con=NewsDao.getConnection();
String s="insert into contactusform  (firstname,lastname,phone,email,message,submitdate,submittime)values(?,?,?,?,?,?,?)";
PreparedStatement st=con.prepareStatement(s);


st.setString(1, firstname);
st.setString(2, lastname);
st.setString(3, phonenumber);
st.setString(4, email);
st.setString(5, message);
st.setDate(6, sqlDate);
st.setTime(7, time);

int i= st.executeUpdate();
%>
</body>
</html>