
<%@page import="com.rs.fer.ex.NewsDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="java.io.PrintWriter"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<%

String name=request.getParameter("name");
String email=request.getParameter("email");
String mobile=request.getParameter("mobile");
String fathername=request.getParameter("fathername");
String dob =request.getParameter("dob");

int totalexperience=Integer.parseInt(request.getParameter("totalexperience"));
int relativeexperience=Integer.parseInt(request.getParameter("relativeexperience"));


String keyskills=request.getParameter("keyskills");
String strengths=request.getParameter("strengths");
String presentdesignation=request.getParameter("presentdesignation");
String companyaddress=request.getParameter("companyaddress");
String presentctc=request.getParameter("presentctc");
String expectedctc=request.getParameter("expectedctc");
String noticeperiod=request.getParameter("noticeperiod");


 response.setContentType("text/html;charset=UTF-8");
 
 final Part filePart = request.getPart("file");
 //String bookId = request.getParameter("bookId");

 InputStream pdfFileBytes = null;
 final PrintWriter writer = response.getWriter();

 try {

   if (!filePart.getContentType().equals("application/pdf"))
     {
                out.println("<br/> Invalid File");
                return;
     }

    else if (filePart.getSize()>1048576345 ) { //2mb
        {
       writer.println("<br/> File size too big");
       return;
        }
    }

     pdfFileBytes = filePart.getInputStream();  // to get the body of the request as binary data

     final byte[] bytes = new byte[pdfFileBytes.available()];
      pdfFileBytes.read(bytes);  //Storing the binary data in bytes array.



Connection con=NewsDao.getConnection();
String query="insert into applicationform(name,email,phone,fathername,dob,totalexperience,relevantexperience,keyskills,strengths,presentdesignation,companyadress,presentctc,expectedctc,noticeperiod,uploadresume)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
PreparedStatement st=con.prepareStatement(query);
st.setString(1, name);
st.setString(2, email);
st.setString(3, mobile);
st.setString(4, fathername);
st.setString(5, dob);

st.setInt(6, totalexperience);
st.setInt(7, relativeexperience);

st.setString(8, keyskills);
st.setString(9, strengths);
st.setString(10, presentdesignation);
st.setString(11, companyaddress);
st.setString(12, presentctc);
st.setString(13, expectedctc);
st.setString(14, noticeperiod);
st.setBytes(15, bytes);


 int apply=st.executeUpdate();
}
catch(Exception e)
{
System.out.println(e);
}




	 %>
	 
	 
	 <script>  
alert("Thanks for Submitting Your Details");

</script>
</body>
</html>