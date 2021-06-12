
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/book")
public class book extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id=request.getParameter("iid");
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String message=request.getParameter("message");
		String ido=request.getParameter("iidd");
		try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/adv","root","");
		PreparedStatement ps=con.prepareStatement("insert into booking(USER_ID_P,NAME,EMAIL,MESSAGE,USER_ID_O,CONFIRMATION,COMPANY) values(?,?,?,?,?,?,?)");
		ps.setString(1, id);
		ps.setString(2, name);
		ps.setString(3, email);
		ps.setString(4, message);
		ps.setString(5, ido);
		ps.setString(6,"Not Confirm");
		ps.setString(7,request.getParameter("company"));
		int i=ps.executeUpdate();
		if(i>0) {
		RequestDispatcher r=request.getRequestDispatcher("Dashboard.jsp");
		r.include(request,response);
		response.getWriter().println("Booked Successfully");
		}
		else {
			RequestDispatcher r=request.getRequestDispatcher("events.jsp");
			r.include(request,response);
			response.getWriter().println("Not Booked");
		}
		}catch(Exception e)
		{
			response.getWriter().println(e);
		}
	}

	
}
