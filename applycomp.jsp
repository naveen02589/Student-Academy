 <%@ page import="java.sql.* , java.util.*" %>
<%
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    
    
         String rno= session.getAttribute("theRno").toString() ;
         //String cState=request.getParameter("state");
      //String rno= session.getAttribute("theRno").toString;
         Class.forName("com.mysql.jdbc.Driver");
         
         con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_academy","root","pass");
        
         
             String selsql="select * from company where cname not in(select coname from stucomp where rno=?)";
             ps=con.prepareStatement(selsql);
             
                       ps.setString(1,rno);
                       rs=ps.executeQuery();
         
        
         
        %>
        <html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>STUDENT ACADEMY</title>
        <style>
table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
}
th, td {
    padding: 10px;
}
</style>
                
</style>
    </head>
    <body>
        <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="css/style.css">
<title>APPLY FOR COMPANIES</title>

 <!-- menu begins-->
  <link href="css/menu.css" rel="stylesheet" type="text/css" />
<!-- menu ends-->
<!-- favicon generator begins--->
<!--<link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico">-->
<!-- favicon generator ends-->
<style type="text/css">
<!--
.style1 {color: #000099}
-->
</style>
</head>
<body>
<!-- container begins-->
 <div class="container">
   <!-- header begins-->
     <div class="header">
        <div class="head">
           <!-- head left begins-->
             <div class="headleft" >
              <a href="index.html" style="height:auto;width:auto;margin-left:-60px; "><img src="images/slider/logo3.png" /></a>
             </div>
           <!-- head left ends-->
          
          <!-- head right begins-->
          <div class="headright">
          <!-- head top begins-->
           <div class="headtop">
               <!-- contact begins-->
               <div class="contact">
                <a href="index.html"><img src="images/login.png" /></a>
              <a href="index.html"> <p>Logout</p></a> 
          </div>
             <!-- contact ends-->
            <!-- contact begins-->
         <!-- contact ends-->
        </div>
      <!-- head top ends-->
      <!-- head bottom begins-->
        <div class="headbottom">
           <!-- menu begins-->
            <div class="menu">
               <ul id="nav">
                   <li><a href="placeselect.html">Back to panel</a>
              </li>
            
          </ul> 
        </div>
      <!-- menu ends-->
        </div>
      <!-- head bottom ends-->
          </div>
         <!-- head right ends-->
         <div class="clear"></div>
        </div>
     </div>
   <br>
       <br>
   <!-- header ends-->
    <!-- content begins-->
    <form action="stucomp.jsp" method="post" name="form">
    <center>
    <table style="width:90%">
  <tr>
    <th>Company Name</th>
    <th>Posts</th>
    <th>Check Box</th>
  </tr>
                      <%
                       while(rs.next())
{
%>
<tr style="text-align:center;">
    <td><%= rs.getString("cname") %></td>
    <td><%= rs.getString("posts") %></td>
    <td><input type="checkbox" name="employee" value="<%= rs.getString("cname") %>"></td>
</tr>
<%
}
%>
    </table>
    <br>
                     <br>
     <span>&nbsp;</span><input type="submit" name="submit" value="Submit"/>
                 <input type="reset" name="clear" value="Clear" />
                 
            </center>     
                                        
          </form>
<br>
        <br>
    <div class="content">
      
    <!-- login right ends-->
   <div class="clear"></div>
    </div>
    <!-- footer begins-->
        <div class="footer">
          <div class="foot">
               <!-- copy right box begins-->
       <!-- <div class="copyrightbox">
           <h1>Copy Rights Reserved At  @2014 <span class="style1">SquareFour</span>Technologies. </h1>
          </div>-->
      <!-- copy right box ends-->    
   <!-- share box begins-->
          <div class="sharebox">
          <h1>Share With Us</h1>
         <a href="#"> <img src="images/facebook.png" /></a>
          <a href="#"> <img src="images/twitter.png" /></a>
         <a href="#"> <img src="images/linkedin.png" /></a>
          </div>
        <!-- share box ends-->
          </div>
          <div class="clear"></div>
        </div>
     <!-- footer ends-->
      <div class="clear"></div>
   </div>
<!-- container ends-->

</body>
</html>

    </body>
</html>
