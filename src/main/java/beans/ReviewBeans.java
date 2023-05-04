package beans;

import java.io.Serializable;

public class ReviewBeans implements Serializable {
	private static final long serialVersionUID = 1L;

	private int review_no;
	private String review_title;
	private String review_content;
	private int review_user;
	private int foodtrack_no;
	private int point;

	public int getReview_no() {
		return review_no;
	}

	public void setReview_no(int review_no) {
		this.review_no = review_no;
	}

	public String getReview_title() {
		return review_title;
	}

	public void setReview_title(String review_title) {
		this.review_title = review_title;
	}

	public String getReview_content() {
		return review_content;
	}

	public void setReview_content(String review_content) {
		this.review_content = review_content;
	}

	public int getReview_user() {
		return review_user;
	}

	public void setReview_user(int review_user) {
		this.review_user = review_user;
	}

	public int getFoodtrack_no() {
		return foodtrack_no;
	}

	public void setFoodtrack_no(int foodtrack_no) {
		this.foodtrack_no = foodtrack_no;
	}

	public int getPoint() {
		return point;
	}

	public void setPoint(int point) {
		this.point = point;
	}
}
