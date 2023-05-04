package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import beans.AccountBeans;
import constant.DBConf;

public class AccountDAO {

	// ログインアカウントを探す
	public AccountBeans findAccount(AccountBeans ab) {

		// 戻り値の用意
		AccountBeans returnAb = new AccountBeans();

		// データベースへ接続
		try (Connection con = DriverManager.getConnection(DBConf.JDBCURL, DBConf.JDBCID, DBConf.JDBCPASS)) {

			String sql = "SELECT user_no, user_id, user_name, mail_address, password, type, birth_date, gender,"
					+ " blood_type, job, post_code, prefectures, municipality, address, building_name,"
					+ " registered_date, update_date FROM tb_user WHERE (user_id = ? OR mail_address = ? )"
					+ " AND password = ?";
			PreparedStatement ps = con.prepareStatement(sql);

			ps.setString(1, ab.getUser_id());
			ps.setString(2, ab.getMail_address());
			ps.setString(3, ab.getPassword());

			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				// 見つかったアカウント情報を戻り値にセット
				returnAb.setUser_no(rs.getInt("user_no"));
				returnAb.setUser_id(rs.getString("user_id"));
				returnAb.setUser_name(rs.getString("user_name"));
				returnAb.setMail_address(rs.getString("mail_address"));
				returnAb.setPassword(rs.getString("password"));
				returnAb.setType(rs.getInt("type"));
				returnAb.setBirth_date(rs.getInt("birth_date"));
				returnAb.setGender(rs.getInt("gender"));
				returnAb.setBlood_type(rs.getInt("blood_type"));
				returnAb.setJob(rs.getString("job"));
				returnAb.setPost_code(rs.getInt("post_code"));
				returnAb.setPrefectures(rs.getInt("prefectures"));
				returnAb.setMunicipality(rs.getString("municipality"));
				returnAb.setAddress(rs.getString("address"));
				returnAb.setBuilding_name(rs.getString("building_name"));

			} else {
				// アカウントがなければnullを返す
				return null;
			}
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
		return returnAb;
	}

	// ログインアカウントを探す
	public AccountBeans getAccount(int user_no) {

		// 戻り値の用意
		AccountBeans returnAb = new AccountBeans();

		// データベースへ接続
		try (Connection con = DriverManager.getConnection(DBConf.JDBCURL, DBConf.JDBCID, DBConf.JDBCPASS)) {

			String sql = "SELECT user_no, user_id, user_name, mail_address, password, type, birth_date, gender,"
					+ " blood_type, job, post_code, prefectures, municipality, address, building_name, registered_date,"
					+ " update_date FROM tb_user WHERE user_no = ?";
			PreparedStatement ps = con.prepareStatement(sql);

			ps.setInt(1, user_no);

			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				// 見つかったアカウント情報を戻り値にセット
				returnAb.setUser_no(rs.getInt("user_no"));
				returnAb.setUser_id(rs.getString("user_id"));
				returnAb.setUser_name(rs.getString("user_name"));
				returnAb.setMail_address(rs.getString("mail_address"));
				returnAb.setPassword(rs.getString("password"));
				returnAb.setType(rs.getInt("type"));
				returnAb.setBirth_date(rs.getInt("birth_date"));
				returnAb.setGender(rs.getInt("gender"));
				returnAb.setBlood_type(rs.getInt("blood_type"));
				returnAb.setJob(rs.getString("job"));
				returnAb.setPost_code(rs.getInt("post_code"));
				returnAb.setPrefectures(rs.getInt("prefectures"));
				returnAb.setMunicipality(rs.getString("municipality"));
				returnAb.setAddress(rs.getString("address"));
				returnAb.setBuilding_name(rs.getString("building_name"));

			} else {
				// アカウントがなければnullを返す
				return null;
			}
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
		return returnAb;
	}
}