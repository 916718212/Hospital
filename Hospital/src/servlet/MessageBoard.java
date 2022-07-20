package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MessageBoardDao;
import dao.MessageDao;

import entity.Customer;
import entity.Message;

public class MessageBoard extends HttpServlet {

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
		Customer customer = (Customer)request.getSession().getAttribute("customer");
		MessageBoardDao mBD = new MessageBoardDao();
		String message = request.getParameter("message");
		String name = customer.getName();
		String phone = request.getParameter("phone");
		String account = customer.getAccount();
		String email = request.getParameter("email");
		Message messageBoard = new Message(message,name,phone,account,email);
		MessageDao md = new MessageDao();
		try {
			mBD.addMessageBoard(messageBoard);
			//将发送状态存入session中,若为-1，则为失败；为0，未发送状态；为1，则为成功；
			request.getSession().setAttribute("status_send","1");
			//添加留言信息
			md.addMessage("添加了一条留言", account);
			//返回留言板页面
			RequestDispatcher rd = request.getRequestDispatcher("/messageBoard.jsp");
			rd.forward(request, response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
