package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ChinaVirusDao;
import dao.EmergencyRescueDao;
import dao.MessageDao;
import entity.ChinaVirus;
import entity.EmergencyRescue;

public class UpdateChinaVirus extends HttpServlet {

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
		String year = request.getParameter("update_year");
		String md = request.getParameter("update_md");
		String detail = request.getParameter("update_detail");
		String time = request.getParameter("update_time");
		ChinaVirus chinavirus = new ChinaVirus(year,md,detail);
		ChinaVirusDao cVDao = new ChinaVirusDao();
		try {
			MessageDao mdD = new MessageDao();
			String account = (String)request.getSession().getAttribute("account");
			mdD.addMessage("更新新冠事件成功", account);
			//将更新状态存入session中,若为-1，则为失败；为0，无更新状态；为1，则为成功；
			request.getSession().setAttribute("status_update_chinavirus","1");
			cVDao.updateChinaVirus(chinavirus,time);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		RequestDispatcher rd = request.getRequestDispatcher("/manager_ChinaVirus.jsp?search=");
		rd.forward(request, response);
	}

}
