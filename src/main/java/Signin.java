import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;



@WebServlet("/Signin")
public class Signin extends HttpServlet {
	private static final String sql = "INSERT INTO userdata (username, password) VALUES (?, ?)";
    String url = "jdbc:mysql://localhost:3306/logindatabase";
    String username = "root";
    String password = "kushalgupta@27";
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("uname");
		String pass=request.getParameter("pass");
		String conpass=request.getParameter("confirmpass");
		
		if(name!=null && !name.isEmpty() && pass!=null && !pass.isEmpty() && conpass!=null && !conpass.isEmpty() && pass.equals(conpass)  ) {
	        try {
	            Class.forName("com.mysql.cj.jdbc.Driver");
	            Connection con = DriverManager.getConnection(url, username, password);
	            PreparedStatement st = con.prepareStatement(sql);
	            st.setString(1, name);
	            st.setString(2, pass);
	            int count = st.executeUpdate();
	            if (count== 0) {
	                System.out.println("User not registered successfully");
	            }
	            else {
	            	response.sendRedirect("login.jsp");
	            }
	            
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
		}
		else {
			response.sendRedirect("Signin.jsp");
		}
	    }
		
	}
