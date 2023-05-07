package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import beans.ReviewBeans;
import constant.DBConf;

public class ReviewDAO {
	// Reviewを探す
	public List<ReviewBeans> findReviewByFoodtrackNo(int intFoodtrackNo) {

		// 戻り値の用意
		ReviewBeans returnRb = new ReviewBeans();
		List<ReviewBeans> returnRbList = new ArrayList<>();

		// データベースへ接続
		try (Connection con = DriverManager.getConnection(DBConf.JDBCURL, DBConf.JDBCID, DBConf.JDBCPASS)) {

			String sql = "SELECT review_no, review_title, review_content, review_user, foodtrack_no, point,"
					+ " registered_date, update_date FROM foodtrackmapper.tb_review"
					+ " WHERE foodtrack_no = ? ORDER BY review_no;";
			PreparedStatement ps = con.prepareStatement(sql);

			ps.setInt(1, intFoodtrackNo);

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				// 見つかった情報を戻り値にセット
				returnRb = new ReviewBeans();
				returnRb.setReview_no(rs.getInt("review_no"));
				returnRb.setReview_title(rs.getString("review_title"));
				returnRb.setReview_content(rs.getString("review_content"));
				returnRb.setReview_user(rs.getInt("review_user"));
				returnRb.setFoodtrack_no(rs.getInt("foodtrack_no"));
				returnRb.setPoint(rs.getInt("point"));
				returnRbList.add(returnRb);
			}
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
		return returnRbList;
	}

	// Reviewを探す
	public List<ReviewBeans> findReviewByUser(int intUserNo) {

		// 戻り値の用意
		ReviewBeans returnRb = new ReviewBeans();
		List<ReviewBeans> returnRbList = new ArrayList<>();

		// データベースへ接続
		try (Connection con = DriverManager.getConnection(DBConf.JDBCURL, DBConf.JDBCID, DBConf.JDBCPASS)) {

			String sql = "SELECT review_no, review_title, review_content, review_user, foodtrack_no, point,"
					+ " registered_date, update_date FROM tb_review WHERE review_user = ? ORDER BY review_no;";
			PreparedStatement ps = con.prepareStatement(sql);

			ps.setInt(1, intUserNo);

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				// 見つかった情報を戻り値にセット
				returnRb = new ReviewBeans();
				returnRb.setReview_no(rs.getInt("review_no"));
				returnRb.setReview_title(rs.getString("review_title"));
				returnRb.setReview_content(rs.getString("review_content"));
				returnRb.setReview_user(rs.getInt("review_user"));
				returnRb.setFoodtrack_no(rs.getInt("foodtrack_no"));
				returnRb.setPoint(rs.getInt("point"));
				returnRbList.add(returnRb);
			}
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
		return returnRbList;
	}

	// Reviewを探す
	public int getPoint(int intFoodtrackNo) {

		// 戻り値の用意
		int totalPoint = 0;

		// データベースへ接続
		try (Connection con = DriverManager.getConnection(DBConf.JDBCURL, DBConf.JDBCID, DBConf.JDBCPASS)) {

			String sql = "SELECT SUM(point) AS total FROM tb_review WHERE foodtrack_no = ?;";
			PreparedStatement ps = con.prepareStatement(sql);

			ps.setInt(1, intFoodtrackNo);

			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				// 見つかった情報を戻り値にセット
				totalPoint = rs.getInt("total");
			}
		} catch (SQLException e) {
			e.printStackTrace();
			return 0;
		}
		return totalPoint;
	}

}