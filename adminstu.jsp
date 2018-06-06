
<%@page import="java.sql.*" %>
<%
                  Connection con;
                  PreparedStatement ps;
                  ResultSet rs;
                  try{
                       Class.forName("com.mysql.jdbc.Driver");
                       con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_academy","root","pass");
                       String rollno=request.getParameter("rno");
                      int rno = Integer.parseInt(rollno);
                       
                       String selsql="DELETE from studetails where rno="+rno;
                       ps=con.prepareStatement(selsql);
                       
                
                       int i=ps.executeUpdate();
                       
                       if(i>0){%>
                           <script language="javascript">
                           alert("  Student successfully deleted");
                           window.location.href="adminstu.html";
                       </script>
                       <%
                       
                       }
                       else{%>
                           <script language="javascript">
                           alert("Student no not found . Try again");
                           window.location.href="adminstu.html";
                       </script>
                       <%}
                     
                  }catch(Exception e)
                  {
                      out.println(e);
                  }
              %>