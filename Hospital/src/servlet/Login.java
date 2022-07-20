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

import entity.Customer;

public class Login extends HttpServlet {

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
		String account = request.getParameter("account_login");
		String password = request.getParameter("password_login");
		UserDao ud = new UserDao();
		MessageDao md = new MessageDao();
		try {
			//登录成功
			Customer customer = ud.customerCheckLogin(account, password);
			if(customer!=null){
				//将顾客信息存入session中，用于判断是否登录
				request.getSession().setAttribute("customer",customer);
				//将登录状态存入session中,若为-1，则为失败；为0，未登录状态；为1，则为成功；
				request.getSession().setAttribute("status_login","1");
				//添加登录信息
				md.addMessage("登录了客户端", account);
				//跳转到主页面
				RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
				rd.forward(request, response);
			}
			//登录失败
			else{
				//将登录状态存入session中,若为-1，则为失败；为0，未登录状态；为1，则为成功；
				request.getSession().setAttribute("status_login","-1");
				//返回登录页面
				RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");
				rd.forward(request, response);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
