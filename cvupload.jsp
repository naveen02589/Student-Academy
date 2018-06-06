<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CV UPLOAD PANEL</title>
    </head>
    <body>
       

        
<link rel="stylesheet" type="text/css" href="css/style.css">


 <!-- menu begins-->
  <link href="css/menu.css" rel="stylesheet" type="text/css" />


<script language="javascript">
    function check()
    {
        //var emailRegex =/^[A-Za-z0-9._]*\@[A-Za-z]*\.[A-Za-z]{2,5}$/;
        //var numericExpression = /^[0-9]{10}$/;

        var ccgpa=document.form.ccgpa.value;
        var crno=document.form.rno.value;
        //var cbranch=document.form.branch.value;
        //var cemail=document.form.email.value;
        //var cpassword=document.form.pass.value;
        //var cmobile=document.form.mobile.value;
        //var cgender=document.form.gen.value;
        //var cbirth=document.form.dob.value;
        //var caddress=document.form.address.value;
        //var ccity=document.form.city.value;
        var ccv=document.form.ccv.value;
        //var cinternship=document.form.internship.value;
       // var cdescription=document.form.description.value;
        
        if(ccgpa=="")
        {
            alert("please enter your cgpa");
            document.form.name.focus();
            return false;
        }
        else if(ccv=="")
        {
            alert("please upload your CV");
            document.form.email.focus();
            return false;
        }
         else if(crno=="")
        {
            alert("please enter your rno");
            document.form.email.focus();
            return false;
        }
        else if(!numericExpression.test(ccgpa))
        {
            alert("please enter valid mobile number");
            document.form.mobile.focus();
            return false;
        }
        
        return true;
    }
</script>


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
   <!-- header ends-->
    <!-- content begins-->
    <div class="content">
      <h1 id="about">Update CV and cgpa</h1><div class="clear"></div><hr class="hr1" />
      <!-- login left begins-->
      <div class="loginleft">
    
      <!-- registration box begins-->
           <div class="registrationbox">
            
              <p><b>Candidate Information:</b></p>
               <form action="FileUpload" method="post" name="form" enctype="multipart/form-data">
                   <span>Roll Number: </span><input type="text" name="rno" /><div class="clear"></div>
                 <span>cgpa: </span><input type="text" name="ccgpa" /><div class="clear"></div>
                 <span>CV: </span><input type="file" name="ccv" id="file" /><div class="clear"></div>
                 
                 
                 
                 <span>&nbsp;</span><input type="submit" name="submit" value="Submit"  onclick="return check();"/>
                 <input type="reset" name="clear" value="Clear" />
                 
                                        
          </form>
             
           </div>
         <!-- registration  box ends-->
     </div>
    <!-- login left ends-->
    <!-- login right begins-->
     <div class="loginright">
      <img src="images/register.jpg" />
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
