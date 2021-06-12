<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>

<!DOCTYPE html>
<html lang="en">
<head>	
    <title>Ayojan - The Headline EPO</title>
    <link rel="stylesheet" href="css/viewprofile.css">
    <style>
 .aa{
 position:relative;
 left:1200px;
 display:float;
 justify-item:right;
 }
  #pp{ background-color:pink;
border-color:#860440 ;}
 </style>
 
</head>
    
    <body>
    
  <%
 String id=(String)request.getSession().getAttribute("pid");

	//System.out.println("priyanka"+id);

PreparedStatement ps=null;
Statement st=null;
ResultSet rs=null;
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/adv","root","");

String q1="select company,description,image from login where id='"+id+"'";
st=con.createStatement();
rs=st.executeQuery(q1);
String s1="";
String s2="";
String im="";
while(rs.next()){
	   s1=rs.getString("company");
	   s2=rs.getString("description");
	   im=rs.getString("image");
if(s1==null||s2==null||im==null){
	  response.sendRedirect("Dashboard.jsp#slide03");
}
%>
       <header>
<a href="deleteprofile" class="aa" onclick="return confirmation()"><button id="pp" class="btn profile-edit-btn">Delete Account</button></a>
<a href="Dashboard.jsp#slide03" class="aa"><button id="pp" class="btn profile-edit-btn">Back</button></a>

  <div class="container">
    
    <div class="profile">

      <div class="profile-image">
      
        <img src="images/<%=im %> " height="250px"  width="250px" alt="">

      </div>

      <div class="profile-user-settings">

        <h1 class="profile-user-name"><%=s1 %></h1><br>

       <a href="editprofile.jsp"> <button class="btn profile-edit-btn">Edit Profile</button><a>
		
		<a href="addevent.jsp?id=<%out.println(id); %>"><button class="btn profile-edit-btn">Add Event</button></a>
		
		
      </div>

      <div class="profile-bio">

        <p><span class="profile-real-name"><%=s1%></span><%=" "+s2 %></p>
 
      </div>

    </div>
    <!-- End of profile section -->

  </div>
  <!-- End of container -->
 <%} %>
</header>
<main>
<%
String qr="Select speci,image from eplanner where id='"+id+"'";
 st=con.createStatement();
 rs=st.executeQuery(qr);
if(rs.next())
{
	String sn=rs.getString("image"); 
//System.out.println(sn);%>

  <div class="container">

    <div class="gallery">

      <div class="gallery-item" tabindex="0">

        <img src="images/<%=sn%>" class="gallery-image" alt="">

        <div class="gallery-item-info">

          <ul>
     		    <li class="gallery-item-likes"><span class="visually-hidden">Likes:</span><i class="fas fa-heart" aria-hidden="true"></i><%=rs.getString("speci") %></li>
            <li class="gallery-item-comments"><span class="visually-hidden">Comments:</span><i class="fas fa-comment" aria-hidden="true"></i>  <a href="deleteImage?event=<%=rs.getString("image") %>">Delete Image</a></li>
          </ul>

        </div>

      </div>
<% }if(rs.next()){%>
      <div class="gallery-item" tabindex="0">

        <img src="images/<%=rs.getString("image") %>" class="gallery-image" alt="">

        <div class="gallery-item-info">

          <ul>
                <li class="gallery-item-likes"><span class="visually-hidden">Likes:</span><i class="fas fa-heart" aria-hidden="true"></i><%=rs.getString("speci") %></li>
            <li class="gallery-item-comments"><span class="visually-hidden">Comments:</span><i class="fas fa-comment" aria-hidden="true"></i>  <a href="deleteImage?event=<%=rs.getString("image") %>">Delete Image</a></li>
        
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
    <li class="gallery-item-likes"><span class="visually-hidden">Likes:</span><i class="fas fa-heart" aria-hidden="true"></i><%=rs.getString("speci") %></li>
            <li class="gallery-item-comments"><span class="visually-hidden">Comments:</span><i class="fas fa-comment" aria-hidden="true"></i>  <a href="deleteImage?event=<%=rs.getString("image") %>">Delete Image</a></li>
        
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
            <li class="gallery-item-likes"><span class="visually-hidden">Likes:</span><i class="fas fa-heart" aria-hidden="true"></i><%=rs.getString("speci") %></li>
            <li class="gallery-item-comments"><span class="visually-hidden">Comments:</span><i class="fas fa-comment" aria-hidden="true"></i>  <a href="deleteImage?event=<%=rs.getString("image") %>">Delete Image</a></li>
        
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
            <li class="gallery-item-likes"><span class="visually-hidden">Likes:</span><i class="fas fa-heart" aria-hidden="true"></i><%=rs.getString("speci") %></li>
            <li class="gallery-item-comments"><span class="visually-hidden">Comments:</span><i class="fas fa-comment" aria-hidden="true"></i>  <a href="deleteImage?event=<%=rs.getString("image") %>">Delete Image</a></li>
        
          </ul>

        </div>

      </div>
<%} if(rs.next()){%>
      <div class="gallery-item" tabindex="0">

        <img src="images/<%=rs.getString("image") %>" class="gallery-image" alt="">

        <div class="gallery-item-info">

          <ul>
            <li class="gallery-item-likes"><span class="visually-hidden">Likes:</span><i class="fas fa-heart" aria-hidden="true"></i><%=rs.getString("speci") %></li>
            <li class="gallery-item-comments"><span class="visually-hidden">Comments:</span><i class="fas fa-comment" aria-hidden="true"></i>  <a href="deleteImage?event=<%=rs.getString("image") %>">Delete Image</a></li>
        
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
		    <li class="gallery-item-likes"><span class="visually-hidden">Likes:</span><i class="fas fa-heart" aria-hidden="true"></i><%=rs.getString("speci") %></li>
            <li class="gallery-item-comments"><span class="visually-hidden">Comments:</span><i class="fas fa-comment" aria-hidden="true"></i>  <a href="deleteImage?event=<%=rs.getString("image") %>">Delete Image</a></li>
        
          </ul>

        </div>

      </div>
<%} if(rs.next()){%>
      <div class="gallery-item" tabindex="0">

        <img src="images/<%=rs.getString("image") %>" class="gallery-image" alt="">

        <div class="gallery-item-info">

          <ul>
            <li class="gallery-item-likes"><span class="visually-hidden">Likes:</span><i class="fas fa-heart" aria-hidden="true"></i><%=rs.getString("speci") %></li>
            <li class="gallery-item-comments"><span class="visually-hidden">Comments:</span><i class="fas fa-comment" aria-hidden="true"></i>  <a href="deleteImage?event=<%=rs.getString("image") %>">Delete Image</a></li>
        
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
            <li class="gallery-item-likes"><span class="visually-hidden">Likes:</span><i class="fas fa-heart" aria-hidden="true"></i><%=rs.getString("speci") %></li>
            <li class="gallery-item-comments"><span class="visually-hidden">Comments:</span><i class="fas fa-comment" aria-hidden="true"></i>  <a href="deleteImage?event=<%=rs.getString("image") %>">Delete Image</a></li>
          </ul>

        </div>

      </div>

<%} if(rs.next()){%>
      
      <div class="gallery-item" tabindex="0">

        <img src="images/<%=rs.getString("image") %>" class="gallery-image" alt="">

        <div class="gallery-item-info">

          <ul>
    <li class="gallery-item-likes"><span class="visually-hidden">Likes:</span><i class="fas fa-heart" aria-hidden="true"></i><%=rs.getString("speci") %></li>
            <li class="gallery-item-comments"><span class="visually-hidden">Comments:</span><i class="fas fa-comment" aria-hidden="true"></i>  <a href="deleteImage?event=<%=rs.getString("image") %>">Delete Image</a></li>
                  </ul>

        </div>

      </div>
<%} if(rs.next()){%>
      <div class="gallery-item" tabindex="0">

        <img src="images/<%=rs.getString("image") %>" class="gallery-image" alt="">

        <div class="gallery-item-info">

          <ul>
            <li class="gallery-item-likes"><span class="visually-hidden">Likes:</span><i class="fas fa-heart" aria-hidden="true"></i><%=rs.getString("speci") %></li>
            <li class="gallery-item-comments"><span class="visually-hidden">Comments:</span><i class="fas fa-comment" aria-hidden="true"></i>  <a href="deleteImage?event=<%=rs.getString("image") %>">Delete Image</a></li>
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
            <li class="gallery-item-likes"><span class="visually-hidden">Likes:</span><i class="fas fa-heart" aria-hidden="true"></i><%=rs.getString("speci") %></li>
            <li class="gallery-item-comments"><span class="visually-hidden">Comments:</span><i class="fas fa-comment" aria-hidden="true"></i>  <a href="deleteImage?event=<%=rs.getString("image") %>">Delete Image</a></li>
          </ul>

        </div>

      </div>

    </div>
    <%}%>
    <!-- End of gallery -->

  </div>
  <!-- End of container -->
        
    </main>
    <script>

function confirmation(){
	var x=confirm("Do you want to delete your account?");
	
		return x;

}
</script>

  </body>
</html>