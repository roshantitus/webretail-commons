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
@Table(name="coupon")
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

	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	@Column(name = "coupon_id")
	public Long getCouponId() {
		return id;
	}	
	
	public void setCouponId(Long id) {
		this.id = id;
	}	
	
	@Column(name = "valid_from_date")
	public Date getValidFromDate() {
		return validFromDate;
	}


	public void setValidFromDate(Date validFromDate) {
		this.validFromDate = validFromDate;
	}

	@Column(name = "valid_to_date")
	public Date getValidToDate() {
		return validToDate;
	}


	public void setValidToDate(Date validToDate) {
		this.validToDate = validToDate;
	}

	@Column(name = "discount")
	public Double getDiscount() {
		return discount;
	}


	public void setDiscount(Double discount) {
		this.discount = discount;
	}
	
	

}
