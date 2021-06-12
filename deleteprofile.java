import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/deleteprofile")
public class deleteprofile extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		HttpSession session=request.getSession();
		String id=(String)session.getAttribute("pid");
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/adv","root","");
			PreparedStatement ps=con.prepareStatement("update login set company=?,description=?,image=? where id=?");
			ps.setString(1, null);
			ps.setString(2, null);
			ps.setString(3, null);
			ps.setString(4, id);
			int r=ps.executeUpdate();
			ps=con.prepareStatement("delete from eplanner where id=?");
			ps.setString(1, id);
			int s=ps.executeUpdate();
			if(r>0&&s>0) {
				response.sendRedirect("Dashboard.jsp#slide03");
			}
			ps.close();
			con.close();
		}
		catch(Exception e) {}
		
	}

}
