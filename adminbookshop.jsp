<%@ page import="java.sql.* , java.util.*" %>
<%
    Connection con;
    Statement s;
    
    try 
    {
         //java.util.Date d=new java.util.Date();
        
         //java.text.SimpleDateFormat sdf=new java.text.SimpleDateFormat("dd-MMM-yyyy");
        
         //String cContacted=sdf.format(d);
        
         String csem=request.getParameter("semester");
         
         String csub=request.getParameter("subject");
         
         String cbookname=request.getParameter("book_name");
         
         String cauthor=request.getParameter("author");
         
         String clink=request.getParameter("link");
         
         //String cInternship=request.getParameter("internship");
         
        // String cDescription=request.getParameter("description");
         
         //String cNextDate="null";
        
         
         Class.forName("com.mysql.jdbc.Driver");
         
         con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_academy","root","pass");
         
         String ins_sql="insert into booksite values('"+csem+"','"+csub+"','"+cbookname+"','"+cauthor+"','"+clink+"')";
         
         s=con.createStatement();
         
         int i=0;
         i=s.executeUpdate(ins_sql);
         
      
         if(i>0)
         {%>
        
                 <script language="javascript">
                     alert("You Have Successfully Added..! We Will Get Back To You Soon.");
                     window.location.href="adminbookshop.html";
                 </script>
            
        
         
         <%
          }
         else
         {%>
             <script language="javascript">
                     alert("Sorry..! Try Again.");
                     window.location.href="adminbookshop.html";
                 </script>
             <% }
    }catch(Exception e)
    {
        out.println(e);
    }
    %>
    
