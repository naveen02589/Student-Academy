 <%@ page import="java.sql.* , java.util.*" %>
<%
    Connection con;
    Statement s;
    
    try 
    {
         //java.util.Date d=new java.util.Date();
        
         //java.text.SimpleDateFormat sdf=new java.text.SimpleDateFormat("dd-MMM-yyyy");
        
         //String cContacted=sdf.format(d);
        
        
         String name=request.getParameter("wrkname");
         
         String location=request.getParameter("wrkloc");
         String link=request.getParameter("wrklink");
         String start=request.getParameter("wrkstart");
         String end=request.getParameter("wrkend");
         String reg=request.getParameter("wrkreg");
//String cInternship=request.getParameter("internship");
         
        // String cDescription=request.getParameter("description");
         
         //String cNextDate="null";
        
         
         Class.forName("com.mysql.jdbc.Driver");
         
         con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_academy","root","pass");
         
         String ins_sql="insert into workshops values('"+name+"','"+location+"','"+link+"','"+start+"','"+end+"','"+reg+"')";
         
         s=con.createStatement();
         
         int i=0;
         i=s.executeUpdate(ins_sql);
         
      
         if(i>0)
         {%>
        
                 <script language="javascript">
                     alert("You Have Successfully added a workshop...! We Will Get Back To You Soon.");
                     window.location.href="adminadwrk.html";
                 </script>
            
        
         
         <%
          }
         else
         {%>
             <script language="javascript">
                     alert("Sorry..! Try Again.");
                     window.location.href="adminadwrk.html";
                 </script>
             <% }
    }catch(Exception e)
    {
        out.println(e);
    }
    %>
    
