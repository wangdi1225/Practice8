

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AjaxServlet
 */
@WebServlet("/AjaxServlet")
public class AjaxServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AjaxServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");

		String username=request.getParameter("username");
		
		byte[] bytes = username.getBytes("ISO8859-1");
		username = new String(bytes,"UTF-8");
		System.out.println("开始");
		System.out.println("收到了请求"+username);
		String tip = "";		
		if("zhang".equals(username)||"wang".equals(username)||"guest".equals(username)){			
			tip = "用户名已经存在";
			System.out.println(tip);
		}
		else{			
			tip = "可以注册";
			System.out.println(tip);
		}		
		PrintWriter pw = response.getWriter();		
		pw.write(tip);		
		pw.flush();		
		pw.close();
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
