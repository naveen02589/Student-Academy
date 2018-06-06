<!DOCTYPE html>
<%@page import="java.sql.*" %>
<%
                  Connection con;
                  PreparedStatement ps;
                  ResultSet rs;
                 String a[]=new String[100];
                 int ind=-1;
                       Class.forName("com.mysql.jdbc.Driver");
                       con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_academy","root","pass");
                       String namee= session.getAttribute("theName").toString() ;
                       String selsql="select b.name,a.rno,b.branch,b.email,c.cgpa from resumee c,stucomp a,studetails b where a.rno=b.rno and a.rno=c.Rno and a.coname=?";
                       
                       ps=con.prepareStatement(selsql);
                       ps.setString(1,namee);
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
<title>Applied Students</title>

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
                   <li><a href="comphome.jsp">Back to panel</a>
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
    <center>
    <table style="width:90%">
  <tr>
    <th>Name</th>
    <th>Rno</th>
    <th>Branch</th>
    <th>Email</th>
    <th>Cgpa</th>
    <th>CV</th>
  </tr>
                      <%
                       while(rs.next())
{
a[++ind]=rs.getString("rno");
%>
<tr>
    <td><%= rs.getString("name") %></td>
    <td><%= rs.getString("rno") %></td>
    <td><%= rs.getString("branch") %></td>
    <td><%= rs.getString("email") %></td>
    <td><%= rs.getString("cgpa") %></td>
            <td> <form target="blank" action="FileReadPdf" method="get" name="form" enctype="multipart/form-data">
                    <button type="submit" name="submit" value="<%= rs.getString("rno") %>"  >Resume</button>
                    
        </form></td>
    
</tr>
<%
}
%>
    </table>
    </center>
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
