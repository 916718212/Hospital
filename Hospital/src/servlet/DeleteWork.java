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
import dao.WorkDao;

public class DeleteWork extends HttpServlet {

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
		String detail = new String(request.getParameter("delete_detail").getBytes("iso-8859-1"), "utf-8");
		WorkDao workDao = new WorkDao();
		try {
			MessageDao md = new MessageDao();
			String account = (String)request.getSession().getAttribute("account");
			md.addMessage("删除任务成功", account);
			//将删除状态存入session中,若为-1，则为失败；为0，无删除状态；为1，则为成功；
			request.getSession().setAttribute("status_delete_work","1");
			workDao.deleteWork(detail);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		RequestDispatcher rd = request.getRequestDispatcher("/manager_Work.jsp?search=");
		rd.forward(request, response);
	}

}
