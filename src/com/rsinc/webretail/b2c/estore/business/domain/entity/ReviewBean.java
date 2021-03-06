/**
 * 
 */
package com.rsinc.webretail.b2c.estore.business.domain.entity;

import javax.persistence.Column;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.MappedSuperclass;
import javax.persistence.OneToOne;

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

	@OneToOne(fetch = FetchType.EAGER)
    @JoinColumn(name="reviewed_by", unique=false, nullable=false, updatable=true)		
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
