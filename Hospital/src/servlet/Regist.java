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

public class Regist extends HttpServlet {

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
		String name = request.getParameter("name_regist");
		String account = request.getParameter("account_regist");
		String password = request.getParameter("password_regist");
		Customer customer = new Customer(name,account,password);
		UserDao ud = new UserDao();
		MessageDao md = new MessageDao();
		try {
			//注册成功
			if(ud.customerLogin(customer)==true){
				//将注册状态存入session中,若为-1，则为失败；为0，未注册状态；为1，则为成功；
				request.getSession().setAttribute("status_regist","1");
				//添加注册成功信息
				md.addMessage("注册了账号", account);
				//跳转到登录页面
				RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");
				rd.forward(request, response);
			}
			//注册失败
			else{
				//将注册状态存入session中,若为-1，则为失败；为0，未注册状态；为1，则为成功；
				request.getSession().setAttribute("status_regist","-1");
				//返回注册页面
				RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");
				rd.forward(request, response);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
