package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import beans.FoodTrackBeans;
import constant.DBConf;

public class FoodTrackDAO {

	// FoodTrackInfoを探す
	public FoodTrackBeans findFoodTrackByNo(int intFoodTrackNo) {

		// 戻り値の用意
		FoodTrackBeans returnFtb = new FoodTrackBeans();

		// データベースへ接続
		try (Connection con = DriverManager.getConnection(DBConf.JDBCURL, DBConf.JDBCID, DBConf.JDBCPASS)) {

			String sql = "SELECT foodtrack_no, foodtrack_id, foodtrack_name, food_type, station, access_info, user_no,"
					+ " tel_no, comment_text, image, category, point, registered_date, update_date FROM tb_foodtrack"
					+ " WHERE foodtrack_no = ?;";
			PreparedStatement ps = con.prepareStatement(sql);

			ps.setInt(1, intFoodTrackNo);

			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				// 見つかった情報を戻り値にセット
				returnFtb.setFoodtrack_no(rs.getInt("foodtrack_no"));
				returnFtb.setFoodtrack_id(rs.getString("foodtrack_id"));
				returnFtb.setFoodtrack_name(rs.getString("foodtrack_name"));
				returnFtb.setFood_type(rs.getInt("food_type"));
				returnFtb.setStation(rs.getString("station"));
				returnFtb.setAccess_info(rs.getString("access_info"));
				returnFtb.setUser_no(rs.getInt("user_no"));
				returnFtb.setTel_no(rs.getInt("tel_no"));
				returnFtb.setComment_text(rs.getString("comment_text"));
				returnFtb.setImage(rs.getString("image"));
				returnFtb.setCategory(rs.getString("category"));
				returnFtb.setPoint(rs.getInt("point"));

			} else {
				// アカウントがなければnullを返す
				return null;
			}
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
		return returnFtb;
	}

	// FoodTrackInfoを探す
	public List<FoodTrackBeans> findFoodTrackByUser(int intUserNo) {

		// 戻り値の用意
		FoodTrackBeans returnFtb = new FoodTrackBeans();
		List<FoodTrackBeans> returnFtbList = new ArrayList<>();

		// データベースへ接続
		try (Connection con = DriverManager.getConnection(DBConf.JDBCURL, DBConf.JDBCID, DBConf.JDBCPASS)) {

			String sql = "SELECT foodtrack_no, foodtrack_id, foodtrack_name, food_type, station, access_info, user_no,"
					+ " tel_no, comment_text, image, category, point, registered_date, update_date FROM tb_foodtrack"
					+ " WHERE user_no = ?;";
			PreparedStatement ps = con.prepareStatement(sql);

			ps.setInt(1, intUserNo);

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				// 見つかった情報を戻り値にセット
				returnFtb = new FoodTrackBeans();
				returnFtb.setFoodtrack_no(rs.getInt("foodtrack_no"));
				returnFtb.setFoodtrack_id(rs.getString("foodtrack_id"));
				returnFtb.setFoodtrack_name(rs.getString("foodtrack_name"));
				returnFtb.setFood_type(rs.getInt("food_type"));
				returnFtb.setStation(rs.getString("station"));
				returnFtb.setAccess_info(rs.getString("access_info"));
				returnFtb.setUser_no(rs.getInt("user_no"));
				returnFtb.setTel_no(rs.getInt("tel_no"));
				returnFtb.setComment_text(rs.getString("comment_text"));
				returnFtb.setImage(rs.getString("image"));
				returnFtb.setCategory(rs.getString("category"));
				returnFtb.setPoint(rs.getInt("point"));
				returnFtbList.add(returnFtb);
			}
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
		return returnFtbList;
	}

	// FoodTrackInfoを探す
	public List<FoodTrackBeans> findFoodTrackList() {

		// 戻り値の用意
		FoodTrackBeans returnFtb = new FoodTrackBeans();
		List<FoodTrackBeans> returnFtbList = new ArrayList<>();

		// データベースへ接続
		try (Connection con = DriverManager.getConnection(DBConf.JDBCURL, DBConf.JDBCID, DBConf.JDBCPASS)) {

			String sql = "SELECT foodtrack_no, foodtrack_id, foodtrack_name, food_type, station, access_info, user_no,"
					+ " tel_no, comment_text, image, category, point, registered_date, update_date FROM tb_foodtrack;";
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				// 見つかった情報を戻り値にセット
				returnFtb = new FoodTrackBeans();
				returnFtb.setFoodtrack_no(rs.getInt("foodtrack_no"));
				returnFtb.setFoodtrack_id(rs.getString("foodtrack_id"));
				returnFtb.setFoodtrack_name(rs.getString("foodtrack_name"));
				returnFtb.setFood_type(rs.getInt("food_type"));
				returnFtb.setStation(rs.getString("station"));
				returnFtb.setAccess_info(rs.getString("access_info"));
				returnFtb.setUser_no(rs.getInt("user_no"));
				returnFtb.setTel_no(rs.getInt("tel_no"));
				returnFtb.setComment_text(rs.getString("comment_text"));
				returnFtb.setImage(rs.getString("image"));
				returnFtb.setCategory(rs.getString("category"));
				returnFtb.setPoint(rs.getInt("point"));
				returnFtbList.add(returnFtb);
			}
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
		return returnFtbList;
	}

	// FoodTrackInfoを探す
	public void updatePoint(int intFoodtrackNo, int intPoint) {

		// データベースへ接続
		try (Connection con = DriverManager.getConnection(DBConf.JDBCURL, DBConf.JDBCID, DBConf.JDBCPASS)) {

			String sql = "UPDATE tb_foodtrack SET point = ?, update_date = CURRENT_TIMESTAMP WHERE foodtrack_no = ?";
			PreparedStatement ps = con.prepareStatement(sql);

			ps.setInt(1, intPoint);
			ps.setInt(2, intFoodtrackNo);

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