import java.io.PrintWriter;
//import javax.servlet.http.HttpSession;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import java.io.InputStream;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
@WebServlet("/profile")
@MultipartConfig(fileSizeThreshold=1024*1024*2,maxFileSize=1024*1024*10,maxRequestSize=1024*1024*50)

public class profile extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out= response.getWriter();
		response.setContentType("text/html");
		String id=request.getParameter("id");
		//System.out.println(id);
		String name= request.getParameter("name");
		String description= request.getParameter("message");
		Part part=request.getPart("myimg");
		String filename=part.getSubmittedFileName();
		String savePath="D:/j2ee/project/WebContent/images/"+filename;
		try{
			FileOutputStream filesave=new FileOutputStream(savePath);
			InputStream is=part.getInputStream();
			byte []data=new byte[is.available()];
			is.read(data);
			filesave.write(data);
			filesave.close();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		//PreparedStatement st=null;
		 try{
		    Class.forName("com.mysql.jdbc.Driver");
		     Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/adv", "root", "");
		     String qr="insert into eplanner(id) values(?)";
		    PreparedStatement st=con.prepareStatement(qr);
		     st.setString(1, id);
		     int r=st.executeUpdate();
		     String qr2="update login set company=?,description=?,image=? where id=?";
		     st=con.prepareStatement(qr2);
		     st.setString(1, name);
		     st.setString(2, description);
		     st.setString(3, filename);
		     st.setString(4, id);
		     
		     int s=st.executeUpdate();
		     RequestDispatcher rd=request.getRequestDispatcher("Viewprofile.jsp");
		     request.setAttribute("eid", id);
		     
		     if(r>0) {
		    	 rd.include(request, response);      
			    out.println("data sent");
			}
		     
			else{
				rd.include(request, response);
			    out.println("data not sent");}
		
		
	}
		catch(Exception e){
		out.println(e);
		}
		
		
	}
	
}