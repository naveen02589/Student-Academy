
<%@page import="java.sql.*" %>
<%
                  Connection con;
                  PreparedStatement ps;
                  ResultSet rs;
                  try{
                       Class.forName("com.mysql.jdbc.Driver");
                       con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_academy","root","pass");
                       String wname=request.getParameter("name").toString();;
                         Statement st = con.createStatement();

                         int i=st.executeUpdate("DELETE from stuwebsites where name='" + wname + "'");
                     
                       
                       if(i>0){%>
                           <script language="javascript">
                           alert("  website successfully deleted");
                           window.location.href="adminrmstu.html";
                       </script>
                       <%
                       
                       }
                       else{%>
                           <script language="javascript">
                           alert("website no not found . Try again");
                           window.location.href="adminrmstu.html";
                       </script>
                       <%}
                     
                  }catch(Exception e)
                  {
                      out.println(e);
                  }
              %>