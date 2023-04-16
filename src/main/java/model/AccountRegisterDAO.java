package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import beans.AccountBeans;
import constant.DBConf;

public class AccountRegisterDAO {
	public AccountRegisterDAO(AccountBeans ab) {

		try (Connection con = DriverManager.getConnection(DBConf.JDBCURL, DBConf.JDBCID, DBConf.JDBCPASS)) {

			String sql = "INSERT INTO tb_user(user_id, user_name, mail_address, password, type, birth_date, gender, "
					+ "blood_type, job, post_code, prefectures, municipality, address, building_name, "
					+ "registered_date, update_date) "
					+ "VALUES (? , ? , ? , ? , ? , ? , ? , ? , ? , ? , ? , ? , ? , ? , CURRENT_TIMESTAMP , CURRENT_TIMESTAMP )";
			PreparedStatement ps = con.prepareStatement(sql);

			ps.setString(1, ab.getUser_id());
			ps.setString(2, ab.getUser_name());
			ps.setString(3, ab.getMail_address());
			ps.setString(4, ab.getPassword());
			ps.setInt(5, ab.getType());
			ps.setInt(6, ab.getBirth_date());
			ps.setInt(7, ab.getGender());
			ps.setInt(8, ab.getBlood_type());
			ps.setString(9, ab.getJob());
			ps.setInt(10, ab.getPost_code());
			ps.setInt(11, ab.getPrefectures());
			ps.setString(12, ab.getMunicipality());
			ps.setString(13, ab.getAddress());
			ps.setString(14, ab.getBuilding_name());

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