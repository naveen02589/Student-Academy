 <%@ page import="java.sql.* , java.util.*" %>
<%
    Connection con;
    Statement s;
    PreparedStatement ps;
    
    Class.forName("com.mysql.jdbc.Driver");
                       con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_academy","root","pass");
                       String rno=session.getAttribute("theRno").toString();
                         Statement st = con.createStatement();

                         int i9=st.executeUpdate("DELETE from todo where rno='" + rno + "'");
    
    try 
    {
        
        
        
        int i1 = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
         int i=0;
         while(true){
             //out.println(cTitle);
             i1++;
             String name=request.getParameter("mon"+i1);
            // out.println(name);
             if(name!=null){
                 Class.forName("com.mysql.jdbc.Driver");
         
         con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_academy","root","pass");
         
         String ins_sql="insert into todo values('"+rno+"','Monday','"+name+"')";
         
         s=con.createStatement();
         
         
         i=s.executeUpdate(ins_sql);
             }
             else{
             break;
      }
   }
           while(true){
             //out.println(cTitle);
             i2++;
             String name=request.getParameter("tue"+i2);
            // out.println(name);
             if(name!=null&&name!=""){
                 Class.forName("com.mysql.jdbc.Driver");
         
         con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_academy","root","pass");
         if(name!="")
         { String ins_sql="insert into todo values('"+rno+"','Tuesday','"+name+"')";
         
         s=con.createStatement();
         
         
         i=s.executeUpdate(ins_sql);}
             }
             else{
             break;
      }
   }
             while(true){
             //out.println(cTitle);
             i3++;
             String name=request.getParameter("wed"+i3);
            // out.println(name);
             if(name!=null){
                 Class.forName("com.mysql.jdbc.Driver");
         
         con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_academy","root","pass");
         
         String ins_sql="insert into todo values('"+rno+"','Wednesday','"+name+"')";
         
         s=con.createStatement();
         
         
         i=s.executeUpdate(ins_sql);
             }
             else{
             break;
      }
   }
               while(true){
             //out.println(cTitle);
             i4++;
             String name=request.getParameter("thu"+i4);
            // out.println(name);
             if(name!=null){
                 Class.forName("com.mysql.jdbc.Driver");
         
         con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_academy","root","pass");
         
         String ins_sql="insert into todo values('"+rno+"','Thursday','"+name+"')";
         
         s=con.createStatement();
         
         
         i=s.executeUpdate(ins_sql);
             }
             else{
             break;
      }
   }
                 while(true){
             //out.println(cTitle);
             i5++;
             String name=request.getParameter("fri"+i5);
            // out.println(name);
             if(name!=null){
                 Class.forName("com.mysql.jdbc.Driver");
         
         con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_academy","root","pass");
         
         String ins_sql="insert into todo values('"+rno+"','Friday','"+name+"')";
         
         s=con.createStatement();
         
         
         i=s.executeUpdate(ins_sql);
             }
             else{
             break;
      }
   }
                   while(true){
             //out.println(cTitle);
             i6++;
             String name=request.getParameter("sat"+i6);
            // out.println(name);
             if(name!=null){
                 Class.forName("com.mysql.jdbc.Driver");
         
         con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_academy","root","pass");
         
         String ins_sql="insert into todo values('"+rno+"','Saturday','"+name+"')";
         
         s=con.createStatement();
         
         
         i=s.executeUpdate(ins_sql);
             }
             else{
             break;
      }
   }
                    Statement st1 = con.createStatement();

                         int i10=st1.executeUpdate("DELETE from todo where name=''");
       
         if(i>0)
         {%>
        
                 <script language="javascript">
                     alert("You Have Successfully Posted the Options And The Question.");
                     window.location.href="todo1.jsp";
                 </script>
            
        
         
         <%
          }
         else
         {%>
             <script language="javascript">
                     alert("Sorry..! Try Again.");
                     window.location.href="todo1.jsp";
                 </script>
             <% }
    }catch(Exception e)
    {
        out.println(e);
    }
    %>
    
