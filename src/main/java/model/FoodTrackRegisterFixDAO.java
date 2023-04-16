package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import beans.FoodTrackBeans;
import constant.DBConf;

public class FoodTrackRegisterFixDAO {

	public FoodTrackRegisterFixDAO(FoodTrackBeans ftb) {

		try (Connection con = DriverManager.getConnection(DBConf.JDBCURL, DBConf.JDBCID, DBConf.JDBCPASS)) {

			String sql = "UPDATE tb_foodtrack SET foodtrack_id = ?, foodtrack_name = ?,"
					+ " food_type = ?, station = ?, access_info = ?, tel_no = ?,"
					+ " comment_text = ?, image = ?, category = ?, point = ?, update_date = CURRENT_TIMESTAMP "
					+ "WHERE foodtrack_no = ?";
			PreparedStatement ps = con.prepareStatement(sql);

			ps.setString(1, ftb.getFoodtrack_id());
			ps.setString(2, ftb.getFoodtrack_name());
			ps.setInt(3, ftb.getFood_type());
			ps.setString(4, ftb.getStation());
			ps.setString(5, ftb.getAccess_info());
			ps.setInt(6, ftb.getTel_no());
			ps.setString(7, ftb.getComment_text());
			ps.setString(8, ftb.getImage());
			ps.setString(9, ftb.getCategory());
			ps.setInt(10, ftb.getFoodtrack_no());

			int r = ps.executeUpdate();

			if (r != 0) {
				System.out.println("修正成功！");
			} else {
				System.out.println("修正失敗");
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}