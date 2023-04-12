package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.AccountBeans;
import model.AccountRegisterDAO;

/**
 * Servlet implementation class AccountRegister
 */
@WebServlet("/DataRegister")
public class DataRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DataRegister() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int route = Integer.parseInt(request.getParameter("route"));

		switch (route) {
		case 1:
			this.AccountRegister(request, response);
			break;
		case 2:
			this.FoodTrackRegister(request, response);
			break;
		default:
			RequestDispatcher rd = request.getRequestDispatcher("jsp/info.jsp");
			rd.forward(request, response);
			break;
		}
	}

	private void AccountRegister(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String userId = request.getParameter("userId");
		String userName = request.getParameter("userName");
		String mailAddress = request.getParameter("mailAddress");
		String password = request.getParameter("password");
		int type = Integer.parseInt(request.getParameter("type"));
		int birthDate = Integer.parseInt(request.getParameter("birthDate"));
		int gender = Integer.parseInt(request.getParameter("gender"));
		int bloodType = Integer.parseInt(request.getParameter("bloodType"));
		String job = request.getParameter("job");
		int postCode = Integer.parseInt(request.getParameter("postCode"));
		int prefectures = Integer.parseInt(request.getParameter("prefectures"));
		String municipality = request.getParameter("municipality");
		String address = request.getParameter("address");
		String buildingName = request.getParameter("buildingName");

		// register.jspから受け取った値をビーンズにセット
		AccountBeans ab = new AccountBeans();
		ab.setUser_id(userId);
		ab.setUser_name(userName);
		ab.setMail_address(mailAddress);
		ab.setPassword(password);
		ab.setType(type);
		ab.setBirth_date(birthDate);
		ab.setGender(gender);
		ab.setBlood_type(bloodType);
		ab.setJob(job);
		ab.setPost_code(postCode);
		ab.setPrefectures(prefectures);
		ab.setMunicipality(municipality);
		ab.setAddress(address);
		ab.setBuilding_name(buildingName);

		// アカウントをDBに登録
		AccountRegisterDAO ard = new AccountRegisterDAO(ab);

		// セッションにアカウント情報を保存
		HttpSession session = request.getSession();
		session.setAttribute("account", ab);

		RequestDispatcher rd = request.getRequestDispatcher("jsp/login.jsp");
		rd.forward(request, response);
	}

	private void FoodTrackRegister(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("jsp/shop.jsp");
		rd.forward(request, response);
	}
}
