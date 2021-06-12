
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/confirm")
public class confirm extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try { 
			String id=request.getParameter("ID");
			String q="update booking set CONFIRMATION=? where USER_ID_O=?";
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/adv","root","");
			PreparedStatement st=con.prepareStatement(q);
			st.setString(1, "Confirm");
			st.setString(2, id);
			int r=st.executeUpdate();
			if(r>0) {
			response.sendRedirect("bookingP.jsp");}
		}catch(Exception e) {
			response.getWriter().println(e);
		}
	}

}
