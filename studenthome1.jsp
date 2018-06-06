<html>
<head>
     
<script>
$(document).ready(function() {

  $('.link').on('click', function(e){
    
    var hash = $(this).attr('href');
     $('html,body').animate({
       scrollTop: $(hash).offset().top
     }, 800);
    
    return false;
  });
})

    
</script>
<style>
    hr {
  border:none;
  height: 20px;
 	width: 30%;
	height: 50px;
	margin-top: 0;
	border-bottom: 1px solid #1f1209;
	box-shadow: 0 20px 20px -20px #333;
  margin: -50px auto -100px; 
  padding-bottom: 10px;
}
html, body {
margin:0px; padding:0px;
}

.nav {
  width: 100%;
  position: fixed;
  top: 0;
  left: 0;
 background:#414142  ;
padding-left:500px;
   

}

.nav li {
  list-style: none;
  text-align:center;
  display: inline-block;
  margin-top:3px;
  padding-right:10px;
  
}
.nav .link:hover{color:white;}

.nav .link {

  text-decoration: none;
  font-size: 17px;
  font-family: Calibri;
  color:#A8A9A9 ;
  margin: 0 10px;


}

.blocks {
  width: 100%;
  min-height: 100%;
  overflow: hidden;

}

.blocks:nth-child(1) {

 
}
.blocks:nth-child(2) {
 background:url("images/slider/bg8edit.jpg") ;
  background-position: center;
  
    background-repeat: no-repeat;
    background-size: cover;
transition:all 0.5s;
}
.blocks:nth-child(3) {
  background:url("images/slider/6833.jpg");
  color:-50%;
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
  transition:all 0.5s;
    }
.blocks:nth-child(4) {
  background:url("images/slider/bg3.jpg") ;
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
}
.blocks:nth-child(5) {
  background:url("images/slider/edit.jpg") ;
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
}
.blocks:nth-child(6) {
  background:url("images/slider/bg7e.jpg") ;
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
}
.blocks:nth-child(7) {
      background:url("images/slider/bg3.jpg") ;
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
}
        <!--
.style1 {color: #000099}
.style2 {color: #000000}
.style3 {color: #0000CC}
-->

</style>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <link href="css/js-image-slider.css" rel="stylesheet" type="text/css" />
    <script src="js/js-image-slider.js" type="text/javascript"></script>
      <link href="css/menu.css" rel="stylesheet" type="text/css" />
      <link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico">
</head>
<body>
     <div class="container">
      <div class="header" style="position:fixed;background:#414142;" >
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
               
             <!-- contact ends-->
            <!-- contact begins-->
           <div class="contact">
                <a href="index.html"><img src="images/login.png" /></a>
              <a href="index.html"> <p>Logout</p></a> 
          </div>
         <!-- contact ends-->
        </div>
      <!-- head top ends-->
      <!-- head bottom begins-->
        <div class="headbottom">
           <!-- menu begins-->
            <div class="menu">
               <ul id="nav">
        <li><a href="#bloco1" class="link"><b>Home</b></a></li>
    <li><a href="#bloco2" class="link"><b>Placements</b></a></li>
    <li><a href="#bloco3" class="link"><b>Books</b></a></li>
	<li><a href="#bloco4" class="link"><b>workshops/conferences</b></a></li>
	<li><a href="#bloco5" class="link"><b>useful websites</b></a></li>
        <li><a href="#bloco6" class="link"><b>Todo</b></a></li>
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
   

<div class="blocks" id="bloco1">
    <div class="page1">
        <div style="margin:225px auto auto;color:#303030;text-shadow: 0px 0px 6px grey; font-size:70px; text-align:center;font-family:TimeBurner;" ><a href="" style="color:#303030"><b>WELCOME<BR> TO<BR> STUDENT ACADEMY</b><HR></a>
            <h6 style=" color: black"><b><center>WELCOME <%= session.getAttribute("theName") %></center></b></h6>
</div>
        
    </div>
         

  </div>
         <div class="blocks"  id="bloco2" > <div style="margin:200px auto auto;color:#303030;text-shadow: 0px 0px 6px grey; font-size:70px; text-align:center;font-family:TimeBurner;" ><a href="placeselect.html" style="color:#303030"><b>APPLY<BR> FOR<BR> PLACEMENTS</b><HR><br><text style="font-size:40px">here<text></a>
                 
</div>
         </div>
<div class="blocks" id="bloco3">  
    <div style="margin:200px auto auto;color:#303030;text-shadow: 0px 0px 6px grey; font-size:70px; text-align:center;font-family:TimeBurner;" ><a href="bookselect.html" style="color:#303030"><b>SEARCH<BR> FOR<BR> BOOKS</b><HR><br><text style="font-size:40px">here<text></a>
</div>
</div>
<div class="blocks" id="bloco4">
    <div style="margin:150px auto auto;color:#303030;text-shadow: 0px 0px 6px grey; font-size:70px; text-align:center;font-family:TimeBurner;" ><a href="wandc.jsp" style="color:#303030"><b>VIEW<BR>WORKSHOPS<BR> AND<BR> CONFERENCES</b><HR><br><text style="font-size:40px">here<text></a>
</div>
    
</div>
         <div class="blocks" id="bloco5">
              <div style="margin:150px auto auto;color:#303030;text-shadow: 0px 0px 6px grey; font-size:70px; text-align:center;font-family:TimeBurner;" ><a href="stuwebsites.jsp" style="color:#303030"><b>VIEW<BR>USEFUL<BR> WEBSITES</b><HR><br><text style="font-size:40px">here<text></a>
</div>
         </div>
<div class="blocks" id="bloco6">
    <div style="margin:150px auto auto;color:#303030;text-shadow: 0px 0px 6px grey; font-size:70px; text-align:center;font-family:TimeBurner;" ><a href="todo1.jsp" style="color:#303030"><b>VIEW<BR>YOUR<BR> TO DO<BR> SCHEDULE</b><HR><br><text style="font-size:40px">here<text></a>
</div>
    
</div>
     
     
     
     
     
     </div>
</body>

