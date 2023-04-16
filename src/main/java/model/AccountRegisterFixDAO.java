package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import beans.AccountBeans;
import constant.DBConf;

public class AccountRegisterFixDAO {

	public AccountRegisterFixDAO(AccountBeans ab) {

		try (Connection con = DriverManager.getConnection(DBConf.JDBCURL, DBConf.JDBCID, DBConf.JDBCPASS)) {

			String sql = "UPDATE tb_user SET user_id = ?, user_name = ?, mail_address = ?,"
					+ " birth_date = ?, gender = ?, blood_type = ?, job = ?,"
					+ " post_code = ?, prefectures = ?, municipality = ?, address = ?,"
					+ " building_name = ?, update_date = CURRENT_TIMESTAMP WHERE user_no = ?";
			PreparedStatement ps = con.prepareStatement(sql);

			ps.setString(1, ab.getUser_id());
			ps.setString(2, ab.getUser_name());
			ps.setString(3, ab.getMail_address());
			ps.setInt(4, ab.getBirth_date());
			ps.setInt(5, ab.getGender());
			ps.setInt(6, ab.getBlood_type());
			ps.setString(7, ab.getJob());
			ps.setInt(8, ab.getPost_code());
			ps.setInt(9, ab.getPrefectures());
			ps.setString(10, ab.getMunicipality());
			ps.setString(11, ab.getAddress());
			ps.setString(12, ab.getBuilding_name());
			ps.setInt(13, ab.getUser_no());

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