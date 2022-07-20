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

public class AddCustomer extends HttpServlet {

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
		String name = request.getParameter("add_name");
		String account = request.getParameter("add_account");
		String password = request.getParameter("add_password");
		Customer customer = new Customer(name,account,password);
		UserDao uDao = new UserDao();
		try {
			MessageDao md = new MessageDao();
			String account0 = (String)request.getSession().getAttribute("account");
			md.addMessage("添加顾客成功", account0);
			//将添加状态存入session中,若为-1，则为失败；为0，无添加状态；为1，则为成功；
			request.getSession().setAttribute("status_add_customer","1");
			uDao.customerLogin(customer);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		RequestDispatcher rd = request.getRequestDispatcher("/manager_Customer.jsp?search=");
		rd.forward(request, response);
	}

}
