package beans;

import java.io.Serializable;

public class AccountBeans implements Serializable {
	private static final long serialVersionUID = 1L;

	private int user_no;
	private String user_id;
	private String user_name;
	private String mail_address;
	private String password;
	private int type;
	private int birth_date;
	private int gender;
	private int blood_type;
	private String job;
	private int post_code;
	private int prefectures;
	private String municipality;
	private String address;
	private String building_name;

	public int getUser_no() {
		return user_no;
	}

	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getMail_address() {
		return mail_address;
	}

	public void setMail_address(String mail_address) {
		this.mail_address = mail_address;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public int getBirth_date() {
		return birth_date;
	}

	public void setBirth_date(int birth_date) {
		this.birth_date = birth_date;
	}

	public int getGender() {
		return gender;
	}

	public void setGender(int gender) {
		this.gender = gender;
	}

	public int getBlood_type() {
		return blood_type;
	}

	public void setBlood_type(int blood_type) {
		this.blood_type = blood_type;
	}

	public String getJob() {
		return job;
	}

	public void setJob(String job) {
		this.job = job;
	}

	public int getPost_code() {
		return post_code;
	}

	public void setPost_code(int post_code) {
		this.post_code = post_code;
	}

	public int getPrefectures() {
		return prefectures;
	}

	public void setPrefectures(int prefectures) {
		this.prefectures = prefectures;
	}

	public String getMunicipality() {
		return municipality;
	}

	public void setMunicipality(String municipality) {
		this.municipality = municipality;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getBuilding_name() {
		return building_name;
	}

	public void setBuilding_name(String building_name) {
		this.building_name = building_name;
	}
}
