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

			String sql = "SELECT" + "    user_no" + "    , user_id" + "    , user_name" + "    , mail_address"
					+ "    , password" + "    , type" + "    , birth_date" + "    , gender" + "    , blood_type"
					+ "    , job" + "    , post_code" + "    , prefectures" + "    , municipality" + "    , address"
					+ "    , building_name" + "    , registered_date" + "    , update_date " + "FROM" + "    tb_user "
					+ "WHERE" + "    ( " + "        user_id = ? " + "        OR mail_address = ?" + "    ) "
					+ "    AND password = ?";
			PreparedStatement ps = con.prepareStatement(sql);

			ps.setString(1, ab.getUserNo());
			ps.setString(2, ab.getMailAddress());
			ps.setString(3, ab.getPassword());

			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				// 見つかったアカウント情報を戻り値にセット
				returnAb.setUserNo(sql);
				returnAb.setPassword(sql);
				returnAb.setMailAddress(sql);
				returnAb.setType(rs.getInt("roleId"));
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