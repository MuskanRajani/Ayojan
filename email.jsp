<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="register.css">
</head>
<body>
<form action="forget.jsp" method="post" onsubmit="return validation()" >

   
  <label>     
              <input 
                     type="text" 
                     class="input" 
                     name="email" id="pass2"
                    placeholder="Enter email address"/>      
              <div class="line-box">        
                <div class="line"></div>      
             </div>  
   </label>  
   <button  type="submit" >Next</button><br><br> 
   
</form>

</body>
</html>