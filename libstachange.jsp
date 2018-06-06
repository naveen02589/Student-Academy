 <%@ page import="java.sql.* , java.util.*" %>
<%
    Connection con;
    Statement s;
    PreparedStatement ps;
    ResultSet rs;
    
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
         String selsql="select * from library where book_name=?";
             ps=con.prepareStatement(selsql);
             //String namee="1";
                       ps.setString(1,name);
                       rs=ps.executeQuery();
                       String a="a",b="b";
                       while(rs.next()){
                        a=rs.getString("status");
                        if("AVAILABLE".equals(a)){
                       b="NOT AVAILABLE";
                       }
                       else {
                       b="AVAILABLE";
                       }
                       }
                       


         String sql="update library set status='"+b+"' where book_name='"+name+"'";
         
         s=con.createStatement();
        i1=s.executeUpdate(sql);
         
         
      }
   }
       if(i1>0)
         {%>
        
                 <script language="javascript">
                     alert("You Have Successfully altered status of the books");
                     window.location.href="libhome.html";
                 </script>
            
        
         
         <%
          }
         else
         {%>
             <script language="javascript">
                     alert("Sorry..! Try Again.");
                     window.location.href="libstatus.jsp";
                 </script>
             <% }
    }catch(Exception e)
    {
e.printStackTrace();       
System.out.println(e);
    }
    %>
   
        
         
         
         