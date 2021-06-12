


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
 * Servlet implementation class Update
 */

@WebServlet("/Userupdate")

public class Userupdate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		String pid=request.getParameter("id");
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String address=request.getParameter("address");
		String contact=request.getParameter("contact");
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/adv","root","");
			String qr="update login set name=?,email=?,address=?,contact=? where id=?";
			PreparedStatement ps=con.prepareStatement(qr);
			ps.setString(5, pid);
			ps.setString(1, name);
			ps.setString(2, email);
			ps.setString(3, address);
			ps.setString(4, contact);
//			out.println(pid);
//			out.println(name);
//			out.println(email);
//			out.println(address);
//			out.println(contact);
//			
			
			int i=ps.executeUpdate();
			RequestDispatcher rd=request.getRequestDispatcher("Userprofile.jsp");
			if(i>0)
			{
				rd.include(request, response);
				out.println("record updated");
			}
			else
			{
				rd.include(request, response);
				out.println("record not updated");
			}
			con.close();
		} catch (Exception e) {
			out.println(e);
		}
	}

}
