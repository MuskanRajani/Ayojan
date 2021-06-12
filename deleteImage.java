

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
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class deleteImage
 */
@WebServlet("/deleteImage")
public class deleteImage extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
				PrintWriter out=response.getWriter();
				String im=request.getParameter("event");
				response.getWriter().println(im);
				HttpSession session=request.getSession();
				String id=(String)session.getAttribute("pid");
				System.out.println(id);
				try {
					Class.forName("com.mysql.jdbc.Driver");
					Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/adv","root","");
					PreparedStatement ps=con.prepareStatement("delete from eplanner where id=? and image=?");
					ps.setString(1,id);
					ps.setString(2,im);
					int i=ps.executeUpdate();
					if(i>0) {
						response.sendRedirect("Viewprofile.jsp");
					}
				
				}
				catch(Exception e) {
					out.println(e);
				}
			}

		

	}


