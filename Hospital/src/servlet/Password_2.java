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

import dao.MessageDao;
import dao.UserDao;

public class Password_2 extends HttpServlet {

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
		String code = request.getParameter("code");
		String randStr = (String)request.getSession().getAttribute("randStr");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		UserDao ud = new UserDao();
		String name = request.getParameter("name");
		String account = (String)request.getSession().getAttribute("account");
		String password = request.getParameter("password");
		ResultSet rs = ud.getCustomer("SELECT * FROM customer WHERE account="+account);
		MessageDao md = new MessageDao();
		try {
			rs.next();
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		try {
			//用户名有误
			if(!name.equals(rs.getString("name"))){
				request.getSession().setAttribute("status_name","-1");
				RequestDispatcher rd = request.getRequestDispatcher("/password_2.jsp");
				rd.forward(request, response);
			}
			//验证码有误
			else if(!code.equals(randStr)){
				request.getSession().setAttribute("status_code","-1");
				RequestDispatcher rd = request.getRequestDispatcher("/password_2.jsp");
				rd.forward(request, response);
			}
			else{
				//添加修改密码信息
				md.addMessage("修改了密码", account);
				ud.updatePassowrd(account, password);
				RequestDispatcher rd = request.getRequestDispatcher("/password_3.jsp");
				rd.forward(request, response);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
