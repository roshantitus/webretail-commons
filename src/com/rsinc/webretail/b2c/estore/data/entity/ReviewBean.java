/**
 * 
 */
package com.rsinc.webretail.b2c.estore.data.entity;

import javax.persistence.Column;
import javax.persistence.MappedSuperclass;

/**
 * @author Roshan Titus
 *
 */
@MappedSuperclass
public abstract class ReviewBean extends BaseBean {

	/**
	 * 
	 */
	private static final long serialVersionUID = -6445532311510481976L;
	
	private String comments;

	private UserBean reviewedby;

	private Integer rating;

	public ReviewBean() {
		super();
		// TODO initialize object
	}
		

	@Column(name = "comments")
	public String getComments() {
		return comments;
	}

	public void setComments(String comments) {
		this.comments = comments;
	}

	public UserBean getReviewedby() {
		return reviewedby;
	}

	public void setReviewedby(UserBean reviewedby) {
		this.reviewedby = reviewedby;
	}

	@Column(name = "rating")
	public Integer getRating() {
		return rating;
	}

	public void setRating(Integer rating) {
		this.rating = rating;
	}

}
