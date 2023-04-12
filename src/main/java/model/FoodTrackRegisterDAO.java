package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import beans.FoodTrackBeans;

public class FoodTrackRegisterDAO {
	// データベース接続に使用する情報
	final String jdbcId = "root";
	final String jdbcPass = "admin";
	final String jdbcUrl = "jdbc:mysql://localhost/testworks?useSSL=false";

	public FoodTrackRegisterDAO(FoodTrackBeans ftb) {

		try (Connection con = DriverManager.getConnection(jdbcUrl, jdbcId, jdbcPass)) {

			String sql = "INSERT INTO tb_foodtrack(foodtrack_id, foodtrack_name, food_type, station,"
					+ " access_info, user_no, tel_no, comment_text, image, category, point, registered_date,"
					+ " update_date) VALUES"
					+ " (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, 0, CURRENT_TIMESTAMP , CURRENT_TIMESTAMP ) ";
			PreparedStatement ps = con.prepareStatement(sql);

			ps.setString(1, ftb.getFoodtrack_id());
			ps.setString(2, ftb.getFoodtrack_name());
			ps.setInt(3, ftb.getFood_type());
			ps.setString(4, ftb.getStation());
			ps.setString(5, ftb.getAccess_info());
			ps.setInt(6, ftb.getUser_no());
			ps.setInt(7, ftb.getTel_no());
			ps.setString(8, ftb.getComment_text());
			ps.setString(9, ftb.getImage());
			ps.setString(10, ftb.getCategory());

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