
<%@page import="java.sql.*" %>
<%
                  Connection con;
                  PreparedStatement ps;
                  ResultSet rs;
                  try{
                       Class.forName("com.mysql.jdbc.Driver");
                       con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_academy","root","pass");
                       String companyid=request.getParameter("cid");
                      //int companyid = Integer.parseInt(cid);
                       
                       String selsql="DELETE from company where cname='"+companyid+"'";
                       ps=con.prepareStatement(selsql);
                       
                
                       int i=ps.executeUpdate();
                       
                       if(i>0){%>
                           <script language="javascript">
                           alert("Company successfully deleted");
                           window.location.href="admincomp.html";
                       </script>
                       <%
                       
                       }
                       else{%>
                           <script language="javascript">
                           alert("company no not found . Try again");
                           window.location.href="admincomp.html";
                       </script>
                       <%}
                       
                  }catch(Exception e)
                  {
                      out.println(e);
                  }
              %>