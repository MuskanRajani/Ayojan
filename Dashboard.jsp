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
   
   	<link rel="stylesheet" href="css/search.css">
 
 	<link rel="stylesheet" href="css/dropdown.css">
 
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.0/css/all.min.css">
 	
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
		<% String id=(String)session.getAttribute("uid");  
		HttpSession session2 = request.getSession();	    
        session2.setAttribute("pid",id); 
			//System.out.println(id);
          %>
        <header id="header">
            <div class="container-fluid">
                <div class="navbar">
                    <a href="#" id="logo" title="Ayojan - The Headline EPO ">
                        Ayojan - The Headline EPO
                    </a>
                    <div class="navigation-row">
                        <nav id="navigation">
                            <button type="button" class="navbar-toggle"> <i class="fa fa-bars"></i> </button>
                            <div class="nav-box navbar-collapse">
                                <ul class="navigation-menu nav navbar-nav navbars" id="nav">
                                    <li data-menuanchor="slide01" class="active"><a href="#slide01">Home</a></li>
                                    <li data-menuanchor="slide02"><a href="#slide02">About Us</a></li>
                                    <li data-menuanchor="slide03"><a href="#slide03">Services</a></li>
                                    <li data-menuanchor="slide04"><a href="#slide04">Search Event</a></li>
                                    <li data-menuanchor="slide05"><a href="#slide05">Contact Us</a></li>
                                  	<li class="dropdown">
								    <a href="javascript:void(0)" class="dropbtn" onclick="myFunction()">Account</a>
								    <div class="dropdown-content" id="myDropdown">
								      <a href="Userprofile.jsp?id=<% out.println(id); %>">Edit Profile</a>
								      <a href="logout.jsp">Logout</a>
								    </div>
								  </li>
			                 	</ul>
                            </div>
                        </nav>
                    </div>
                </div>
            </div>
        </header>

        <video autoplay muted loop id="myVideo">
          <source src="images/video.mp4" type="video/mp4">
        </video>

        <div id="fullpage" class="fullpage-default">

            <div class="section animated-row" data-section="slide01">
                <div class="section-inner">
                    <div class="welcome-box">
                       
                        <span class="welcome-first animate" data-animate="fadeInUp">Hello, welcome to</span>
                        <h1 class="welcome-title animate" data-animate="fadeInUp">AYOJAN</h1>
                        <h4 data-animate="fadeInUp">The Headline EPO</h4>
                         <p class="animate" data-animate="fadeInUp">Do you want to make your special day as your special memory ?<br>
So choose your event planner now. Here we provide you a platform to choose your event planner according to your Event, location as well as budget,

Also Event planners have a great opportunity to enhance and show their skills!</p>

                        <div class="scroll-down next-section animate data-animate="fadeInUp""><img src="images/mouse-scroll.png" alt=""><span>Scroll Down</span></div>
                    </div>
                </div>
            </div>

            <div class="section animated-row" data-section="slide02">
                <div class="section-inner">
                    <div class="about-section">
                        <div class="row justify-content-center">
                            <div class="col-lg-8 wide-col-laptop">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="about-contentbox">
                                            <div class="animate" data-animate="fadeInUp">
                                                <span>About Us</span>
                                                <h2>Who am i?</h2>
                                                <p><strong>AYOJAN </strong> is only a humble venture to satisfy the needs of users so that event organizer could directly contact to event planners  through their smart phone just by sitting at home.
													We  provide an opportunity for startups to those users who wants to start their career as an event planner.We helps you to save your time as well as money.
													We provide a  platform for event planners to make their profile. Event planner can also share pictures and experience of their previously organized events.</p>
                                            </div>
                                           
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <figure class="about-img animate" data-animate="fadeInUp"><img src="images/event.jpg" class="rounded" alt=""></figure>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="section animated-row" data-section="slide03">
                <div class="section-inner">
                    <div class="row justify-content-center">
                        <div class="col-md-8 wide-col-laptop">
                            <div class="title-block animate" data-animate="fadeInUp">
                                <span>Services</span>
                                <h2>Create Your Profile as a Event Planner</h2>
                            </div>
                            <div class="services-section">
                                <div class="services-list owl-carousel">
                                 
                                    <a href="Profile.jsp">
                                    <div class="item animate" data-animate="fadeInUp">
                                        <div class="service-box">
                                            <span class="service-icon"><i class="fa fa-user-plus" aria-hidden="true"></i></span>
                                            <h3>Create Profile</h3>
                                            <p>Create your profile as an event planner and add information related to your events.</p>
                                        </div>
                                    </div>
                                    </a>
                                      <a href="Viewprofile.jsp">
                                      <div class="item animate" data-animate="fadeInUp">
                                        <div class="service-box">
                                            <span class="service-icon"><i class="fa fa-eye" aria-hidden="true"></i></span>
                                            <h3>View Profile</h3>
                                            <p>View your profile details and edit or update any detail.</p>
                                        </div>
                                    </div>
                                    </a>
                                     <a href="bookingP.jsp">  <div class="item animate" data-animate="fadeInUp">
                                        <div class="service-box">
                                            <span class="service-icon"><i class="fa fa-book" aria-hidden="true"></i></span>
                                            <h3>Bookings</h3>
                                            <p>Number of clients that have booked you for an event.</p>
                                        </div>
                                    </div></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


              <div class="section animated-row" data-section="slide04">
                <div class="section-inner">
                    <div class="row justify-content-center">
                        <div class="col-md-8 wide-col-laptop">
                            <div class="title-block animate" data-animate="fadeInUp">
                                <span></span><h2>Events</h2>
                                </div>
                                <div class="search-bar">
                                                <input type="hidden" class="form-control" name="name" id="name" placeholder="Name"></div>
                   									<form method="get" action="Searching">	<div class="search-bar">
									<input type="text" class="search-input" name="search" value="Search Event" >
								
								 	<button type="submit" class="search-anch"><i class="fas fa-search"></i></button></form>
                            	</div>
                            <br>
                            
                            <div class="gallery-section">
                                <div class="gallery-list owl-carousel">
                                   <a href="eventc.jsp#slide01"> <div class="item animate" data-animate="fadeInUp">
                                        <div class="portfolio-item">
                                            <div class="thumb">
                                                <img src="images/item1.jpg" alt="">
                                            </div>
                                            <div class="thumb-inner animate" data-animate="fadeInUp">
                                                <h4>Concerts</h4>
                                                <p>A concert is a live music performance in front of an audience.[1] The performance may be by a single musician, sometimes then called a recital, or by a musical ensemble, such as an orchestra, choir, or band. Informal names for a concert include show and gig.</p>
                                            </div>
                                        </div>
                                    </div></a>
                                   <a href="eventc.jsp#slide02"> <div class="item animate" data-animate="fadeInUp">
                                        <div class="portfolio-item">
                                            <div class="thumb">
                                                <img src="images/item2.jpg" alt="">
                                            </div>
                                            <div class="thumb-inner animate" data-animate="fadeInUp">
                                                <h4>Birthday Parties</h4>
                                                <p>Birthdays are a special time of year. They remind us that we are growing older, but they also symbolize how far we have come. They are a cause for celebration and a great excuse to show someone how much you appreciate them. When we celebrate someone birthday  we let them know that they have grown.</p>
                                            </div>
                                        </div>
                                    </div></a>
                                   <a href="eventc.jsp#slide03"> <div class="item animate" data-animate="fadeInUp">
                                        <div class="portfolio-item">
                                            <div class="thumb">
                                                <img src="images/item3.jpg" alt="">
                                            </div>
                                            <div class="thumb-inner animate" data-animate="fadeInUp">
                                                <h4>Tour And Travels Event</h4>
                                                <p>Tour operators manage tour from beginning to the end of the tour. A tour operator has the responsibility to look after the finer details of a vacation or tour such as hotel, accommodation, meals, conveyance etc. Tour operators provide travel guide, escorting services and arrange all travel related needs and wants.</p>
                                            </div>
                                        </div>
                                    </div></a>
                                   <a href="eventc.jsp#slide04"> <div class="item animate" data-animate="fadeInUp">
                                        <div class="portfolio-item">
                                            <div class="thumb">
                                                <img src="images/item4.jpg" alt="">
                                            </div>
                                            <div class="thumb-inner animate" data-animate="fadeInUp">
                                                <h4>Social Gathering / House Party </h4>
                                                <p>Social gathering is defined as interactions among a diversity of individuals of all abilities in small, medium and large groups for social and community purposes.A house party might be organized several months, or down to just a few hours, in advance.</p>
                                            </div>
                                        </div>
                                    </div></a>
                                    <a href="eventc.jsp#slide05"><div class="item animate" data-animate="fadeInUp">
                                        <div class="portfolio-item">
                                            <div class="thumb">
                                                <img src="images/item5.jpg" alt="">
                                            </div>
                                            <div class="thumb-inner animate" data-animate="fadeInUp">
                                                <h4>Wedding Events</h4>
                                                <p>Wedding ceremonies serve several purposes, and they are often a cherished moment in a couples lives.The most important part of any wedding ceremony is the words utilized to proclaim never-ending love and appreciation between each unique couple and here we are going to make your wedding memorable and loving.</p>
                                            </div>
                                        </div>
                                    </div></a>
                                   <a href="eventc.jsp#slide06"> <div class="item animate" data-animate="fadeInUp">
                                        <div class="portfolio-item">
                                            <div class="thumb">
                                                <img src="images/item1.jpg" alt="">
                                            </div>
                                            <div class="thumb-inner animate" data-animate="fadeInUp">
                                                <h4>Other Events</h4>
                                                <p>The sole purpose of any event is that a group of people will convene in one particular place for one particular purpose at a given time. Now that could be various purposes such as a wedding, a business networking function, a church gathering, etc. </p>
                                            </div>
                                        </div>
                                    </div></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

         
          
            <div class="section animated-row" data-section="slide05">
                <div class="section-inner">
                    <div class="row justify-content-center">
                        <div class="col-md-7 wide-col-laptop">
                            <div class="title-block animate" data-animate="fadeInUp">
                                <span>Contact</span>
                                <h2>Get In Touch!</h2>
                            </div>
                            <div class="contact-section">
                                <div class="row">
                                    <div class="col-md-6 animate" data-animate="fadeInUp">
                                        <div class="contact-box">
                                            <div class="contact-row">
                                                <i class="fa fa-map-marker"></i> 43-c Sarvanand Nagar
                                            </div>
                                            <div class="contact-row">
                                                <i class="fa fa-phone"></i> 9669023000
                                            </div>
                                            <div class="contact-row">
                                                <i class="fa fa-envelope"></i> choudharypriya20798@gmail.com
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6 animate" data-animate="fadeInUp">
                                        <form id="ajax-contact" method="post" action="admin">
                                        <% String id1=(String)session.getAttribute("pid");%>  
                                            <div class="input-field">
                                                <input type="hidden"  name="id" id="id" value=<%=id1 %>>
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