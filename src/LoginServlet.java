

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login.html")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			String username=request.getParameter("username");
			String password=request.getParameter("password");
			Subject subject=SecurityUtils.getSubject();
			UsernamePasswordToken token=new UsernamePasswordToken(username,password);
			try{
				subject.login(token);
				request.getRequestDispatcher("/success.jsp").forward(request, response);
			}
			catch(AuthenticationException e){
				e.printStackTrace();
				request.setAttribute("error", "用户名或者密码错误");
				request.getRequestDispatcher("/login.jsp").forward(request, response);
			}
	}

}
