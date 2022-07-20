package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MessageDao;
import dao.UserDao;

public class Manager_Login extends HttpServlet {

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
		this.doPost(request, response);
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
		UserDao ud = new UserDao();
		String account = request.getParameter("account");
		String password = request.getParameter("password");
		MessageDao md = new MessageDao();
		try {
			if(ud.managerCheckLogin(account, password)){
				//将管理员账号存入session中
				request.getSession().setAttribute("account",account);
				//将登录状态存入session中,若为-1，则为失败；为0，未登录状态；为1，则为成功；
				request.getSession().setAttribute("status_manager_login","1");
				//添加管理员登录信息
				md.addMessage("登录后台成功", account);
				//跳转到主页面
				RequestDispatcher rd = request.getRequestDispatcher("/manager_Index.jsp");
				rd.forward(request, response);
			}
			else{
				//将登录状态存入session中,若为-1，则为失败；为0，未登录状态；为1，则为成功；
				request.getSession().setAttribute("status_manager_login","-1");
				//跳转到登录页面
				RequestDispatcher rd = request.getRequestDispatcher("/manager_Login.jsp");
				rd.forward(request, response);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
