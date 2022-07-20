package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DbUnit;
import dao.EmergencyRescueDao;
import dao.MessageDao;
import entity.EmergencyRescue;

public class AddEmergencyRescue extends HttpServlet {

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
		String name = new String(request.getParameter("add_name").getBytes("iso-8859-1"), "utf-8");
		String detail = new String(request.getParameter("add_detail").getBytes("iso-8859-1"), "utf-8");
		EmergencyRescue emergencyrescue = new EmergencyRescue(name,detail);
		EmergencyRescueDao eRDao = new EmergencyRescueDao();
		try {
			MessageDao md = new MessageDao();
			String account = (String)request.getSession().getAttribute("account");
			md.addMessage("添加紧急救援方法成功", account);
			//将添加状态存入session中,若为-1，则为失败；为0，无添加状态；为1，则为成功；
			request.getSession().setAttribute("status_add_emergencyrescue","1");
			eRDao.addEmergencyRescue(emergencyrescue);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		RequestDispatcher rd = request.getRequestDispatcher("/manager_EmergencyRescue.jsp?search=");
		rd.forward(request, response);
	}

}
