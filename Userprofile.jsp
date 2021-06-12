<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>


<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
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

	<link rel="stylesheet" href="css/profile.css">
	
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
                    <a href="#" id="logo" title="Ayojan - The Headline EPO">
                        Ayojan - The Headline EPO
                    </a>
                    <div class="navigation-row">
                        <nav id="navigation">
                            <button type="button" class="navbar-toggle"> <i class="fa fa-bars"></i> </button>
                            <div class="nav-box navbar-collapse">
                                <ul class="navigation-menu nav navbar-nav navbars" id="nav">
                                       	<li ><a href="Dashboard.jsp" id="logo">Back</a></li> 	
                                </ul>
                            </div>
                        </nav>
                    </div>
                </div>
            </div>
        </header>

        <video autoplay muted loop id="myVideo">
          <source src="images/video-bg.mp4" type="video/mp4">
        </video>
        <div id="fullpage" class="fullpage-default">

		  <div class="section animated-row" data-section="slide07">
                <div class="section-inner">
                    <div class="row justify-content-center">
                        <div class="col-md-8 wide-col-laptop">
                            <div class="title-block animate" data-animate="fadeInUp">
                                <span>Account</span>
                             </div>
                            <div class="contact-section">
                                <div class="row">
                                    <div class="col-md-10 animate" data-animate="fadeInUp">
                                         <%	
											try{
											String id=request.getParameter("id");
											Class.forName("com.mysql.jdbc.Driver");
											Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/adv","root","");
											String qr="Select * from login where id='"+id+"'";
											Statement st=con.createStatement();
											ResultSet rs=st.executeQuery(qr);
											while(rs.next())
											{
										%>
                                        
                                        <form  method="GET" action="Userupdate" id="ajax-contact">
                                           <div class="input-field">
                                                <input type="hidden" class="form-control" name="id" id="id" value=<% out.println(id);%>>
                                            </div>
                                            <div class="input-field">
                                                <input type="text" class="form-control" name="name" id="name" value="<%out.println(rs.getString("name"));%>" >
                                            </div>
                             				<div class="input-field">
                                                <input type="email" class="form-control" name="email" id="email" value="<%out.println(rs.getString("email")); %>">
                                            </div>
                             				<div class="input-field">
                                                <input type="textarea" class="form-control" name="address" id="address" value="<%out.println(rs.getString("address"));%>" >
                                            </div>
                             
                                            <div class="input-field">
                                                <input type="tel" class="form-control" name="contact" id="contact"  value="<%out.println(rs.getString("contact")); %>" >
                                            </div>
                                             
											 <input type = "submit" class="btn" value = "Submit" />
                                            </form>
                        
    										<%
    										}
											con.close();
											}
											catch(Exception e)
											{
												out.println(e);
											}
											 %>
							          </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    <script src="js/jquery.js"></script>

    <script src="js/bootstrap.min.js"></script>

    <script src="js/fullpage.min.js"></script>

    <script src="js/scrolloverflow.js"></script>

    <script src="js/owl.carousel.min.js"></script>

    <script src="js/jquery.inview.min.js"></script>

    <script src="js/custom.js"></script>


  </body>
</html>