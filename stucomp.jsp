 <%@ page import="java.sql.* , java.util.*" %>
<%
    Connection con;
    Statement s;
    PreparedStatement ps;
    ResultSet rs;
    String rno= session.getAttribute("theRno").toString() ;
    try{
         
         String[] participants;
         participants = request.getParameterValues("employee");
         int i1=0;
         if (participants != null) 
   {
      for (int i = 0; i < participants.length; i++) 
      {
         //out.println ("<b>"+sports[i]+"<b>");
          String name=participants[i];
          Class.forName("com.mysql.jdbc.Driver");
         
         con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_academy","root","pass");
        // String status="NA";
         String ins_sql="insert into stucomp values('"+rno+"','"+name+"')";
         
         s=con.createStatement();
         
          i1=0;
         
        i1=s.executeUpdate(ins_sql);
         
         
      }
   }
       if(i1>0)
         {%>
        
                 <script language="javascript">
                     alert("You Have Successfully applied for selected companies");
                     window.location.href="placeselect.html";
                 </script>
            
        
         
         <%
          }
         else
         {%>
             <script language="javascript">
                     alert("Sorry..! Try Again.");
                     window.location.href="applycomp.jsp";
                 </script>
             <% }
    }catch(Exception e)
    {
e.printStackTrace();       
System.out.println(e);
    }
    %>
   
        
         
         
         