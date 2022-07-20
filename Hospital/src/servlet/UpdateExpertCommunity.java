package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ExpertCommunityDao;
import dao.MedicalEquipmentDao;
import dao.MessageDao;
import entity.ExpertCommunity;
import entity.MedicalEquipment;

public class UpdateExpertCommunity extends HttpServlet {

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
		String name = request.getParameter("update_name");
		String imgsrc = request.getParameter("update_imgsrc");
		String detail = request.getParameter("update_detail");
		ExpertCommunity expertcommunity = new ExpertCommunity(name,imgsrc,detail);
		ExpertCommunityDao eCDao = new ExpertCommunityDao();
		try {
			MessageDao md = new MessageDao();
			String account = (String)request.getSession().getAttribute("account");
			md.addMessage("更新专家成功", account);
			//将更新状态存入session中,若为-1，则为失败；为0，无更新状态；为1，则为成功；
			request.getSession().setAttribute("status_update_expertcommunity","1");
			eCDao.updateExpertCommunity(expertcommunity);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		RequestDispatcher rd = request.getRequestDispatcher("/manager_ExpertCommunity.jsp?search=");
		rd.forward(request, response);
	}

}
