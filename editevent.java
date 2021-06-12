import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

@MultipartConfig(fileSizeThreshold=1024*1024*2,maxFileSize=1024*1024*10,maxRequestSize=1024*1024*50)
@WebServlet("/editevent")
public class editevent extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out=response.getWriter();   
		response.setContentType("text/html");
		
		
		
		String  name=request.getParameter("name");
		String message=request.getParameter("message");
		
		Part part=request.getPart("myimg");
		String filename=part.getSubmittedFileName();
		
		String savePath="D:/j2ee/project/WebContent/images"+filename;
		try{
			FileOutputStream filesave=new FileOutputStream(savePath);
			InputStream is=part.getInputStream();
			byte data[]=new byte[is.available()];
			is.read(data);
			filesave.write(data);
			filesave.close();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		HttpSession session=request.getSession();
		String ide=(String)session.getAttribute("pid");
		
		PreparedStatement st=null;
		
		 try{
		    Class.forName("com.mysql.jdbc.Driver");
		     Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/adv", "root", "");
		        String qr="update login set company=?,description=?,image=? where id=?";
			     st=con.prepareStatement(qr);
			     st.setString(1, name);
			     st.setString(2, message);
			    
			     st.setString(3, filename);
				 st.setString(4, ide);
			     int r=st.executeUpdate();
		     		if(r>0) {
		     			RequestDispatcher rd=request.getRequestDispatcher("Viewprofile.jsp");
					     rd.include(request,response);
			                
			                out.println("data sent");
			            
		           }
		           else{
			         out.println("can't register");
		           }
	       }
		catch(Exception e){
		out.println(e);
		}
		
	}

}
