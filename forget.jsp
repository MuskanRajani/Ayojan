<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
<script  type="text/javascript">
function validation(){
	
	var pass1=document.getElementById("pass1");
	var pass2=document.getElementById("pass2");


	if(pass1.value.length<6){
	alert("Please enter a valid Password!");
	return false;
	}
	else if(pass2.value!=pass1.value){
	alert("Please enter Correct Conformation Password!");
	return false;
	}
	else
	{  return true;}
	}
</script>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="register.css">
<title>Ayojan - The headline EPO</title>
</head>
<body>
<%
String email=request.getParameter("email");
Connection con=null;
Statement st=null;
PreparedStatement pst=null;
ResultSet rs=null;
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/adv","root","");
%>
<form action="reset" method="post"  onsubmit="return validation()">
 <%
   st=con.createStatement();
   rs=st.executeQuery("select pass from login where email='"+email+"'");
   if(rs.next()){
 %>
   <label>     
              <input 
                     type="text" 
                     class="input" 
                     name="Old password" 
                    value="<%=rs.getString("pass")%>"/>        
              <div class="line-box">          
                <div class="line"></div>        
              </div>    
   </label>      
   <%} %>           
              <input 
                     type="hidden" 
                     name="email"  value="<%=email %>" />        
           
   <label>     
              <input 
                     type="text" 
                     class="input" 
                     name="password" id="pass1"
                    value="" placeholder="New password"/>        
              <div class="line-box">          
                <div class="line"></div>        
              </div>    
   </label>                 
   <label>     
              <input 
                     type="text" 
                     class="input" 
                     name="confirm" id="pass2"
                     value="" placeholder="Confirm New password"/>      
              <div class="line-box">        
                <div class="line"></div>      
              </div>  
   </label>  
   <button  type="submit" >Reset</button><br><br> 
   <a href="login.html"><button  type="submit" >Back</button></a><br><br>
</form>

</body>
</html>
