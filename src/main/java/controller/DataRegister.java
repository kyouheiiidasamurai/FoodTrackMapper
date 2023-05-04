package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Utility.CommonUtility;
import beans.AccountBeans;
import beans.FoodTrackBeans;
import beans.ReviewBeans;
import model.AccountRegisterDAO;
import model.AccountRegisterFixDAO;
import model.FoodTrackDAO;
import model.FoodTrackRegisterDAO;
import model.FoodTrackRegisterFixDAO;
import model.ReviewDAO;
import model.ReviewRegisterDAO;

/**
 * Servlet implementation class AccountRegister
 */
@WebServlet("/DataRegister")
public class DataRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
	CommonUtility cUtility = new CommonUtility();

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
		int route = cUtility.checkInt(request.getParameter("route"));

		switch (route) {
		case 1:
			this.AccountRegister(request, response);
			break;
		case 2:
			this.FoodTrackRegister(request, response);
			break;
		case 3:
			this.AccountFixRegister(request, response);
			break;
		case 4:
			this.FoodTrackFixRegister(request, response);
			break;
		case 5:
			this.ReviewRegister(request, response);
			break;
		default:
			RequestDispatcher rd = request.getRequestDispatcher("views/info.jsp");
			rd.forward(request, response);
			break;
		}
	}

	private void AccountRegister(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String userId = request.getParameter("user_id");
		String userName = request.getParameter("user_name");
		String mailAddress = request.getParameter("mail_address");
		String password = request.getParameter("password");
		int type = cUtility.checkInt(request.getParameter("type"));
		int birthDate = cUtility.checkInt(request.getParameter("birth_date"));
		int gender = cUtility.checkInt(request.getParameter("gender"));
		int bloodType = cUtility.checkInt(request.getParameter("blood_type"));
		String job = request.getParameter("job");
		int postCode = cUtility.checkInt(request.getParameter("post_code"));
		int prefectures = cUtility.checkInt(request.getParameter("prefectures"));
		String municipality = request.getParameter("municipality");
		String address = request.getParameter("address");
		String buildingName = request.getParameter("building_name");

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
		new AccountRegisterDAO(ab);

		// セッションにアカウント情報を保存
		HttpSession session = request.getSession();
		session.setAttribute("account", ab);

		RequestDispatcher rd = request.getRequestDispatcher("views/login.jsp");
		rd.forward(request, response);
	}

	private void FoodTrackRegister(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String foodtrack_id = request.getParameter("foodtrack_id");
		String foodtrack_name = request.getParameter("foodtrack_name");
		int food_type = cUtility.checkInt(request.getParameter("food_type"));
		String station = request.getParameter("station");
		String access_info = request.getParameter("access_info");
		int user_no = cUtility.checkInt(request.getParameter("user_no"));
		int tel_no = cUtility.checkInt(request.getParameter("tel_no"));
		String comment_text = request.getParameter("comment_text");
		String image = request.getParameter("image");
		String category = request.getParameter("category");

		FoodTrackBeans ftb = new FoodTrackBeans();
		ftb.setFoodtrack_id(foodtrack_id);
		ftb.setFoodtrack_name(foodtrack_name);
		ftb.setFood_type(food_type);
		ftb.setStation(station);
		ftb.setAccess_info(access_info);
		ftb.setUser_no(user_no);
		ftb.setTel_no(tel_no);
		ftb.setComment_text(comment_text);
		ftb.setImage(image);
		ftb.setCategory(category);

		// フードトラック情報をDBに登録
		new FoodTrackRegisterDAO(ftb);
		request.setAttribute("route", 3);

		RequestDispatcher rd = request.getRequestDispatcher("views/display.jsp");
		rd.forward(request, response);
	}

	private void AccountFixRegister(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// インプットされた要素から、データを取る
		int userNo = cUtility.checkInt(request.getParameter("user_no"));
		String userId = request.getParameter("user_id");
		String userName = request.getParameter("user_name");
		String mailAddress = request.getParameter("mail_address");
		String password = request.getParameter("password");
		int birthDate = cUtility.checkInt(request.getParameter("birth_date"));
		int gender = cUtility.checkInt(request.getParameter("gender"));
		int bloodType = cUtility.checkInt(request.getParameter("blood_type"));
		String job = request.getParameter("job");
		int postCode = cUtility.checkInt(request.getParameter("post_code"));
		int prefectures = cUtility.checkInt(request.getParameter("prefectures"));
		String municipality = request.getParameter("municipality");
		String address = request.getParameter("address");
		String buildingName = request.getParameter("building_name");

		// register.jspから受け取った値をビーンズにセット
		AccountBeans ab = new AccountBeans();
		ab.setUser_no(userNo);
		ab.setUser_id(userId);
		ab.setUser_name(userName);
		ab.setMail_address(mailAddress);
		ab.setPassword(password);
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
		new AccountRegisterFixDAO(ab);

		// セッションにアカウント情報を保存
		HttpSession session = request.getSession();
		session.setAttribute("account", ab);

		request.setAttribute("route", 1);
		RequestDispatcher rd = request.getRequestDispatcher("views/display.jsp");
		rd.forward(request, response);
	}

	private void FoodTrackFixRegister(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int foodtrack_no = cUtility.checkInt(request.getParameter("foodtrack_no"));
		String foodtrack_id = request.getParameter("foodtrack_id");
		String foodtrack_name = request.getParameter("foodtrack_name");
		int food_type = cUtility.checkInt(request.getParameter("food_type"));
		String station = request.getParameter("station");
		String access_info = request.getParameter("access_info");
		int tel_no = cUtility.checkInt(request.getParameter("tel_no"));
		String comment_text = request.getParameter("comment_text");
		String image = request.getParameter("image");
		String category = request.getParameter("category");

		FoodTrackBeans ftb = new FoodTrackBeans();
		ftb.setFoodtrack_no(foodtrack_no);
		ftb.setFoodtrack_id(foodtrack_id);
		ftb.setFoodtrack_name(foodtrack_name);
		ftb.setFood_type(food_type);
		ftb.setStation(station);
		ftb.setAccess_info(access_info);
		ftb.setTel_no(tel_no);
		ftb.setComment_text(comment_text);
		ftb.setImage(image);
		ftb.setCategory(category);

		// フードトラック情報をDBに登録
		new FoodTrackRegisterFixDAO(ftb);

		request.setAttribute("route", 4);
		RequestDispatcher rd = request.getRequestDispatcher("views/display.jsp");
		rd.forward(request, response);
	}

	private void ReviewRegister(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();
		AccountBeans ab = (AccountBeans) session.getAttribute("account");

		String review_title = request.getParameter("review_title");
		String review_content = request.getParameter("review_content");
		int review_user = ab.getUser_no();
		int foodtrack_no = cUtility.checkInt(request.getParameter("foodtrack_no"));
		int point = cUtility.checkInt(request.getParameter("point"));
		FoodTrackDAO ftb = new FoodTrackDAO();
		FoodTrackBeans returnFtb = new FoodTrackBeans();

		ReviewBeans rb = new ReviewBeans();
		rb.setReview_title(review_title);
		rb.setReview_content(review_content);
		rb.setReview_user(review_user);
		rb.setFoodtrack_no(foodtrack_no);
		rb.setPoint(point);

		new ReviewRegisterDAO(rb);
		ReviewDAO rdao = new ReviewDAO();
		FoodTrackDAO ftd = new FoodTrackDAO();
		ftd.updatePoint(foodtrack_no, rdao.getPoint(foodtrack_no));

		request.setAttribute("route", 3);
		returnFtb = ftb.findFoodTrackByNo(foodtrack_no);
		request.setAttribute("FoodTrackDetail", returnFtb);
		RequestDispatcher rd = request.getRequestDispatcher("views/display.jsp");
		rd.forward(request, response);
	}
}
