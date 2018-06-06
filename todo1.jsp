
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Date"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <link href="css/js-image-slider.css" rel="stylesheet" type="text/css" />
    <script src="js/js-image-slider.js" type="text/javascript"></script>
      <link href="css/menu.css" rel="stylesheet" type="text/css" />
      <link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico">
      <style>
          p{
              padding-top: 20px;
          }
          #content1,#content2,#content3,#content4,#content5,#content6 {
              padding-top:10px;
                
          }
          button{
             height:30px;
             width: 100%;
             background-color:#2E2F2F;
            
             border:none;
             border-radius: 4px;
  
          }
          button a{
              color:white;
              font-size: 15px;
              font-family: candara;
          }
          ul {
  margin: 0;
  padding: 0;
  list-style-type: none;
}

/* Style the list items */
ul li {
  cursor: pointer;
  position: relative;
  width:80%;

  
  padding: 12px 8px 12px 40px;
  background: #eee;
  font-size: 18px;
  transition: 0.2s;
  
  /* make the list items unselectable */
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
}

/* Set all odd list items to a different color (zebra-stripes) */
ul li:nth-child(odd) {
  background: #f9f9f9;
}

/* Darker background-color on hover */
ul li:hover {
  background: #ddd;
}

/* When clicked on, add a background color and strike out text */
ul li.checked {
  background: #888;
  color: #fff;
  text-decoration: line-through;
}

/* Add a "checked" mark when clicked on */
ul li.checked::before {
  content: '';
  position: absolute;
  border-color: #fff;
  border-style: solid;
  border-width: 0 2px 2px 0;
  top: 10px;
  left: 16px;
  transform: rotate(45deg);
  height: 15px;
  width: 7px;
}

/* Style the close button */
.close {
  position: absolute;
  right: 0;
  top: 0;
  padding: 12px 16px 12px 16px;
}

.close:hover {
  background-color: #f44336;
  color: white;
}

/* Style the header */
.header1 {
  background-color: #015B6E;
  padding: 20px 5px;
  color: white;
  text-align: center;
}

/* Clear floats after the header */
.header1:after {
  content: "";
  display: table;
  clear: both;
}

/* Style the input */
input {
  border: none;
  width: 70%;
  padding: 5px;
  float: left;
  font-size: 16px;
  margin:0;
}

/* Style the "Add" button */
.addBtn {
  padding: 5px;
  margin:0;
  width:20%;
  background: #d9d9d9;
  color: #555;
  float: left;
  text-align: center;
  font-size: 16px;
  cursor: pointer;
  transition: 0.3s;
}

.addBtn:hover {
  background-color: #bbb;
}

          
          
          
          
          
          
          
          
          
          .containe {
  display:flex;
 
   height:auto;
   position: absolute;
      width: 100%;

}
.containe > div {
  margin:5px;
  background-color:white;
     box-shadow: 0px 0px 5px 0px grey;
      height:auto;
        width: 100%;
  
}
.first {

  text-align: center;
     
}
.text{
background-color:white;
border:1px solid #7FB3D5; 
border-radius:2px;
padding:10px;
color:grey;
position: relative;
width:70%;
border-left:  solid #2471A3;

}


      </style>
          </head>
    <body>
        
<script>
    var i1 = 0;
var i2 = 0;
var i3 = 0;
var i4 = 0;
var i5 = 0;
var i6 = 0;

// Create a new list item when clicking on the "Add" button


            function addElement1() {
               i1++;
    var objNewDiv = document.createElement('div');
    objNewDiv.setAttribute('id', 'mon' + i1);
    objNewDiv.innerHTML =  ' <input type="text" id="mon' + i1 + '" style="margin-left: 5px; width:90%;border-style: solid;border-width: 1px;margin-bottom:2px;" name="mon' + i1 + '"/>';
    document.getElementById('content1').appendChild(objNewDiv);
}
function removeElement1() {
    if(0 < i1) {
        document.getElementById('content1').removeChild(document.getElementById('mon' + i1));
        i1--;
    } else {
        alert("No textbox to remove");
    }

}

            function addElement2() {
               i2++;
    var objNewDiv = document.createElement('div');
    objNewDiv.setAttribute('id', 'tue' + i2);
    objNewDiv.innerHTML =  ' <input type="text" id="tue' + i2 + '" style="margin-left: 5px; width:90%;border-style: solid;border-width: 1px;margin-bottom:2px;" name="tue' + i2 + '"/>';
    document.getElementById('content2').appendChild(objNewDiv);
}
function removeElement2() {
    if(0 < i2) {
        document.getElementById('content2').removeChild(document.getElementById('tue' + i2));
        i2--;
    } else {
        alert("No textbox to remove");
    }

}

           function addElement3() {
               i3++;
    var objNewDiv = document.createElement('div');
    objNewDiv.setAttribute('id', 'wed' + i3);
    objNewDiv.innerHTML =  ' <input type="text" id="wed' + i3 + '" style="margin-left: 5px; width:90%;border-style: solid;border-width: 1px;margin-bottom:2px;" name="wed' + i3 + '"/>';
    document.getElementById('content3').appendChild(objNewDiv);
}
function removeElement3() {
    if(0 < i3) {
        document.getElementById('content3').removeChild(document.getElementById('wed' + i3));
        i3--;
    } else {
        alert("No textbox to remove");
    }

}

          function addElement4() {
               i4++;
    var objNewDiv = document.createElement('div');
    objNewDiv.setAttribute('id', 'thu' + i4);
    objNewDiv.innerHTML =  ' <input type="text" id="thu' + i4 + '" style="margin-left: 5px; width:90%;border-style: solid;border-width: 1px;margin-bottom:2px;" name="thu' + i4 + '"/>';
    document.getElementById('content4').appendChild(objNewDiv);
}
function removeElement4() {
    if(0 < i4) {
        document.getElementById('content4').removeChild(document.getElementById('thu' + i4));
        i4--;
    } else {
        alert("No textbox to remove");
    }  

}

    
          function addElement5() {
               i5++;
    var objNewDiv = document.createElement('div');
    objNewDiv.setAttribute('id', 'fri' + i5);
    objNewDiv.innerHTML =  ' <input type="text" id="fri' + i5 + '" style="margin-left: 5px; width:90%;border-style: solid;border-width: 1px;margin-bottom:2px;" name="fri' + i5 + '"/>';
    document.getElementById('content5').appendChild(objNewDiv);
}
function removeElement5() {
    if(0 < i5) {
        document.getElementById('content5').removeChild(document.getElementById('fri' + i5));
        i5--;
    } else {
        alert("No textbox to remove");
    }}
            
                 function addElement6() {
               i6++;
    var objNewDiv = document.createElement('div');
    objNewDiv.setAttribute('id', 'sat' + i6);
    objNewDiv.innerHTML =  ' <input type="text" id="sat' + i6 + '" style="margin-left: 5px; width:90%;border-style: solid;border-width: 1px;margin-bottom:2px;" name="sat' + i6 + '"/>';
    document.getElementById('content6').appendChild(objNewDiv);
}
function removeElement6() {
    if(0 < i6) {
        document.getElementById('content6').removeChild(document.getElementById('sat' + i6));
        i6--;
    } else {
        alert("No textbox to remove");
    }}
        
</script>



            
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
                <a href="login.html"><img src="images/login.png" /></a>
              <a href="index.html"> <p>Logout</p></a> 
              
          </div>
         <!-- contact ends-->
        </div>
      <!-- head top ends-->
      <!-- head bottom begins-->
        <div class="headbottom">
           <!-- menu begins-->
            <div class="menu">
               <ul  id="nav">
                  <li style="  background:#015B6E;"><a href="index.html">home</a></li>
               <li style="  background:#015B6E;"><a href="studenthome1.jsp">back to panel</a></li>
              
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

       
   <form action="todo3.jsp" method="post" name="form">
       
    <%   
       java.util.Date d = new java.util.Date();
         SimpleDateFormat ft = new SimpleDateFormat ("E");
         String date=ft.format(d); 
         System.out.println(date);
           
   %>
    <%Class.forName("com.mysql.jdbc.Driver");
         Connection con;
    Statement s;
         con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_academy","root","pass");
         PreparedStatement ps;
                  ResultSet rs;
                  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_academy","root","pass");
                       String rno=session.getAttribute("theRno").toString();
                        
 %>
<div class="containe">
  <div class="first" style="<%if(date.equals("Mon")){%>background-color:#1A5276;<%}%>"><p style="font-family:candara;font-size:25px;text-align:center;<%
  
if(date.equals("Mon")){%>color:white;<%}else{%>
  color:black;<%}%>text-decoration:none;"> <b>Monday</b></p>
       
                     
 
       <center>
                       
           <button ><a href="javascript:void(0);" onclick="addElement1();">Add Option</a></button><br>
           <button ><a href="javascript:void(0);" onclick="removeElement1();">Remove Option</a></button><br>
           <div id="content1" style="width:100%">
                <%String selsql="select * from todo where day='Monday' and rno='"+rno+"'";
                       
                       ps=con.prepareStatement(selsql);
                       
                       rs=ps.executeQuery();
                                     while(rs.next())
                      {%><script>i1++;</script>
             <input type="text" style="margin-left: 5px; width:90%;border-style: solid;border-width: 1px;margin-bottom:2px;" value="<%=rs.getString("name")%>"  id="mon"/>
             <script>var divid = document.getElementById('mon');
                 divid.id = 'mon'+i1;
             divid.name='mon'+i1   </script>
                 
            <%   }
%>
          </div>
             
                   </center>
  </div>
 
  <div class="first" style="<%if(date.equals("Tue")){%>background-color:#015B6E ;<%}%>"><p style="font-family:candara;font-size:25px;text-align:center;<%
 
if(date.equals("Tue")){%>color:white;<%}else{%>
  color:black;<%}%>text-decoration:none;"> <b>Tuesday</b></p>
   
       <center>
                       
           <button ><a href="javascript:void(0);" onclick="addElement2();">Add Option</a></button><br>
           <button ><a href="javascript:void(0);" onclick="removeElement2();">Remove Option</a></button><br>
           <div id="content2" style="width:100%">
               
               <% selsql="select * from todo where day='Tuesday' and rno='"+rno+"'";
                       
                       ps=con.prepareStatement(selsql);
                       
                       rs=ps.executeQuery();
                                     while(rs.next())
                      {%><script>i2++;</script>
             <input type="text" style="margin-left: 5px; width:90%;border-style: solid;border-width: 1px;margin-bottom:2px;" value="<%=rs.getString("name")%>"  id="tue"/>
             <script>var divid = document.getElementById('tue');
                 divid.id = 'tue'+i2;
             divid.name='tue'+i2;   </script>
                 
            <%   }
%>
               
               
           </div>
                   </center>
  </div>
  <div class="first" style="<%if(date.equals("Wed")){%>background-color:#015B6E;<%}%>"><p style="font-family:candara;font-size:25px;text-align:center;<%
 
if(date.equals("Wed")){%>color:white;<%}else{%>
  color:black;<%}%>text-decoration:none;"> <b>Wednesday</b></p>
   
       <center>
                       
           <button ><a href="javascript:void(0);" onclick="addElement3();">Add Option</a></button><br>
           <button ><a href="javascript:void(0);" onclick="removeElement3();">Remove Option</a></button><br>
           <div id="content3" style="width:100%">
               
                  <% selsql="select * from todo where day='Wednesday' and rno='"+rno+"'";
                       
                       ps=con.prepareStatement(selsql);
                       
                       rs=ps.executeQuery();
                                     while(rs.next())
                      {%><script>i3++;</script>
             <input type="text" style="margin-left: 5px; width:90%;border-style: solid;border-width: 1px;margin-bottom:2px;" value="<%=rs.getString("name")%>"  id="wed"/>
             <script>var divid = document.getElementById('wed');
                 divid.id = 'wed'+i3;
             divid.name='wed'+i3;   </script>
                 
            <%   }
%>
               
           </div>
                   </center>

  </div>
  <div class="first" style="<%if(date.equals("Thu")){%>background-color:#015B6E;<%}%>"><p style="font-family:candara;font-size:25px;text-align:center;<%
 
if(date.equals("Thu")){%>color:white;<%}else{%>
  color:black;<%}%>color:black;text-decoration:none;"> <b>Thursday</b></p>
  

       <center>
                       
           <button ><a href="javascript:void(0);" onclick="addElement4();">Add Option</a></button><br>
           <button ><a href="javascript:void(0);" onclick="removeElement4();">Remove Option</a></button><br>
           <div id="content4" style="width:100%">
               
                <% selsql="select * from todo where day='Thursday' and rno='"+rno+"'";
                       
                       ps=con.prepareStatement(selsql);
                       
                       rs=ps.executeQuery();
                                     while(rs.next())
                      {%><script>i4++;</script>
             <input type="text" style="margin-left: 5px; width:90%;border-style: solid;border-width: 1px;margin-bottom:2px;" value="<%=rs.getString("name")%>"  id="thu"/>
             <script>var divid = document.getElementById('thu');
                 divid.id = 'thu'+i4;
             divid.name='thu'+i4;   </script>
                 
            <%   }
%>
               
           </div>
                   </center>
  </div>
  <div class="first" style="<%if(date.equals("Fri")){%>background-color:#015B6E;<%}%>"><p style="font-family:candara;font-size:25px;text-align:center;<%
 
if(date.equals("Fri")){%>color:white;<%}else{%>
  color:black;<%}%>color:black;text-decoration:none;"> <b>Friday</b></p>
   

       <center>
                       
           <button ><a href="javascript:void(0);" onclick="addElement5();">Add Option</a></button><br>
           <button ><a href="javascript:void(0);" onclick="removeElement5();">Remove Option</a></button><br>
           <div id="content5" style="width:100%">
               
                <% selsql="select * from todo where day='Friday' and rno='"+rno+"'";
                       
                       ps=con.prepareStatement(selsql);
                       
                       rs=ps.executeQuery();
                                     while(rs.next())
                      {%><script>i5++;</script>
             <input type="text" style="margin-left: 5px; width:90%;border-style: solid;border-width: 1px;margin-bottom:2px;" value="<%=rs.getString("name")%>"  id="fri"/>
             <script>var divid = document.getElementById('fri');
                 divid.id = 'fri'+i5;
             divid.name='fri'+i5;   </script>
                 
            <%   }
%>
           </div>
                   </center>
  </div>
  <div class="first" style="<%if(date.equals("Sat")){%>background-color:#015B6E;<%}%>"><p style="font-family:candara;font-size:25px;text-align:center;<%
 
if(date.equals("Sat")){%>color:white;<%}else{%>
  color:black;<%}%>color:black;text-decoration:none;"> <b>Saturday</b></p>
    

       <center>
                       
           <button ><a href="javascript:void(0);" onclick="addElement6();">Add Option</a></button><br>
           <button ><a href="javascript:void(0);" onclick="removeElement6();">Remove Option</a></button><br>
           <div id="content6" style="width:100%">
               
                <% selsql="select * from todo where day='Saturday' and rno='"+rno+"'";
                       
                       ps=con.prepareStatement(selsql);
                       
                       rs=ps.executeQuery();
                                     while(rs.next())
                      {%><script>i6++;</script>
             <input type="text" style="margin-left: 5px; width:90%;border-style: solid;border-width: 1px;margin-bottom:2px;" value="<%=rs.getString("name")%>"  id="sat"/>
             <script>var divid = document.getElementById('sat');
                 divid.id = 'sat'+i6;
             divid.name='sat'+i6;   </script>
                 
            <%   }
%>
           </div>
                   </center>
  </div>
</div>
  <input type="submit" name="submit" value="Update" style="position: absolute;width:100%;background:#015B6E;font-size:20px;;color:white;cursor: pointer; " onclick="return check();"/><
   </form>
   </div>
     
    </body>
</html>

