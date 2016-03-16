/**
 * 
 */
package com.rsinc.webretail.b2c.estore.data.entity;

import java.util.Date;

/**
 * @author Roshan Titus
 *
 */
public class DeliveryBean extends BaseBean {

	/**
	 * 
	 */
	private static final long serialVersionUID = 4519314037779492477L;
	
	private String deliveryInstruction;

	private Boolean giftWrap;

	private String giftNote;

	private Date deliveryEstimate;
	
	

	public DeliveryBean() {
		super();
		// TODO initialize object
	}

}
