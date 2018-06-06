 <%@ page import="java.sql.* , java.util.*" %>
<%
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    
    
         
         String cState=request.getParameter("state");
         
         Class.forName("com.mysql.jdbc.Driver");
         
         con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_academy","root","pass");
         String namee;
         if(cState.equals("FirstYear")){
            String selsql="select book_name,author,subject,link from booksite where semester=?";
             ps=con.prepareStatement(selsql);
             namee="1";
                       ps.setString(1,namee);
                       rs=ps.executeQuery();
         }
         else if(cState.equals("TwoOne")){
             String selsql="select book_name,author,subject,link from booksite where semester=?";
             ps=con.prepareStatement(selsql);
             namee="2,1";
                       ps.setString(1,namee);
                       rs=ps.executeQuery();
         }
          else if(cState.equals("TwoTwo")){
             String selsql="select book_name,author,subject,link from booksite where semester=?";
             ps=con.prepareStatement(selsql);
             namee="2,2";
                       ps.setString(1,namee);
                       rs=ps.executeQuery();
         }
          else if(cState.equals("ThreeOne")){
            String selsql="select book_name,author,subject,link from booksite where semester=?";
             ps=con.prepareStatement(selsql);
             namee="3,1";
                       ps.setString(1,namee);
                       rs=ps.executeQuery();
         }
          else if(cState.equals("ThreeTwo")){
             String selsql="select book_name,author,subject,link from booksite where semester=?";
             ps=con.prepareStatement(selsql);
             namee="3,2";
                       ps.setString(1,namee);
                       rs=ps.executeQuery();
         }
          else if(cState.equals("FourOne")){
             String selsql="select book_name,author,subject,link from booksite where semester=?";
             ps=con.prepareStatement(selsql);
             namee="4,1";
                       ps.setString(1,namee);
                       rs=ps.executeQuery();
         }
          else {
             String selsql="select book_name,author,subject,link from booksite where semester=?";
             ps=con.prepareStatement(selsql);
             namee="4,2";
                       ps.setString(1,namee);
                       rs=ps.executeQuery();
         }
         
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
<title>Book Sites</title>

 <!-- menu begins-->
  <link href="css/menu.css" rel="stylesheet" type="text/css" />
<!-- menu ends-->
<!-- favicon generator begins--->
<!--<link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico">-->
<!-- favicon generator ends-->
<style type="text/css">
    #myBtn {
    display: none; /* Hidden by default */
    position: fixed; /* Fixed/sticky position */
    bottom: 20px; /* Place the button at the bottom of the page */
    right: 30px; /* Place the button 30px from the right */
    z-index: 99; /* Make sure it does not overlap */
    border: none; /* Remove borders */
    outline: none; /* Remove outline */
    background-color: red; /* Set a background color */
    color: white; /* Text color */
    cursor: pointer; /* Add a mouse pointer on hover */
    padding: 15px; /* Some padding */
    border-radius: 10px; /* Rounded corners */
}

#myBtn:hover {
    background-color: #555; /* Add a dark-grey background on hover */
}

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
                   <li><a href="bookshop.html">Back to panel</a>
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
    <th>Title</th>
    <th>Author</th>
    <th>Subject</th>
    <th>Link</th>
  </tr>
                      <%
                       while(rs.next())
{
%>
<tr>
    <td><%= rs.getString("book_name") %></td>
    <td><%= rs.getString("author") %></td>
    <td><%= rs.getString("subject") %></td>
    <td><a href="<%= rs.getString("link") %>" target="blank"><%= rs.getString("link") %></a></td>
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
   <script>
   window.onscroll = function() {scrollFunction()};

function scrollFunction() {
    if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
        document.getElementById("myBtn").style.display = "block";
    } else {
        document.getElementById("myBtn").style.display = "none";
    }
}

// When the user clicks on the button, scroll to the top of the document
function topFunction() {
    document.body.scrollTop = 0; // For Chrome, Safari and Opera 
    document.documentElement.scrollTop = 0; // For IE and Firefox
} </script>
   <button onclick="topFunction()" id="myBtn" title="Go to top">Top</button>
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
