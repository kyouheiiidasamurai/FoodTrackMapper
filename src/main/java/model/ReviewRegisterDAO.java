package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import beans.ReviewBeans;
import constant.DBConf;

public class ReviewRegisterDAO {

	public ReviewRegisterDAO(ReviewBeans rb) {

		try (Connection con = DriverManager.getConnection(DBConf.JDBCURL, DBConf.JDBCID, DBConf.JDBCPASS)) {

			String sql = "INSERT INTO foodtrackmapper.tb_review(review_title, review_content, review_user,"
					+ " foodtrack_no, point, registered_date, update_date) "
					+ "VALUES (?, ?, ?, ?, ?, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP)";
			PreparedStatement ps = con.prepareStatement(sql);

			ps.setString(1, rb.getReview_title());
			ps.setString(2, rb.getReview_content());
			ps.setInt(3, rb.getReview_user());
			ps.setInt(4, rb.getFoodtrack_no());
			ps.setInt(5, rb.getPoint());

			int r = ps.executeUpdate();

			if (r != 0) {
				System.out.println("新規登録成功！");
			} else {
				System.out.println("新規登録失敗");
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}