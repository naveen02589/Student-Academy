<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Company</title>
    </head>
    <body>
        <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="css/style.css">



 <!-- menu begins-->
  <link href="css/menu.css" rel="stylesheet" type="text/css" />




</head>
<body>
    
<!-- container begins-->
 <div class="container">
   <!-- header begins-->
     <div class="header">
        <div class="head">
           <!-- head left begins-->
             <div class="headleft">
              <a href="index.html" style="height:auto;width:auto;margin-left:-60px;"><img src="images/slider/logo3.png" /></a>
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
                   <li><a href="index.html">Back to panel</a>
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
   <!-- header ends-->
    <!-- content begins-->
    <div class="content">
        <h3>  <b> <center>WELCOME <%= session.getAttribute("theName") %></center></b></h3>
      <!-- h1 id="about"></h1---><div class="clear"></div><hr class="hr1" />
      <!-- login left begins-->
      <div class="loginleft">
    <!-- login box begins-->
      <div class="loginbox">
        <form action="#" method="post" enctype="multipart/form-data">
            <p><span>View Applied Students:</span><input type="radio" name="radio1"value="" id="username" onclick="document.location.href='compstu.jsp'"/></p>
            <p><span>Shortlist Students:</span><input type="radio" name="radio1"value="" id="username" onclick="document.location.href='compshrt.html'"/></p>
            
        </form>
          <div class="clear"></div>
      </div>
    <!-- login box ends-->
     </div>
    <!-- login left ends-->
    <!-- login right begins-->
     <div class="loginright">
      <img src="images/login.jpg" />
     </div>
    <!-- login right ends-->
   <div class="clear"></div>
    </div>
     <!-- content ends-->
    <!-- footer begins-->
        <div class="footer">
          <div class="foot">
               
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
