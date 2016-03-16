/**
 * 
 */
package com.rsinc.webretail.b2c.estore.data.entity;

import java.util.Date;

/**
 * @author Roshan Titus
 *
 */
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

}
