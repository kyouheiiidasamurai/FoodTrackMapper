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

import beans.AccountBeans;
import beans.FoodTrackBeans;
import model.AccountDAO;
import model.FoodTrackDAO;

/**
 * Servlet implementation class accountCheck
 */
@WebServlet("/AccountSearch")
public class AccountSearch extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AccountSearch() {
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
		// TODO Auto-generated method stub
		String userId = request.getParameter("userId");
		String password = request.getParameter("password");
		// login.jspから受け取ったログインIDとpassをビーンズにセット
		AccountBeans ab = new AccountBeans();
		ab.setUser_id(userId);
		ab.setMail_address(userId);
		ab.setPassword(password);

		// アカウントの有無を検索
		// 検索したアカウント情報を取得
		AccountDAO ad = new AccountDAO();
		AccountBeans returnAb = ad.findAccount(ab);

		if (returnAb != null) {
			// セッションにアカウント情報＆ロールを登録
			HttpSession session = request.getSession();
			session.setAttribute("account", returnAb);
			FoodTrackDAO ftd = new FoodTrackDAO();
			List<FoodTrackBeans> returnFtbList = ftd.findFoodTrackList();
			session.setAttribute("returnFtbList", returnFtbList);
			RequestDispatcher rd = request.getRequestDispatcher("views/info.jsp");
			rd.forward(request, response);

		} else {
			RequestDispatcher rd = request.getRequestDispatcher("views/login.jsp");
			rd.forward(request, response);
		}
	}

}
