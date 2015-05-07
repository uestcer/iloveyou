package cn.demiaowu.iloveyou;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
/**
 * 
 * @author demiaowu
 * @email cfreestar@163.com
 * verification of login
 */
public class LoginServlet extends HttpServlet {

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
		HttpSession session = request.getSession();
		String username = (String) request.getParameter("username");
		String password = (String) request.getParameter("password");
	

		
		if ((session.getAttribute("login") != null) && "yes".equals(session.getAttribute("login"))) {
			response.sendRedirect(request.getContextPath()+"/index.jsp");
		} else {
			if ("iloveyou".equals(username) && "iloveyou".equals(password)) {
				
				session.setAttribute("login", "yes");
				session.setAttribute("loginShow", "ÒÑµÇÂ¼");
				response.sendRedirect(request.getContextPath()+"/index.jsp");
			} else {
				session.setAttribute("loginError", "Error, please re-enter your user name and password.");
//				response.sendRedirect(request.getContextPath()+"/");
				request.getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);
					
			}
		}
		
		
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
