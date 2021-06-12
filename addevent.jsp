<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>


 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

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
                                       <form id="ajax-contact" method="post" action="addevent" enctype="multipart/form-data">
                                           <% String eid=request.getParameter("id");
                                           System.out.println(eid);
                                   		%> 
                                   		 <div class="input-field">
                        						<input type="hidden" name="id" value="<%=eid %>"  class="form-control"   required placeholder="Choose Images">       
                    						</div>
                    						
                                          		 <div class="input-field">
                                          			<div class="multiselect">
													    <div class="selectBox" onclick="showCheckboxes()">
													      <select class="form-control">
													        <option style="width:100%;" >Specialization</option>
													      </select>
													      <div class="overSelect"></div>
													    </div>
													    <div id="checkboxes">
													      <label for="one">
													        <input type="checkbox" id="one" name="speci" value="Concerts"/>Concerts</label>
													        <label for="two">
													        <input type="checkbox" id="two" name="speci" value="Birthday Parties"/>Birthday Parties</label>
													        <label for="three">
													        <input type="checkbox" id="three" name="speci"value="Tour and travels"/>Tour and travels</label>
														    <label for="four">
													        <input type="checkbox" id="four" name="speci" value="Social gathering"/>Social gathering</label>
														    <label for="five">
													        <input type="checkbox" id="five" name="speci" value="Wedding Events"/>Wedding Events</label>
														    <label for="six">
													        <input type="checkbox" id="six" name="speci" value="Other"/>Other</label>
														   

													    </div>
													  </div>
		                                     </div>	
													    
                                            
                                            <div class="input-field">
                        						<input type="file" name="myimg" id="file"  class="form-control"   required placeholder="Choose Images">       
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