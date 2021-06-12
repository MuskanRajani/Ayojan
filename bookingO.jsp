<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="java.io.IOException,
java.sql.Connection,java.sql.Statement,java.sql.ResultSet,java.sql.SQLException,
java.sql.DriverManager" %>              
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/booking.css">
<style type="text/css">
.mm{
  position:relative;
 left:1400px;
}
  #pp{ background-color:pink;
border-color:#860440 ;
outline:none;}
</style> 
</head>
<body>
<section>
  <header id="aa">
<a href="Dashboard.jsp#slide03" class="mm"><button id="pp" class="btn profile-edit-btn">Back</button></a>
  </header>
  <!--for demo wrap-->
  <h1>Bookings</h1>
  <div class="tbl-header">
    <table cellpadding="0" cellspacing="0" border="0">
      <thead>
        <tr>
          <th>Company Name</th>
          <th>Events Information</th>
          <th>Confirmation</th>
          
        </tr>
      </thead>
    </table>
  </div>
  <%
  String id=(String)request.getSession().getAttribute("pid");
try{ Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/adv","root","");
String q="select COMPANY,MESSAGE,CONFIRMATION from booking where USER_ID_O='"+id+"'";
Statement st=con.createStatement();
ResultSet rs=st.executeQuery(q);

  %>
 <div class="tbl-content">
    <table cellpadding="0" cellspacing="0" border="0">
      <tbody>
 <%if(rs.next()){ %>       <tr>
          <td><%=rs.getString("COMPANY") %></td>
          <td><%=rs.getString("MESSAGE") %></td>
          <td><%=rs.getString("CONFIRMATION") %></td>
         
        </tr><%}if(rs.next()){ %>
        <tr>
          <td><%=rs.getString("COMPANY") %></td>
          <td><%=rs.getString("MESSAGE") %></td>
          <td><%=rs.getString("CONFIRMATION") %></td>
          
        </tr><%}}catch(Exception e){
        	out.println(e);
        } %>
      </tbody>
    </table>
  </div>
</section>


<!-- follow me template -->
<script type="text/javascript">
  // '.tbl-content' consumed little space for vertical scrollbar, scrollbar width depend on browser/os/platfrom. Here calculate the scollbar width .
$(window).on("load resize ", function() {
  var scrollWidth = $('.tbl-content').width() - $('.tbl-content table').width();
  $('.tbl-header').css({'padding-right':scrollWidth});
}).resize();
</script>  
</body>
</html>