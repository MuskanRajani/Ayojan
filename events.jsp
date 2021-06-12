<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.IOException,
java.sql.Connection,java.sql.Statement,java.sql.ResultSet,java.sql.SQLException,
java.sql.DriverManager,java.sql.PreparedStatement" %>        
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css?family=Raleway:100,300,400,500,700,900" rel="stylesheet">
   
    <title>Ayojan - The Headline EPO</title>
    
    <!-- Additional CSS Files -->
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">

    <link rel="stylesheet" type="text/css" href="css/font-awesome.css">

    <link rel="stylesheet" type="text/css" href="css/fullpage.min.css">

    <link rel="stylesheet" type="text/css" href="css/owl.carousel.css">

    <link rel="stylesheet" href="css/animate.css">

    <link rel="stylesheet" href="css/templatemo-style.css">

    <link rel="stylesheet" href="css/responsive.css">
   
   <link rel="stylesheet" href="css/search.css">
 
 	<link rel="stylesheet" href="css/dropdown.css">
 
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.0/css/all.min.css">
 	
<%
String id=request.getParameter("iid");
String iidd=(String)request.getSession().getAttribute("pid");
out.println(id);
Statement st=null;
ResultSet rs=null;
PreparedStatement ps=null;
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/adv","root","");
%>
</head>
<body>
 <div id="video">
        <div class="preloader">
            <div class="preloader-bounce">
                <span></span>
                <span></span>
                <span></span>
            </div>
        </div>

        <header id="header">
            <div class="container-fluid">
                <div class="navbar">
                    <a href="#" id="logo" title="Ayojan - The Headline EPO ">
                        Ayojan - The Headline EPO
                    </a>
                    
                </div>
            </div>
        </header>

        <video autoplay muted loop id="myVideo">
          <source src="images/video.mp4" type="video/mp4">
        </video>

   
    <%
 st=con.createStatement();
 rs=st.executeQuery("select * from login where id='"+id+"'");
 while(rs.next()){
%>
        <div id="fullpage" class="fullpage-default">
           <div class="section animated-row" data-section="slide05">
                <div class="section-inner">
                    <div class="row justify-content-center">
                        <div class="col-md-7 wide-col-laptop">
                            <div class="title-block animate" data-animate="fadeInUp">
                                <span>Contact</span>
                                <h2>Book Event</h2>
                            </div>
                            <div class="contact-section">
                                <div class="row">
                                    <div class="col-md-6 animate" data-animate="fadeInUp">
                                        <div class="contact-box">
                                            <div class="contact-row">
                                                <i class="fa fa-map-marker"></i><%=rs.getString("company") %>
                                            </div>
                                            <div class="contact-row">
                                                <i class="fa fa-phone"></i> <%=rs.getString("contact") %>
                                            </div>
                                            <div class="contact-row">
                                                <i class="fa fa-envelope"></i> <%=rs.getString("email") %>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6 animate" data-animate="fadeInUp">
                                        <form id="ajax-contact" method="post" action="book">
                                         <div class="input-field">
                                                <input type="hidden" class="form-control" name="company" id="name" value="<%=rs.getString("company") %>">
                                            </div>
                                        <div class="input-field">
                                                <input type="hidden" class="form-control" name="iidd" id="name" value="<%=iidd %>">
                                            </div>
                                            <div class="input-field">
                                                <input type="hidden" class="form-control" name="iid" id="name" value="<%=id %>">
                                            </div>
                                            <div class="input-field">
                                                <input type="text" class="form-control" name="name" id="name" required placeholder="Name">
                                            </div>
                                            <div class="input-field">
                                                <input type="email" class="form-control" name="email" id="email" required placeholder="Email">
                                            </div>
                                            <div class="input-field">
                                                <textarea class="form-control" name="message" id="message" required placeholder="Message"></textarea>
                                            </div>
                                            <button class="btn" type="submit">Submit</button>
                                            
                                        </form>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>  
        
         </div>
    <%} %>
    <script src="js/jquery.js"></script>
	
    <script src="js/dropdown.js"></script>

    <script src="js/bootstrap.min.js"></script>

    <script src="js/fullpage.min.js"></script>

    <script src="js/scrolloverflow.js"></script>

    <script src="js/owl.carousel.min.js"></script>

    <script src="js/jquery.inview.min.js"></script>

   

    <script src="js/custom.js"></script>
            
</body>
</html>
