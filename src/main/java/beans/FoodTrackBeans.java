package beans;

import java.io.Serializable;

public class FoodTrackBeans implements Serializable {
	private static final long serialVersionUID = 1L;
	private String foodtrack_id;
	private String foodtrack_name;
	private int food_type;
	private String station;
	private String access_info;
	private int user_no;
	private int tel_no;
	private String comment;
	private String image;
	private String category;
	private int point;

	public String getFoodtrack_id() {
		return foodtrack_id;
	}

	public void setFoodtrack_id(String foodtrack_id) {
		this.foodtrack_id = foodtrack_id;
	}

	public String getFoodtrack_name() {
		return foodtrack_name;
	}

	public void setFoodtrack_name(String foodtrack_name) {
		this.foodtrack_name = foodtrack_name;
	}

	public int getFood_type() {
		return food_type;
	}

	public void setFood_type(int food_type) {
		this.food_type = food_type;
	}

	public String getStation() {
		return station;
	}

	public void setStation(String station) {
		this.station = station;
	}

	public String getAccess_info() {
		return access_info;
	}

	public void setAccess_info(String access_info) {
		this.access_info = access_info;
	}

	public int getUser_no() {
		return user_no;
	}

	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}

	public int getTel_no() {
		return tel_no;
	}

	public void setTel_no(int tel_no) {
		this.tel_no = tel_no;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public int getPoint() {
		return point;
	}

	public void setPoint(int point) {
		this.point = point;
	}

}
