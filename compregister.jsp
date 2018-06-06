 <%@ page import="java.sql.* , java.util.*" %>
<%
    Connection con;
    Statement s;
    
    try 
    {
         //java.util.Date d=new java.util.Date();
        
         //java.text.SimpleDateFormat sdf=new java.text.SimpleDateFormat("dd-MMM-yyyy");
        
         //String cContacted=sdf.format(d);
        
         String cName=request.getParameter("name");
         
         
         String cPassword=request.getParameter("pass");

         String cMobile=request.getParameter("mobile");
        
         
        
         
         Class.forName("com.mysql.jdbc.Driver");
         
         con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_academy","root","pass");
         
         String ins_sql="insert into company values('"+cName+"','"+cPassword+"','"+cMobile+"')";
         
         s=con.createStatement();
         
         int i=0;
         i=s.executeUpdate(ins_sql);
         
      
         if(i>0)
         {%>
        
                 <script language="javascript">
                     alert("You Have Successfully Registered...! We Will Get Back To You Soon.");
                     window.location.href="index.html";
                 </script>
            
        
         
         <%
          }
         else
         {%>
             <script language="javascript">
                     alert("Sorry..! Try Again.");
                     window.location.href="register.html";
                 </script>
             <% }
    }catch(Exception e)
    {
        out.println(e);
    }
    %>
    
