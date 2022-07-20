package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MedicalDrugsDao;
import dao.MedicalEquipmentDao;
import dao.MessageDao;
import entity.MedicalDrugs;
import entity.MedicalEquipment;

public class AddMedicalDrugs extends HttpServlet {

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
		String imgsrc = request.getParameter("add_imgsrc");
		String detail = request.getParameter("add_detail");
		MedicalDrugs medicaldrugs = new MedicalDrugs(name,imgsrc,detail);
		MedicalDrugsDao mDDao = new MedicalDrugsDao();
		try {
			MessageDao md = new MessageDao();
			String account = (String)request.getSession().getAttribute("account");
			md.addMessage("添加医学药品成功", account);
			//将添加状态存入session中,若为-1，则为失败；为0，无添加状态；为1，则为成功；
			request.getSession().setAttribute("status_add_medicaldrugs","1");
			mDDao.addMedicalDrugs(medicaldrugs);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		RequestDispatcher rd = request.getRequestDispatcher("/manager_MedicalDrugs.jsp?search=");
		rd.forward(request, response);
	}

}
