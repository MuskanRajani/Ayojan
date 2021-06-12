
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Searching")
public class Searching extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String search=request.getParameter("search");
		if(search.startsWith("concert")||search.startsWith("event")) {
			response.sendRedirect("eventc.jsp#slide01");
		}
		else if(search.startsWith("birthday")) {
			response.sendRedirect("eventc.jsp#slide02");
		}
		else if(search.startsWith("tour")) {
			response.sendRedirect("eventc.jsp#slide03");
		}
		else if(search.startsWith("Social")) {
			response.sendRedirect("eventc.jsp#slide04");
		}
		else if(search.startsWith("wedding")) {
			response.sendRedirect("eventc.jsp#slide05");
		}else if(search.startsWith("other")) {
			response.sendRedirect("eventc.jsp#slide06");
		}
		else  {
			response.sendRedirect("Dashboard.jsp#slide04");
		}
		
		
	}

}
