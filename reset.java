

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class reset
 */
@WebServlet("/reset")
public class reset extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		String email= request.getParameter("email");
		String p1=request.getParameter("password");
		String p2=request.getParameter("confirm");
//		System.out.println(email);
//		System.out.println(p1);
//		System.out.println(p2);

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/adv","root","");
		
			if(p1!=null&&p2!=null){
				String q="update login set pass=? where id='"+email+"'";
				PreparedStatement pst=con.prepareStatement(q);
				pst.setString(1,p1);
				int i=pst.executeUpdate();	
				if(i>0)
				{
					response.sendRedirect("login.html");
				}
			}
		}
		catch (Exception e) {
			// TODO Auto-generated catch block
			out.println(e);
		}
	}

}
