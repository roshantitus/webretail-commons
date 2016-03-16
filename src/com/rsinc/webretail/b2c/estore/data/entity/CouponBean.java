/**
 * 
 */
package com.rsinc.webretail.b2c.estore.data.entity;

import java.util.Date;

/**
 * @author Roshan Titus
 *
 */
public class CouponBean extends BaseBean {

	/**
	 * 
	 */
	private static final long serialVersionUID = 2844013363265086476L;
	
	private Date validFromDate;
	private Date validToDate;
	private Double discount;
	

	public CouponBean() {
		super();
		// TODO initialize object
	}


	public Date getValidFromDate() {
		return validFromDate;
	}


	public void setValidFromDate(Date validFromDate) {
		this.validFromDate = validFromDate;
	}


	public Date getValidToDate() {
		return validToDate;
	}


	public void setValidToDate(Date validToDate) {
		this.validToDate = validToDate;
	}


	public Double getDiscount() {
		return discount;
	}


	public void setDiscount(Double discount) {
		this.discount = discount;
	}
	
	

}
