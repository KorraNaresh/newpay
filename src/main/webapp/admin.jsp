<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<%@page import="com.rs.fer.ex.EnduserDao,com.rs.fer.ex.*,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admin Panel</title>
<link rel="stylesheet" href="admin.css" type="text/css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>

</head>
<body>
	<div class="container-fluid admin">
		<div class="container">
			<h1 style="text-align: center; border-bottom: 1px solid #ddd;">Admin
				Panel</h1>
			<div class="naresh">

				<div class="row">

					<div class="col-sm-1">
						<a href="index.html"><img alt="" src="images/im.jpg"
							width="100%" height="100%" class="king"></a>
					</div>

					<div class="col-sm-1">
						<div class="news">
							<button class="tablink" onclick="openTab('tab1')">
								News&<br>Events
							</button>
						</div>
					</div>
					<div class="col-sm-1">
						<div class="events">
							<button class="tablink" onclick="openTab('tab2')">Careers</button>
						</div>
					</div>


					<div class="col-sm-1">
						<div class="careers">
							<button class="tablink" onclick="openTab('tab3')">Gallery</button>
						</div>
					</div>


					<div class="col-sm-1">
						<div class="userresponse">
							<button class="tablink" onclick="openTab('tab4')">User<br>Response</button>
						</div>
					</div>
					
					
					<div class="col-sm-1">
						<div class="scrollnews">
						<button class="tablink" onclick="openTab('tab5')">Scroll<br>News</button>
						</div>
					</div>

					<div class="col-sm-1"></div>
					<div class="col-sm-1"></div>


<%

         String uname=null;

			Cookie cookies[] = request.getCookies();

for(Cookie c:cookies)
{
	if(c.getName().equals("uname"))
		uname=c.getValue();
}
			
			
			Connection c=NewsDao.getConnection();
			
			PreparedStatement p = c.prepareStatement("select username from adminlogin where username='"+uname+"' ");
			
			ResultSet r = p.executeQuery();
			
			String name=null;
			
			while(r.next())
			{ 
			
				name=r.getString("username");
			
			}
			

%>

           Welcome <%= name%>


				</div>
			</div>
			
		</div>
	</div>








	<div class="container">
		<div id="tab1" class="tabcontent">
			<div class="row">
				<div class="col-sm-10">
					<div class="panel-body">
						<table id="tbl-student"
							class="table table-responsive table-bordered" cellpadding="0"
							width="100%">
							<h6 class="apt">APT IT SOLUTIONS NEWS & EVENTS</h6>
							
							<%
											List<News> listt = NewsDao.getAllRecords();
											request.setAttribute("listt", listt);
											%>
							<thead>
								<tr>

									<th width="20%">NEWS DATE</th>
									<th width="40%">NEWS AND EVENTS</th>
									<th width="20%">ACTIONN</th>
								</tr>
						

							<c:forEach items="${listt}" var="u">
													<tr>
														<td>${u.getId()}</td>
														<td>${u.getNewsevents()}</td>
										

														<td><a href="editnewsform.jsp?id=${u.getId()}">Edit</a></td>
														<td><a href="deletenews.jsp?id=${u.getId()}">Delete</a></td>



													</tr>
												</c:forEach>


														
						</table>
					</div>



				</div>
				<div class="col-sm-2 addnew">
					<a href="addnewnews.jsp"><button>Addnew</button></a>
				</div>
			</div>
		</div>



<!--Gallery Page-->
		<div id="tab3" class="tabcontent">
			<div class="row">
				<div class="col-sm-10">
					<div class="panel-body">
						<table id="tbl-student"
							class="table table-responsive table-bordered" cellpadding="0"
							width="100%">
							<h6 class="apt">APT IT SOLUTIONS JOB OPENINGS</h6>
							<thead>
								<%@page import="com.rs.fer.ex.NewsDao,com.rs.fer.ex.*,java.util.*"%>
								<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
								
                            <tr>

									<th>ID</th>
									<th>Image</th>
							
									
								</tr>


<%

			Connection con =NewsDao.getConnection();
			PreparedStatement ps = con.prepareStatement("select id,image from images");
			
			ResultSet rs = ps.executeQuery();
			
			while(rs.next())
			{ 
				
	%>
	
					<tr>
					<td><%=rs.getInt("id") %></td>
					<td><img src="data:image/jpeg;base64,<%=Base64.getEncoder().encodeToString(rs.getBytes("image"))%>" width="30%"  >
					


	               <td><button><form action="UpdateImage1?id=<%=rs.getInt("id") %>" method="post"
											enctype="multipart/form-data">

											update picture <br>
											
											 <input type="file" name="file"
												multiple="multiple"><br> 
	
	
	
                              <input type="submit" value="update">
                              
										</form></button></a>
										<a href="deletelatestimage.jsp?id=<%=rs.getInt("id") %>"><button>Delete</button></a>
										</td>

	<%
}

			rs.close();
			ps.close();
			con.close();

%>
													
                <a href="galleryform.jsp"><button>Addnew</button></a>
					
					</tr>								

						</table>
					</div>
					</div>
					</div>
					</div>
					

		<!--Careers Page-->
		<div id="tab2" class="tabcontent">
			<div class="row">
				<div class="col-sm-10">
					<div class="panel-body">
						<table id="tbl-student"
							class="table table-responsive table-bordered" cellpadding="0"
							width="100%">
							<h6 class="apt">APT IT SOLUTIONS JOB OPENINGS</h6>
							
							
							
							<%
											List<Jobopening> lis = JobopeningDao.getAllRecords();
											request.setAttribute("lis", lis);
											%>
							<thead>
								<tr>

									<th>ID</th>
									<th>PhoneNumber</th>
									<th>Email</th>
																																			
									
																																			
									<th>Jobtitle</th>
									<th>Keyskills</th>
									<th>Experience</th>
									<th width="70">JobDescription</th>
			
																
									
								</tr>
						

							<c:forEach items="${lis}" var="u">
													<tr>
														<td>${u.getId()}</td>
														<td>${u.getPhoneNumber()}</td>
															<td>${u.getEmail()}</td>
													
																	<td>${u.getJobtitle()}</td>
																		<td>${u.getKeyskills()}</td>
																		<td>${u.getExperience()}</td>
																		<td>${u.getJobDescription()}</td>
							
																										

														<td><a href="editjobopeningform.jsp?id=${u.getId()}">Edit</a></td>
														<td><a href="deletejobopening.jsp?id=${u.getId()}">Delete</a></td>



													</tr>
												</c:forEach>


							</thead>							
						</table>
					</div>


				</div>
				<div class="col-sm-2 addnew">
					<a href="addnewcareers.jsp"><button>Addnew</button></a>
				</div>
			</div>
		</div>






					<!--Response Page-->
					<div id="tab4" class="tabcontent">
						<div class="row">
							<div class="col-sm-10">
								<div class="panel-body">
									<table id="tbl-student"
										class="table table-responsive table-bordered" cellpadding="0"
										width="100%">
										<h6 class="apt">APT IT SOLUTIONS JOB OPENINGS</h6>
										<thead>
											<%
											List<EndUser> list = EnduserDao.getAllRecords();
											request.setAttribute("list", list);
											%>

											<table border="1" width="90%">
												<tr>


													<th>ID</th>
													<th>Name</th>
													<th>email</th>
													<th>phone</th>
													<th> View <br>Resume</th>
													<th> Download <br>Resume</th>
													<th>Date of Application </th>
													
																							
													<th>Years of Relevant Experience</th>
													
									</tr>
												<c:forEach items="${list}" var="u">
													<tr>
														<td>${u.getId()}</td>
														<td>${u.getName()}</td>
														<td>${u.getEmail()}</td>
														<td>${u.getPhone()}</td>
														
				

														<td><a href="FileReadPdf?id=${u.getId()}">View</a></td>
														<td><a href="Resumeretrieve?id=${u.getId()}">Download</a></td>
														
														<td>${u.getSubmitdate()} ${u.getSubmittime()}</td>
                                                         <td>${u.getRelevantexperience()}</td>


													</tr>
												</c:forEach>

											</table>

											<br />
									</table>
								</div>
							</div>
						</div>



							</div>


							<!--scrollnews Page-->
							<div id="tab5" class="tabcontent">
								<div class="row">
									<div class="col-sm-10">
										<div class="panel-body">
											<table id="tbl-student"
												class="table table-responsive table-bordered"
												cellpadding="0" width="100%">
												<h6 class="apt">APT IT SOLUTIONS JOB OPENINGS</h6>
												
												
												
												<thead>
													

							      	<%@page import="com.rs.fer.ex.ScrollDao,com.rs.fer.ex.*,java.util.*"%>
								<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
							
								<%
								List<Scroll> list1 = ScrollDao.getAllRecords();
								request.setAttribute("list1", list1);
								%>
							
								<table border="1" width="100%">
								<tr>
										<th>Id</th>
										
										<th>ScrollNews</th>
										</tr>
										<c:forEach items="${list1}" var="u">  
									<tr>
										<td>${u.getId()}</td>
										<td>${u.getScrollnews()}</td>
										
										<td><a href="editscrollform.jsp?id=${u.getId()}">Edit</a></td>
										<td><a href="deletescroll.jsp?id=${u.getId()}">Delete</a></td>
										
									</tr>
									</c:forEach>
								</table>
								<br />
								</div>
								
								
								
								<div class="col-sm-2 addnew">
												<a href="scrollform.jsp"><button>Addnew</button></a>
											</div>
																				
														              	</thead>
							
																					
																		</table>
																	</div>
																	</div>
																	</div>
																	</div>
							
							
							
							<script>
								function openTab(tabName) {
									var i;
									var x = document
											.getElementsByClassName("tabcontent");
									for (i = 0; i < x.length; i++) {
										x[i].style.display = "none";
									}
									document.getElementById(tabName).style.display = "block";
								}
							</script>
</body>
</html>