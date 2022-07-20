package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDao;

public class Password extends HttpServlet {

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
		String account = (String)request.getParameter("account");
		UserDao ud = new UserDao();
		ResultSet rs = ud.getCustomer("SELECT * FROM customer WHERE account="+account);
		try {
			//如果该账号存在,则跳转到password_2页面
			if(rs.next()){
				request.getSession().setAttribute("account",account);
				RequestDispatcher rd = request.getRequestDispatcher("/password_2.jsp");
				rd.forward(request, response);
			}
			//账号不存在，设置输入账号状态为-1,即不存在该账号,并返回password页面
			else{
				request.getSession().setAttribute("status_account","-1");
				RequestDispatcher rd = request.getRequestDispatcher("/password.jsp");
				rd.forward(request, response);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
