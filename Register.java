

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Register
 */
@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	
		//System.out.println("hiii");
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String id=request.getParameter("id");
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String address=request.getParameter("address");
		String contact=request.getParameter("contact");
		String pwd=request.getParameter("pwd");
		
		
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/adv","root","");
			String qr="insert into login values(?,?,?,?,?,?,?,?,?)";
			PreparedStatement ps=con.prepareStatement(qr);
			ps.setString(1, id);
			ps.setString(2, name);
			ps.setString(3, email);
			ps.setString(4, address);
			ps.setString(5, contact);
			ps.setString(6, pwd);
			ps.setString(7, null);
			ps.setString(8, null);
			ps.setString(9, null);
				
			int i=ps.executeUpdate();
			if(i>0)
			{
				 RequestDispatcher rd=request.getRequestDispatcher("login.html");
			     rd.forward(request,response);
			     out.println("data sent");
				//response.sendRedirect("login.html");
			}
			else
			{
				out.println("can't register");
			}
			con.close();
		} catch (Exception e) {
			out.println(e);
		}

	}

}
