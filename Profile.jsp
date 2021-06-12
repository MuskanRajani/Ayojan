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
                            			<li ><a href="Dashboard.jsp#slide03" id="logo">Back</a></li>
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
		<% 
		try{
			String eid=(String)session.getAttribute("pid");
		   
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/adv","root","");
		String qr="Select COMPANY from login where id='"+eid+"'";
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery(qr);
		rs.next();
		if((rs.getString("company")==null?false:true)){
		   response.sendRedirect("Viewprofile.jsp");
		}


		%>


		%>
        <div id="fullpage" class="fullpage-default">

		  <div class="section animated-row" data-section="slide07">
                <div class="section-inner">
                    <div class="row justify-content-center">
                        <div class="col-md-7 wide-col-laptop">
                            <div class="title-block animate" data-animate="fadeInUp">
                                <span>Profile</span>
                                <h2>Get In Touch!</h2>
                            </div>
                            <div class="contact-section">
                                <div class="row">
                                    <div class="col-md-10 animate" data-animate="fadeInUp">
                                       <form id="ajax-contact" method = "post" action="profile" enctype="multipart/form-data">
                                         <div class="input-field">
                                                <input type="hidden" class="form-control" name="id"  value="<%=eid%>"required>
                                            </div>
                                         
                                            <div class="input-field">
                                                <input type="text" class="form-control" name="name" id="name" required placeholder="Company Name">
                                            </div>
                                              <div class="input-field">
                                                <textarea class="form-control" name="message" id="message" required placeholder="Description"></textarea>
                                            </div>
                                            <div class="input-field">
                        						<input type="file" name="myimg" id="file" multiple class="form-control"  autofocus="true" required placeholder="Insert Profile photo">       
                    						</div>
                    						</lable>
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
     <%
}catch(Exception e){
	e.printStackTrace();
}
%>   

    <script src="js/jquery.js"></script>

    <script src="js/bootstrap.min.js"></script>

    <script src="js/fullpage.min.js"></script>

    <script src="js/scrolloverflow.js"></script>

    <script src="js/owl.carousel.min.js"></script>

    <script src="js/jquery.inview.min.js"></script>

   
	<script src="js/profile.js"></script>
	
    <script src="js/custom.js"></script>


  </body>
</html>