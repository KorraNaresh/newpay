<%@page import="com.rs.fer.ex.NewsDao"%>
<%@page import="java.sql.*" %>
  <%@ page import="java.sql.*,java.util.*,java.util.Date,java.time.LocalDate,java.time.LocalDateTime,java.time.LocalTime"%>
 
<%
    if(request.getParameter("submit")!=null)
    {
    	
    	

    	LocalDate ld=LocalDate.now();
    	java.sql.Date sqlDate = java.sql.Date.valueOf( ld );

    	LocalDateTime localDateTime = LocalDateTime.now();
    	LocalTime localTime = localDateTime.toLocalTime();
    	java.sql.Time time = java.sql.Time.valueOf(localDateTime.toLocalTime());
    	
    	
    	
        String id = request.getParameter("id");
        String newsdate = request.getParameter("newsdate");
        String news = request.getParameter("news");
        
     
        PreparedStatement pst;
        ResultSet rs;
        
        Connection con=NewsDao.getConnection();
        pst = con.prepareStatement("update addnews set newsdate = ?,news =?, submitdate=?, submittime=?  where id = ?");
        pst.setString(1, newsdate);
        pst.setString(2, news);
       
        pst.setDate(3, sqlDate);
        pst.setTime(4, time);
         pst.setString(5, id);
        pst.executeUpdate();  
        
        %>
        
        <script>  
            alert("Record Updateddddd");
            
       </script>
       
    <% 
   
    }
 
%>
<!DOCTYPE html>

<html>
<style>
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');
*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Poppins',sans-serif;
}
body{
  height: 135vh;
  display: flex;
  justify-content: center;
  align-items: center;
  padding: 10px;
  background: linear-gradient(-135deg, #71b7e6, #9b59b6);
}
.container{
  max-width: 700px;
  width: 100%;
  background-color: rgb(15, 66, 88);
  padding: 25px 30px;
  border-radius: 5px;
  box-shadow: 0 5px 10px rgba(0,0,0,0.15);
}
.container .title{
  font-size: 25px;
  font-weight: 500;
  position: relative;
  color: #fff;
}
.container .title::before{
  content: "";
  position: absolute;
  left: 0;
  bottom: 0;
  height: 3px;
  width: 30px;
  border-radius: 5px;
  background: linear-gradient(135deg, #71b7e6, #9b59b6);
}
.content form .user-details{
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
  margin: 20px 0 12px 0;
}
form .user-details .input-box{
  margin-bottom: 15px;
  width: calc(100% / 2 - 20px);
}
form .input-box label.details{
  display: block;
  font-weight: 500;
  margin-bottom: 5px;
  color: #fff;
}
.user-details .input-box input{
  height: 45px;
  width: 100%;
  outline: none;
  font-size: 16px;
  border-radius: 5px;
  padding-left: 15px;
  border: 1px solid #ccc;
  border-bottom-width: 2px;
  transition: all 0.3s ease;
}
.user-details .input-box .news input{
  height: 200px;
  width: 100%;
  outline: none;
  font-size: 16px;
  border-radius: 5px;
  padding-left: 15px;
  border: 1px solid #ccc;
  border-bottom-width: 2px;
  transition: all 0.3s ease;
}
.form-select{
  height: 45px;
  width: 100%;
  outline: none;
  font-size: 16px;
  border-radius: 5px;
  padding-left: 15px;
  border: 1px solid #ccc;
  border-bottom-width: 2px;
  transition: all 0.3s ease;
}
.input-box .news{
	height:200px;
}
 form .category{
   display: flex;
   width: 80%;
   margin: 14px 0 ;
   justify-content: space-between;
 }
 form textarea{
 	width:100%;
 }
 form .category label{
   display: flex;
   align-items: center;
   cursor: pointer;
 }
 form .button{
   height: 45px;
   margin: 35px 0
 }
 form .button input{
   height: 100%;
   width: 50%;
   border-radius: 5px;
   border: none;
   color: #fff;
   font-size: 18px;
   font-weight: 500;
   letter-spacing: 1px;
   cursor: pointer;
   transition: all 0.3s ease;
   background-color: #000;
 }
 form .button input:hover{
  /* transform: scale(0.99); */
  background: linear-gradient(-135deg, #71b7e6, #9b59b6);
  }
.hidden{
    display:none;
}
  input:disabled::-webkit-input-placeholder {
      color:    #000;
}
 @media(max-width: 584px){
 .container{
  max-width: 100%;
}
form .user-details .input-box{
    margin-bottom: 15px;
    width: 100%;
  }
  form .category{
    width: 100%;
  }
  .content form .user-details{
    max-height: auto;
    overflow-y: scroll;
  }
  .user-details::-webkit-scrollbar{
    width: 5px;
  }
  }
  @media(max-width: 459px){
  .container .content .category{
    flex-direction: column;
  }
}
.right p{
font-color:white;

text-align:right;

}

</style>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
         <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        
        
        
    </head>

    <body>
        
                        
  <div class="container">
    <div class="title">Job Openings</div>
    <div class="content">
      <form method="POST" action="#">
        <div class="user-details">
         
           <%    
                       
                        PreparedStatement pst;
                        ResultSet rs;
        
                        Connection con=NewsDao.getConnection();
                          
                          String id = request.getParameter("id");
                          
                        pst = con.prepareStatement("select * from addnews where id = ?");
                        pst.setString(1, id);
                        rs = pst.executeQuery();
                        
                         while(rs.next())
                         {
                    
                    %>
                    
           <div class="input-box">
            <label class="details">Date</label>
            <input type="date" name="newsdate" id="newsdate" value="<%= rs.getString("newsdate")%>" required>
          </div>
          
          <div class="input-box">
            <label class="details">News & Events</label>
            <div class="news">
             <input type="text" name="news" id="news" value="<%= rs.getString("news")%>"  required>
             </div>
          </div>
         
         
            

        </div>
        <div  class="form-action-buttons">
         <input type="submit" id="submit" value="submit" name="submit" class="btn btn-info">
                       
        </div>
        <div class="right">
                            
                             <p><a href="admin.jsp">Click Back</a></p>
                            
                            
                         </div>
  
        
      </form>
    </div>





  </div>
                        <% }  %>
                    
                    
                    
                         </br>
                        
  
                
            </div>          
        </div>
  
    </body>
</html>