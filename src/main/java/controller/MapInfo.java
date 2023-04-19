package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.FoodTrackBeans;
import model.FoodTrackDAO;

/**
 * Servlet implementation class accountCheck
 */
@WebServlet("/MapInfo")
public class MapInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public MapInfo() {
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
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// アカウントの有無を検索
		// 検索したアカウント情報を取得
		FoodTrackDAO ftd = new FoodTrackDAO();
		List<FoodTrackBeans> returnFtbList = ftd.findFoodTrackList();

		// セッションにアカウント情報＆ロールを登録
		HttpSession session = request.getSession();
		session.setAttribute("returnFtbList", returnFtbList);

		RequestDispatcher rd = request.getRequestDispatcher("views/info.jsp");
		rd.forward(request, response);

	}

}
