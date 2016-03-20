/**
 * 
 */
package com.rsinc.webretail.b2c.estore.data.entity;

import java.util.Date;

import javax.persistence.Access;
import javax.persistence.AccessType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @author Roshan Titus
 *
 */
@Entity
@Access(AccessType.PROPERTY)
//@NamedQueries({@NamedQuery(name="findByUsername", query=""), })
@Table(name="review")
public class ReviewBean extends BaseBean {

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
	
	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	@Column(name = "review_id")
	public Long getReviewId() {
		return id;
	}	
	
	public void setReviewId(Long id) {
		this.id = id;
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
