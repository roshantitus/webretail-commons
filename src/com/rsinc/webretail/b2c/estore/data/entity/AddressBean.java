/**
 * 
 */
package com.rsinc.webretail.b2c.estore.data.entity;

import javax.persistence.Access;
import javax.persistence.AccessType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotEmpty;

/**
 * @author Roshan Titus 
 *
 */
@Entity
@Access(AccessType.PROPERTY)
//@NamedQueries({@NamedQuery(name="findByUsername", query=""), })
@Table(name="address")
public class AddressBean extends BaseBean {

	/**
	 * 
	 */
	private static final long serialVersionUID = 2647795244020563453L;

	@NotEmpty
	private String addressLine1;
	
	@NotEmpty
	private String addressLine2;
	
	private String landmark;
	
	@NotEmpty
	private String city;
	
	@NotEmpty
	private String zipCode;
	
	@NotEmpty
	private String state;
	
	@NotEmpty
	private String country;
	private String websiteURL;
	
	/**
	 * 
	 */
	public AddressBean() {
		// TODO Auto-generated constructor stub
	}
	
	
	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	@Column(name = "address_id")
	public Long getAddressId() {
		return id;
	}

	public void setAddressId(Long id) {
		this.id = id;
	}

	@Column(name = "address_line1")
	public String getAddressLine1() {
		return addressLine1;
	}


	public void setAddressLine1(String addressLine1) {
		this.addressLine1 = addressLine1;
	}

	@Column(name = "address_line2")
	public String getAddressLine2() {
		return addressLine2;
	}


	public void setAddressLine2(String addressLine2) {
		this.addressLine2 = addressLine2;
	}

	@Column(name = "landmark")
	public String getLandmark() {
		return landmark;
	}


	public void setLandmark(String landmark) {
		this.landmark = landmark;
	}

	@Column(name = "city")
	public String getCity() {
		return city;
	}


	public void setCity(String city) {
		this.city = city;
	}

	@Column(name = "zip_code")
	public String getZipCode() {
		return zipCode;
	}


	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}

	@Column(name = "state")
	public String getState() {
		return state;
	}


	public void setState(String state) {
		this.state = state;
	}

	@Column(name = "country")
	public String getCountry() {
		return country;
	}


	public void setCountry(String country) {
		this.country = country;
	}

	@Column(name = "website_url")
	public String getWebsiteURL() {
		return websiteURL;
	}


	public void setWebsiteURL(String websiteURL) {
		this.websiteURL = websiteURL;
	}	

	
}
