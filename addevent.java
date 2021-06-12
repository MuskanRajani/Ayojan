import java.io.PrintWriter;
//import javax.servlet.http.HttpSession;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import java.io.InputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
@WebServlet("/addevent")
@MultipartConfig(fileSizeThreshold=1024*1024*2,maxFileSize=1024*1024*10,maxRequestSize=1024*1024*50)

public class addevent extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out= response.getWriter();
		response.setContentType("text/html");
		String id=request.getParameter("id");
		//System.out.println(id);
		String speci="";
		String specification[]=request.getParameterValues("speci");
		
		for(int i=0;i<specification.length;i++){
			speci+=specification[i]+"$";
		}
		//out.println(specification[0]);
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
		     String qr="insert into eplanner(id,speci,image) values(?,?,?)";
		    PreparedStatement st=con.prepareStatement(qr);
		     st.setString(1, id);
		     st.setString(2, specification[0]);
		    
		     st.setString(3, filename);
			 
		     int r=st.executeUpdate();
		    if(r>0){
                 response.sendRedirect("Dashboard.jsp");
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