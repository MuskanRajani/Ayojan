

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class admin
 */
@WebServlet("/admin")
public class admin extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	// TODO Auto-generated method stub
				String name=request.getParameter("name");
				String email=request.getParameter("email");
				String message=request.getParameter("message");
				String id=request.getParameter("id");
				try {
					Class.forName("com.mysql.jdbc.Driver");
					Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/adv","root","");
					PreparedStatement ps=con.prepareStatement("insert into admin(id,name,email,message) values(?,?,?,?)");
					ps.setString(1, id);
					ps.setString(2, name);
					ps.setString(3, email);
					ps.setString(4, message);
					int i=ps.executeUpdate();
					if(i>0) {
						response.sendRedirect("Dashboard.jsp");
					}
				}catch(Exception e) {
					response.getWriter().println(e);
				}
			}

	}

