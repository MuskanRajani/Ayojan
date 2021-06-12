<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="java.io.IOException,
java.sql.Connection,java.sql.Statement,java.sql.ResultSet,java.sql.SQLException,
java.sql.DriverManager,java.sql.PreparedStatement" %>       
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ayojan - The Headline EPO</title>
 <link rel="stylesheet" href="css/viewprofile.css">
 
 <style>
 #aa{
 position:fixed;
 left:320px;
 top:40px;
 
 }
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
<%
 String id=(String)request.getSession().getAttribute("pid");
//System.out.println(id); 
PreparedStatement ps=null;
 Statement st=null;
 ResultSet rs=null;
 Class.forName("com.mysql.jdbc.Driver");
 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/adv","root","");
%>
   
   
  <span id="slide01">  <header>
    <a href="Dashboard.jsp#slide03" class="mm"><button id="pp" class="btn profile-edit-btn">Back</button></a>
 
  <div class="container" id="aa">   
 <a href="#slide01" ><button  class="btn profile-edit-btn">Concerts</button></a>   
 <a href="#slide02" ><button  class="btn profile-edit-btn">Birthday</button></a>   
 <a href="#slide03"><button class="btn profile-edit-btn">Tour&travels</button></a>   
<a href="#slide04" ><button class="btn profile-edit-btn">Social gathering</button></a>    
<a href="#slide05" ><button class="btn profile-edit-btn">Wedding</button></a>    
<a href="#slide06" ><button  class="btn profile-edit-btn">Other</button></a>

 </div>
  <div class="container"> <div class="profile">

      <div class="profile-user-settings">

        <h1 class="profile-user-name">Concerts</h1><br>

      
		
      </div>

      <div class="profile-bio">

        <p><span class="profile-real-name">Concert </span> is a live music performance in front of an audience.[1] The performance may be by a single musician, sometimes then called a recital, or by a musical ensemble, such as an orchestra, choir, or band. Informal names for a concert include show and gig.</p>
 
      </div>

    </div>
    <!-- End of profile section -->

  </div>
    
   
  <!-- End of container -->
  
</header>    
<main>
<% 
  String q2="select id,image from eplanner where speci='Concerts'";
  st=con.createStatement();
  rs=st.executeQuery(q2);
  if(rs.next()){
	  
     String sn=rs.getString("image");
     System.out.println(sn);
     
    %>
  <div class="container">

    <div class="gallery">

      <div class="gallery-item" tabindex="0">
             
        <img src="images/<%=sn%>" class="gallery-image" alt="">

        <div class="gallery-item-info">

          <ul>
            <li class="gallery-item-likes"><span class="visually-hidden"><a href="events.jsp?iid=<%=rs.getString("id")%>" >Book Event</a></span></li><br>       
            <li class="gallery-item-comments"><span class="visually-hidden">Comments:</span><i class="fas fa-comment" aria-hidden="true"></i></li>
          </ul>

        </div>

      </div>
<% }if(rs.next()){%>
      <div class="gallery-item" tabindex="0">

        <img src="images/<%=rs.getString("image") %>" class="gallery-image" alt="">

        <div class="gallery-item-info">

          <ul>
            <li class="gallery-item-likes"><span class="visually-hidden">Likes:</span><i class="fas fa-heart" aria-hidden="true"></i><a href="events.jsp?iid=<%=rs.getString("id")%>" >Book Event</a></li>
            <li class="gallery-item-comments"><span class="visually-hidden">Comments:</span><i class="fas fa-comment" aria-hidden="true"></i>  
</li>
          </ul>
          
        </div>

      </div>
<%} if(rs.next()){%>
      <div class="gallery-item" tabindex="0">

        <img src="images/<%=rs.getString("image") %>" class="gallery-image" alt="">

        <div class="gallery-item-type">

          <span class="visually-hidden">Gallery</span><i class="fas fa-clone" aria-hidden="true"></i>

        </div>

        <div class="gallery-item-info">

          <ul>
            <li class="gallery-item-likes"><span class="visually-hidden">Likes:</span><i class="fas fa-heart" aria-hidden="true"><a href="events.jsp?iid=<%=rs.getString("id")%>" >Book Event</a></i></li>
            <li class="gallery-item-comments"><span class="visually-hidden">Comments:</span><i class="fas fa-comment" aria-hidden="true"></i> </li>
          </ul>

        </div>

      </div>
<%} if(rs.next()){%>
      <div class="gallery-item" tabindex="0">

        <img src="images/<%=rs.getString("image") %>" class="gallery-image" alt="">

        <div class="gallery-item-type">

          <span class="visually-hidden">Video</span><i class="fas fa-video" aria-hidden="true"></i>

        </div>

        <div class="gallery-item-info">

          <ul>
            <li class="gallery-item-likes"><span class="visually-hidden">Likes:</span><i class="fas fa-heart" aria-hidden="true"></i> <a href="events.jsp?iid=<%=rs.getString("id")%>" >Book Event</a>
</li>
            <li class="gallery-item-comments"><span class="visually-hidden">Comments:</span><i class="fas fa-comment" aria-hidden="true"></i>  </li>
          </ul>

        </div>

      </div>
<%} if(rs.next()){%>
      <div class="gallery-item" tabindex="0">

        <img src="images/<%=rs.getString("image") %>"  class="gallery-image" alt="">
        
        <div class="gallery-item-type">

          <span class="visually-hidden">Gallery</span><i class="fas fa-clone" aria-hidden="true"></i>

        </div>

        <div class="gallery-item-info">

          <ul>
            <li class="gallery-item-likes"><span class="visually-hidden">Likes:</span><i class="fas fa-heart" aria-hidden="true"><a href="events.jsp?iid=<%=rs.getString("id")%>" >Book Event</a></i></li>
            <li class="gallery-item-comments"><span class="visually-hidden">Comments:</span><i class="fas fa-comment" aria-hidden="true"></i> </li>
          </ul>

        </div>

      </div>
<%} if(rs.next()){%>
      <div class="gallery-item" tabindex="0">

        <img src="images/<%=rs.getString("image") %>" class="gallery-image" alt="">
        

        <div class="gallery-item-info">

          <ul>
            <li class="gallery-item-likes"><span class="visually-hidden">Likes:</span><i class="fas fa-heart" aria-hidden="true"></i> <a href="events.jsp?iid=<%=rs.getString("id")%>" >Book Event</a><li>
            <li class="gallery-item-comments"><span class="visually-hidden">Comments:</span><i class="fas fa-comment" aria-hidden="true"></i></li>
          </ul>

        </div>

      </div>
<%} if(rs.next()){%>
      <div class="gallery-item" tabindex="0">

        <img src="images/<%=rs.getString("image") %>" class="gallery-image" alt="">

        <div class="gallery-item-type">

          <span class="visually-hidden">Gallery</span><i class="fas fa-clone" aria-hidden="true"></i>

        </div>

        <div class="gallery-item-info">

          <ul>
            <li class="gallery-item-likes"><span class="visually-hidden">Likes:</span><i class="fas fa-heart" aria-hidden="true"></i><a href="events.jsp?iid=<%=rs.getString("id")%>" >Book Event</a> </li>
            <li class="gallery-item-comments"><span class="visually-hidden">Comments:</span><i class="fas fa-comment" aria-hidden="true"></i> </li>
          </ul>

        </div>

      </div>

    </div> 

     

      

      
     
   <%}%>
    <!-- End of gallery -->

    <div class=""></div>

  </div>
  
        
    </main>
    </span>
 <span id="slide02"><header>

  <div class="container"> <div class="profile">

     

      <div class="profile-user-settings">

        <h1 class="profile-user-name">Birthday Parties</h1><br>

      
		
      </div>

      <div class="profile-bio">

        <p><span class="profile-real-name">Birthdays </span> are a special time of year. They remind us that we are growing older, but they also symbolize how far we have come. They are a cause for celebration and a great excuse to show someone how much you appreciate them. When we celebrate someone birthday  we let them know that they have grown.</p>
 
      </div>

    </div>
    <!-- End of profile section -->

  </div>
    
   
  <!-- End of container -->
  
</header>    
<main>
<%
String q="select id,image from eplanner where speci='Birthday Parties'";
 st=con.createStatement();
 rs=st.executeQuery(q);
 if(rs.next()){
	 
   String sn=rs.getString("image");
 %>
  <div class="container">

    <div class="gallery">

      <div class="gallery-item" tabindex="0">
             
        <img src="images/<%=sn%>" class="gallery-image" alt="">

        <div class="gallery-item-info">

          <ul>
            <li class="gallery-item-likes"><span class="visually-hidden"></span><i class="fas fa-heart" aria-hidden="true"></i><a href="events.jsp?iid=<%=rs.getString("id")%>" >Book Event</a></li><br>       
            <li class="gallery-item-comments"><span class="visually-hidden">Comments:</span><i class="fas fa-comment" aria-hidden="true"></i></li>
          </ul>

        </div>

      </div>
<% }if(rs.next()){%>
      <div class="gallery-item" tabindex="0">

        <img src="images/<%=rs.getString("image") %>" class="gallery-image" alt="">

        <div class="gallery-item-info">

          <ul>
            <li class="gallery-item-likes"><span class="visually-hidden">Likes:</span><i class="fas fa-heart" aria-hidden="true"><a href="events.jsp?iid=<%=rs.getString("id")%>" >Book Event</a></i></li>
            <li class="gallery-item-comments"><span class="visually-hidden">Comments:</span><i class="fas fa-comment" aria-hidden="true"></i>  
</li>
          </ul>
          
        </div>

      </div>
<%} if(rs.next()){%>
      <div class="gallery-item" tabindex="0">

        <img src="images/<%=rs.getString("image") %>" class="gallery-image" alt="">

        <div class="gallery-item-type">

          <span class="visually-hidden">Gallery</span><i class="fas fa-clone" aria-hidden="true"></i>

        </div>

        <div class="gallery-item-info">

          <ul>
            <li class="gallery-item-likes"><span class="visually-hidden">Likes:</span><i class="fas fa-heart" aria-hidden="true"><a href="events.jsp?iid=<%=rs.getString("id")%>" >Book Event</a></i></li>
            <li class="gallery-item-comments"><span class="visually-hidden">Comments:</span><i class="fas fa-comment" aria-hidden="true"></i> </li>
          </ul>

        </div>

      </div>
<%} if(rs.next()){%>
      <div class="gallery-item" tabindex="0">

        <img src="images/<%=rs.getString("image") %>" class="gallery-image" alt="">

        <div class="gallery-item-type">

          <span class="visually-hidden">Video</span><i class="fas fa-video" aria-hidden="true"></i>

        </div>

        <div class="gallery-item-info">

          <ul>
            <li class="gallery-item-likes"><span class="visually-hidden">Likes:</span><i class="fas fa-heart" aria-hidden="true"><a href="events.jsp?iid=<%=rs.getString("id")%>" >Book Event</a></i> 
</li>
            <li class="gallery-item-comments"><span class="visually-hidden">Comments:</span><i class="fas fa-comment" aria-hidden="true"></i>  </li>
          </ul>

        </div>

      </div>
<%} if(rs.next()){%>
      <div class="gallery-item" tabindex="0">

        <img src="images/<%=rs.getString("image") %>"  class="gallery-image" alt="">
        
        <div class="gallery-item-type">

          <span class="visually-hidden">Gallery</span><i class="fas fa-clone" aria-hidden="true"></i>

        </div>

        <div class="gallery-item-info">

          <ul>
            <li class="gallery-item-likes"><span class="visually-hidden">Likes:</span><i class="fas fa-heart" aria-hidden="true"><a href="events.jsp?iid=<%=rs.getString("id")%>" >Book Event</a></i></li>
            <li class="gallery-item-comments"><span class="visually-hidden">Comments:</span><i class="fas fa-comment" aria-hidden="true"></i> </li>
          </ul>

        </div>

      </div>
<%} if(rs.next()){%>
      <div class="gallery-item" tabindex="0">

        <img src="images/<%=rs.getString("image") %>" class="gallery-image" alt="">
        

        <div class="gallery-item-info">

          <ul>
            <li class="gallery-item-likes"><span class="visually-hidden">Likes:</span><i class="fas fa-heart" aria-hidden="true"></i> <a href="events.jsp?iid=<%=rs.getString("id")%>" >Book Event</a><li>
            <li class="gallery-item-comments"><span class="visually-hidden">Comments:</span><i class="fas fa-comment" aria-hidden="true"></i></li>
          </ul>

        </div>

      </div>
<%} if(rs.next()){%>
      <div class="gallery-item" tabindex="0">

        <img src="images/<%=rs.getString("image") %>" class="gallery-image" alt="">

        <div class="gallery-item-type">

          <span class="visually-hidden">Gallery</span><i class="fas fa-clone" aria-hidden="true"></i>

        </div>

        <div class="gallery-item-info">

          <ul>
            <li class="gallery-item-likes"><span class="visually-hidden">Likes:</span><i class="fas fa-heart" aria-hidden="true"></i> <a href="events.jsp?iid=<%=rs.getString("id")%>" >Book Event</a></li>
            <li class="gallery-item-comments"><span class="visually-hidden">Comments:</span><i class="fas fa-comment" aria-hidden="true"></i> </li>
          </ul>

        </div>

      </div>

    </div> 

     

      

      
     
   <%}%>
    <!-- End of gallery -->

    <div class=""></div>

  </div>
  
        
    </main>  </span>
  <span id="slide03">
  <header>

  <div class="container"> <div class="profile">

     

      <div class="profile-user-settings">

        <h1 class="profile-user-name">Tour & travels</h1><br>

      
		
      </div>

      <div class="profile-bio">

        <p><span class="profile-real-name">Tour operators </span> manage tour from beginning to the end of the tour. A tour operator has the responsibility to look after the finer details of a vacation or tour such as hotel, accommodation, meals, conveyance etc. Tour operators provide travel guide, escorting services and arrange all travel related needs and wants.</p>
 
      </div>

    </div>
    <!-- End of profile section -->

  </div>
    
   
  <!-- End of container -->
  
</header>    
<main>
<%
String q3="select id,image from eplanner where speci='Tour and travels'";
st=con.createStatement();
rs=st.executeQuery(q3);
if(rs.next()){  
	
  String sn=rs.getString("image"); %>
  <div class="container">

    <div class="gallery">

      <div class="gallery-item" tabindex="0">
             
        <img src="images/<%=sn%>" class="gallery-image" alt="">

        <div class="gallery-item-info">

          <ul>
            <li class="gallery-item-likes"><span class="visually-hidden"></span><i class="fas fa-heart" aria-hidden="true"></i><a href="events.jsp?iid=<%=rs.getString("id")%>" >Book Event</a> </li><br>       
            <li class="gallery-item-comments"><span class="visually-hidden">Comments:</span><i class="fas fa-comment" aria-hidden="true"></i></li>
          </ul>

        </div>

      </div>
<% }if(rs.next()){%>
      <div class="gallery-item" tabindex="0">

        <img src="images/<%=rs.getString("image") %>" class="gallery-image" alt="">

        <div class="gallery-item-info">

          <ul>
            <li class="gallery-item-likes"><span class="visually-hidden">Likes:</span><i class="fas fa-heart" aria-hidden="true"><a href="events.jsp?iid=<%=rs.getString("id")%>" >Book Event</a></i></li>
            <li class="gallery-item-comments"><span class="visually-hidden">Comments:</span><i class="fas fa-comment" aria-hidden="true"></i>  
</li>
          </ul>
          
        </div>

      </div>
<%} if(rs.next()){%>
      <div class="gallery-item" tabindex="0">

        <img src="images/<%=rs.getString("image") %>" class="gallery-image" alt="">

        <div class="gallery-item-type">

          <span class="visually-hidden">Gallery</span><i class="fas fa-clone" aria-hidden="true"></i>

        </div>

        <div class="gallery-item-info">

          <ul>
            <li class="gallery-item-likes"><span class="visually-hidden">Likes:</span><i class="fas fa-heart" aria-hidden="true"><a href="events.jsp?iid=<%=rs.getString("id")%>" >Book Event</a></i></li>
            <li class="gallery-item-comments"><span class="visually-hidden">Comments:</span><i class="fas fa-comment" aria-hidden="true"></i> </li>
          </ul>

        </div>

      </div>
<%} if(rs.next()){%>
      <div class="gallery-item" tabindex="0">

        <img src="images/<%=rs.getString("image") %>" class="gallery-image" alt="">

        <div class="gallery-item-type">

          <span class="visually-hidden">Video</span><i class="fas fa-video" aria-hidden="true"></i>

        </div>

        <div class="gallery-item-info">

          <ul>
            <li class="gallery-item-likes"><span class="visually-hidden">Likes:</span><i class="fas fa-heart" aria-hidden="true"><a href="events.jsp?iid=<%=rs.getString("id")%>" >Book Event</a></i> 
</li>
            <li class="gallery-item-comments"><span class="visually-hidden">Comments:</span><i class="fas fa-comment" aria-hidden="true"></i>  </li>
          </ul>

        </div>

      </div>
<%} if(rs.next()){%>
      <div class="gallery-item" tabindex="0">

        <img src="images/<%=rs.getString("image") %>"  class="gallery-image" alt="">
        
        <div class="gallery-item-type">

          <span class="visually-hidden">Gallery</span><i class="fas fa-clone" aria-hidden="true"></i>

        </div>

        <div class="gallery-item-info">

          <ul>
            <li class="gallery-item-likes"><span class="visually-hidden">Likes:</span><i class="fas fa-heart" aria-hidden="true"><a href="events.jsp?iid=<%=rs.getString("id")%>" >Book Event</a></i></li>
            <li class="gallery-item-comments"><span class="visually-hidden">Comments:</span><i class="fas fa-comment" aria-hidden="true"></i> </li>
          </ul>

        </div>

      </div>
<%} if(rs.next()){%>
      <div class="gallery-item" tabindex="0">

        <img src="images/<%=rs.getString("image") %>" class="gallery-image" alt="">
        

        <div class="gallery-item-info">

          <ul>
            <li class="gallery-item-likes"><span class="visually-hidden">Likes:</span><i class="fas fa-heart" aria-hidden="true"><a href="events.jsp?iid=<%=rs.getString("id")%>" >Book Event</a></i> <li>
            <li class="gallery-item-comments"><span class="visually-hidden">Comments:</span><i class="fas fa-comment" aria-hidden="true"></i></li>
          </ul>

        </div>

      </div>
<%} if(rs.next()){%>
      <div class="gallery-item" tabindex="0">

        <img src="images/<%=rs.getString("image") %>" class="gallery-image" alt="">

        <div class="gallery-item-type">

          <span class="visually-hidden">Gallery</span><i class="fas fa-clone" aria-hidden="true"></i>

        </div>

        <div class="gallery-item-info">

          <ul>
            <li class="gallery-item-likes"><span class="visually-hidden">Likes:</span><i class="fas fa-heart" aria-hidden="true"><a href="events.jsp?iid=<%=rs.getString("id")%>" >Book Event</a></i> </li>
            <li class="gallery-item-comments"><span class="visually-hidden">Comments:</span><i class="fas fa-comment" aria-hidden="true"></i> </li>
          </ul>

        </div>

      </div>

    </div> 

     

      

      
     
   <%}%>
  
    <!-- End of gallery -->

    <div class=""></div>

  </div>
</main> </span>

   <span id="slide04"><header>

  <div class="container"> <div class="profile">

     

      <div class="profile-user-settings">

        <h1 class="profile-user-name">Social gathering/House Parties</h1><br>

      
		
      </div>

      <div class="profile-bio">

        <p><span class="profile-real-name">Social gathering </span> is defined as interactions among a diversity of individuals of all abilities in small, medium and large groups for social and community purposes.A house party might be organized several months, or down to just a few hours, in advance.</p>
 
      </div>

    </div>
    <!-- End of profile section -->

  </div>
    
   
  <!-- End of container -->
  
</header>    
<main>
<%
String q5="select id,image from eplanner where speci='Social gathering'";
st=con.createStatement();
rs=st.executeQuery(q5);
if(rs.next()){  
  String sn=rs.getString("image"); %>
  <div class="container">

    <div class="gallery">

      <div class="gallery-item" tabindex="0">
             
        <img src="images/<%=sn%>" class="gallery-image" alt="">

        <div class="gallery-item-info">

          <ul>
            <li class="gallery-item-likes"><span class="visually-hidden"></span><i class="fas fa-heart" aria-hidden="true"><a href="events.jsp?iid=<%=rs.getString("id")%>" >Book Event</a></i> </li><br>       
            <li class="gallery-item-comments"><span class="visually-hidden">Comments:</span><i class="fas fa-comment" aria-hidden="true"></i></li>
          </ul>

        </div>

      </div>
<% }if(rs.next()){%>
      <div class="gallery-item" tabindex="0">

        <img src="images/<%=rs.getString("image") %>" class="gallery-image" alt="">

        <div class="gallery-item-info">

          <ul>
            <li class="gallery-item-likes"><span class="visually-hidden">Likes:</span><i class="fas fa-heart" aria-hidden="true"><a href="events.jsp?iid=<%=rs.getString("id")%>" >Book Event</a></i></li>
            <li class="gallery-item-comments"><span class="visually-hidden">Comments:</span><i class="fas fa-comment" aria-hidden="true"></i>  
</li>
          </ul>
          
        </div>

      </div>
<%} if(rs.next()){%>
      <div class="gallery-item" tabindex="0">

        <img src="images/<%=rs.getString("image") %>" class="gallery-image" alt="">

        <div class="gallery-item-type">

          <span class="visually-hidden">Gallery</span><i class="fas fa-clone" aria-hidden="true"></i>

        </div>

        <div class="gallery-item-info">

          <ul>
            <li class="gallery-item-likes"><span class="visually-hidden">Likes:</span><i class="fas fa-heart" aria-hidden="true"><a href="events.jsp?iid=<%=rs.getString("id")%>" >Book Event</a></i></li>
            <li class="gallery-item-comments"><span class="visually-hidden">Comments:</span><i class="fas fa-comment" aria-hidden="true"></i> </li>
          </ul>

        </div>

      </div>
<%} if(rs.next()){%>
      <div class="gallery-item" tabindex="0">

        <img src="images/<%=rs.getString("image") %>" class="gallery-image" alt="">

        <div class="gallery-item-type">

          <span class="visually-hidden">Video</span><i class="fas fa-video" aria-hidden="true"></i>

        </div>

        <div class="gallery-item-info">

          <ul>
            <li class="gallery-item-likes"><span class="visually-hidden">Likes:</span><i class="fas fa-heart" aria-hidden="true"><a href="events.jsp?iid=<%=rs.getString("id")%>" >Book Event</a></i> 
</li>
            <li class="gallery-item-comments"><span class="visually-hidden">Comments:</span><i class="fas fa-comment" aria-hidden="true"></i>  </li>
          </ul>

        </div>

      </div>
<%} if(rs.next()){%>
      <div class="gallery-item" tabindex="0">

        <img src="images/<%=rs.getString("image") %>"  class="gallery-image" alt="">
        
        <div class="gallery-item-type">

          <span class="visually-hidden">Gallery</span><i class="fas fa-clone" aria-hidden="true"></i>

        </div>

        <div class="gallery-item-info">

          <ul>
            <li class="gallery-item-likes"><span class="visually-hidden">Likes:</span><i class="fas fa-heart" aria-hidden="true"><a href="events.jsp?iid=<%=rs.getString("id")%>" >Book Event</a></i></li>
            <li class="gallery-item-comments"><span class="visually-hidden">Comments:</span><i class="fas fa-comment" aria-hidden="true"></i> </li>
          </ul>

        </div>

      </div>
<%} if(rs.next()){%>
      <div class="gallery-item" tabindex="0">

        <img src="images/<%=rs.getString("image") %>" class="gallery-image" alt="">
        

        <div class="gallery-item-info">

          <ul>
            <li class="gallery-item-likes"><span class="visually-hidden">Likes:</span><i class="fas fa-heart" aria-hidden="true"></i> <li>
            <li class="gallery-item-comments"><span class="visually-hidden">Comments:</span><i class="fas fa-comment" aria-hidden="true"></i></li>
          </ul>

        </div>

      </div>
<%} if(rs.next()){%>
      <div class="gallery-item" tabindex="0">

        <img src="images/<%=rs.getString("image") %>" class="gallery-image" alt="">

        <div class="gallery-item-type">

          <span class="visually-hidden">Gallery</span><i class="fas fa-clone" aria-hidden="true"></i>

        </div>

        <div class="gallery-item-info">

          <ul>
            <li class="gallery-item-likes"><span class="visually-hidden">Likes:</span><i class="fas fa-heart" aria-hidden="true"><a href="events.jsp?iid=<%=rs.getString("id")%>" >Book Event</a></i> </li>
            <li class="gallery-item-comments"><span class="visually-hidden">Comments:</span><i class="fas fa-comment" aria-hidden="true"></i> </li>
          </ul>

        </div>

      </div>

    </div> 
 <%}%>
    <!-- End of gallery -->

    <div class=""></div>

  </div>
  
        
    </main>  </span>
 <span id="slide05">  <header>

  <div class="container"> <div class="profile">

    <div class="profile-user-settings">

        <h1 class="profile-user-name">Wedding Events</h1><br>

      </div>

      <div class="profile-bio">

        <p><span class="profile-real-name">Wedding </span> ceremonies serve several purposes, and they are often a cherished moment in a couples lives.The most important part of any wedding ceremony is the words utilized to proclaim never-ending love and appreciation between each unique couple and here we are going to make your wedding memorable and loving.</p>
                                            </div></p>
 
      </div>

    </div>
    <!-- End of profile section -->

  </div>
    
   
  <!-- End of container -->
  
</header>    
<main>
<%
String q6="select id,image from eplanner where speci='Wedding Events'";
st=con.createStatement();
rs=st.executeQuery(q6);
if(rs.next()){  
  String sn=rs.getString("image"); %>
  <div class="container">

    <div class="gallery">

      <div class="gallery-item" tabindex="0">
             
        <img src="images/<%=sn%>" class="gallery-image" alt="">

        <div class="gallery-item-info">

          <ul>
            <li class="gallery-item-likes"><span class="visually-hidden"></span><i class="fas fa-heart" aria-hidden="true"><a href="events.jsp?iid=<%=rs.getString("id")%>" >Book Event</a></i> </li><br>       
            <li class="gallery-item-comments"><span class="visually-hidden">Comments:</span><i class="fas fa-comment" aria-hidden="true"></i></li>
          </ul>

        </div>

      </div>
<% }if(rs.next()){%>
      <div class="gallery-item" tabindex="0">

        <img src="images/<%=rs.getString("image") %>" class="gallery-image" alt="">

        <div class="gallery-item-info">

          <ul>
            <li class="gallery-item-likes"><span class="visually-hidden">Likes:</span><i class="fas fa-heart" aria-hidden="true"><a href="events.jsp?iid=<%=rs.getString("id")%>" >Book Event</a></i></li>
            <li class="gallery-item-comments"><span class="visually-hidden">Comments:</span><i class="fas fa-comment" aria-hidden="true"></i>  
</li>
          </ul>
          
        </div>

      </div>
<%} if(rs.next()){%>
      <div class="gallery-item" tabindex="0">

        <img src="images/<%=rs.getString("image") %>" class="gallery-image" alt="">

        <div class="gallery-item-type">

          <span class="visually-hidden">Gallery</span><i class="fas fa-clone" aria-hidden="true"></i>

        </div>

        <div class="gallery-item-info">

          <ul>
            <li class="gallery-item-likes"><span class="visually-hidden">Likes:</span><i class="fas fa-heart" aria-hidden="true"><a href="events.jsp?iid=<%=rs.getString("id")%>" >Book Event</a></i></li>
            <li class="gallery-item-comments"><span class="visually-hidden">Comments:</span><i class="fas fa-comment" aria-hidden="true"></i> </li>
          </ul>

        </div>

      </div>
<%} if(rs.next()){%>
      <div class="gallery-item" tabindex="0">

        <img src="images/<%=rs.getString("image") %>" class="gallery-image" alt="">

        <div class="gallery-item-type">

          <span class="visually-hidden">Video</span><i class="fas fa-video" aria-hidden="true"></i>

        </div>

        <div class="gallery-item-info">

          <ul>
            <li class="gallery-item-likes"><span class="visually-hidden">Likes:</span><i class="fas fa-heart" aria-hidden="true"><a href="events.jsp?iid=<%=rs.getString("id")%>" >Book Event</a></i> 
</li>
            <li class="gallery-item-comments"><span class="visually-hidden">Comments:</span><i class="fas fa-comment" aria-hidden="true"></i>  </li>
          </ul>

        </div>

      </div>
<%} if(rs.next()){%>
      <div class="gallery-item" tabindex="0">

        <img src="images/<%=rs.getString("image") %>"  class="gallery-image" alt="">
        
        <div class="gallery-item-type">

          <span class="visually-hidden">Gallery</span><i class="fas fa-clone" aria-hidden="true"></i>

        </div>

        <div class="gallery-item-info">

          <ul>
            <li class="gallery-item-likes"><span class="visually-hidden">Likes:</span><i class="fas fa-heart" aria-hidden="true"><a href="events.jsp?iid=<%=rs.getString("id")%>" >Book Event</a></i></li>
            <li class="gallery-item-comments"><span class="visually-hidden">Comments:</span><i class="fas fa-comment" aria-hidden="true"></i> </li>
          </ul>

        </div>

      </div>
<%} if(rs.next()){%>
      <div class="gallery-item" tabindex="0">

        <img src="images/<%=rs.getString("image") %>" class="gallery-image" alt="">
        

        <div class="gallery-item-info">

          <ul>
            <li class="gallery-item-likes"><span class="visually-hidden">Likes:</span><i class="fas fa-heart" aria-hidden="true"><a href="events.jsp?iid=<%=rs.getString("id")%>" >Book Event</a></i> <li>
            <li class="gallery-item-comments"><span class="visually-hidden">Comments:</span><i class="fas fa-comment" aria-hidden="true"></i></li>
          </ul>

        </div>

      </div>
<%} if(rs.next()){%>
      <div class="gallery-item" tabindex="0">

        <img src="images/<%=rs.getString("image") %>" class="gallery-image" alt="">

        <div class="gallery-item-type">

          <span class="visually-hidden">Gallery</span><i class="fas fa-clone" aria-hidden="true"></i>

        </div>

        <div class="gallery-item-info">

          <ul>
            <li class="gallery-item-likes"><span class="visually-hidden">Likes:</span><i class="fas fa-heart" aria-hidden="true"><a href="events.jsp?iid=<%=rs.getString("id")%>" >Book Event</a></i> </li>
            <li class="gallery-item-comments"><span class="visually-hidden">Comments:</span><i class="fas fa-comment" aria-hidden="true"></i> </li>
          </ul>

        </div>

      </div>

    </div> 

     

      

      
     
   <%}%>
    <!-- End of gallery -->

    <div class=""></div>

  </div>
  
        
    </main>      
</span>
<span id="slide06">
<header>

  <div class="container"> <div class="profile">

     

      <div class="profile-user-settings">

        <h1 class="profile-user-name">Other Events</h1><br>

      
		
      </div>

      <div class="profile-bio">

        <p><span class="profile-real-name">The </span> sole purpose of any event is that a group of people will convene in one particular place for one particular purpose at a given time. Now that could be various purposes such as a wedding, a business networking function, a church gathering, etc. </p>
 
      </div>

    </div>
    <!-- End of profile section -->

  </div>
    
   
  <!-- End of container -->
  
</header>    
<main>
<%
String q4="select id,image from eplanner where speci='Other'";
st=con.createStatement();
rs=st.executeQuery(q4);
if(rs.next()){  
  String sn=rs.getString("image"); %>
  <div class="container">

    <div class="gallery">

      <div class="gallery-item" tabindex="0">
             
        <img src="images/<%=sn%>" class="gallery-image" alt="">

        <div class="gallery-item-info">

          <ul>
            <li class="gallery-item-likes"><span class="visually-hidden"></span><i class="fas fa-heart" aria-hidden="true"><a href="events.jsp?iid=<%=rs.getString("id")%>" >Book Event</a></i> </li><br>       
            <li class="gallery-item-comments"><span class="visually-hidden">Comments:</span><i class="fas fa-comment" aria-hidden="true"></i></li>
          </ul>

        </div>

      </div>
<% }if(rs.next()){%>
      <div class="gallery-item" tabindex="0">

        <img src="images/<%=rs.getString("image") %>" class="gallery-image" alt="">

        <div class="gallery-item-info">

          <ul>
            <li class="gallery-item-likes"><span class="visually-hidden">Likes:</span><i class="fas fa-heart" aria-hidden="true"><a href="events.jsp?iid=<%=rs.getString("id")%>" >Book Event</a></i></li>
            <li class="gallery-item-comments"><span class="visually-hidden">Comments:</span><i class="fas fa-comment" aria-hidden="true"></i>  
</li>
          </ul>
          
        </div>

      </div>
<%} if(rs.next()){%>
      <div class="gallery-item" tabindex="0">

        <img src="images/<%=rs.getString("image") %>" class="gallery-image" alt="">

        <div class="gallery-item-type">

          <span class="visually-hidden">Gallery</span><i class="fas fa-clone" aria-hidden="true"></i>

        </div>

        <div class="gallery-item-info">

          <ul>
            <li class="gallery-item-likes"><span class="visually-hidden">Likes:</span><i class="fas fa-heart" aria-hidden="true"><a href="events.jsp?iid=<%=rs.getString("id")%>" >Book Event</a></i></li>
            <li class="gallery-item-comments"><span class="visually-hidden">Comments:</span><i class="fas fa-comment" aria-hidden="true"></i> </li>
          </ul>

        </div>

      </div>
<%} if(rs.next()){%>
      <div class="gallery-item" tabindex="0">

        <img src="images/<%=rs.getString("image") %>" class="gallery-image" alt="">

        <div class="gallery-item-type">

          <span class="visually-hidden">Video</span><i class="fas fa-video" aria-hidden="true"></i>

        </div>

        <div class="gallery-item-info">

          <ul>
            <li class="gallery-item-likes"><span class="visually-hidden">Likes:</span><i class="fas fa-heart" aria-hidden="true"><a href="events.jsp?iid=<%=rs.getString("id")%>" >Book Event</a></i> 
</li>
            <li class="gallery-item-comments"><span class="visually-hidden">Comments:</span><i class="fas fa-comment" aria-hidden="true"></i>  </li>
          </ul>

        </div>

      </div>
<%} if(rs.next()){%>
      <div class="gallery-item" tabindex="0">

        <img src="images/<%=rs.getString("image") %>"  class="gallery-image" alt="">
        
        <div class="gallery-item-type">

          <span class="visually-hidden">Gallery</span><i class="fas fa-clone" aria-hidden="true"></i>

        </div>

        <div class="gallery-item-info">

          <ul>
            <li class="gallery-item-likes"><span class="visually-hidden">Likes:</span><i class="fas fa-heart" aria-hidden="true"><a href="events.jsp?iid=<%=rs.getString("id")%>" >Book Event</a></i></li>
            <li class="gallery-item-comments"><span class="visually-hidden">Comments:</span><i class="fas fa-comment" aria-hidden="true"></i> </li>
          </ul>

        </div>

      </div>
<%} if(rs.next()){%>
      <div class="gallery-item" tabindex="0">

        <img src="images/<%=rs.getString("image") %>" class="gallery-image" alt="">
        

        <div class="gallery-item-info">

          <ul>
            <li class="gallery-item-likes"><span class="visually-hidden">Likes:</span><i class="fas fa-heart" aria-hidden="true"><a href="events.jsp?iid=<%=rs.getString("id")%>" >Book Event</a></i> <li>
            <li class="gallery-item-comments"><span class="visually-hidden">Comments:</span><i class="fas fa-comment" aria-hidden="true"></i></li>
          </ul>

        </div>

      </div>
<%} if(rs.next()){%>
      <div class="gallery-item" tabindex="0">

        <img src="images/<%=rs.getString("image") %>" class="gallery-image" alt="">

        <div class="gallery-item-type">

          <span class="visually-hidden">Gallery</span><i class="fas fa-clone" aria-hidden="true"></i>

        </div>

        <div class="gallery-item-info">

          <ul>
            <li class="gallery-item-likes"><span class="visually-hidden">Likes:</span><i class="fas fa-heart" aria-hidden="true"><a href="events.jsp?iid=<%=rs.getString("id")%>" >Book Event</a></i> </li>
            <li class="gallery-item-comments"><span class="visually-hidden">Comments:</span><i class="fas fa-comment" aria-hidden="true"></i> </li>
          </ul>

        </div>

      </div>

    </div> 
 <%}%>
    <!-- End of gallery -->

    <div class=""></div>

  </div>
  
 </main> </span>
</body>
</html>