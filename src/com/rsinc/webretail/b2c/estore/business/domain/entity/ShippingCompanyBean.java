/**
 * 
 */
package com.rsinc.webretail.b2c.estore.business.domain.entity;

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
@Table(name="shipping_company_master")
public class ShippingCompanyBean extends VenderBean {

	/**
	 * 
	 */
	private static final long serialVersionUID = 7733853308703200108L;
	private String trackerURL;
//	private List<ShippingCharge>
	/**
	 * 
	 */
	public ShippingCompanyBean() {
		// TODO initialize object
	}
	
	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	@Column(name = "shipping_company_id")
	public Long getShippingCompanyId() {
		return id;
	}	
	
	public void setShippingCompanyId(Long id) {
		this.id = id;
	}	
	
	@Column(name = "tracker_url")
	public String getTrackerURL() {
		return trackerURL;
	}
	public void setTrackerURL(String trackerURL) {
		this.trackerURL = trackerURL;
	}

	
}
