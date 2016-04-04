/**
 * 
 */
package com.rsinc.webretail.b2c.estore.data.entity;

import javax.persistence.Access;
import javax.persistence.AccessType;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

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
	
	@NotNull
	private CityBean city;
	
	@NotNull
	private String zipCode;
	
	@NotNull
	private StateBean state;
	
	@NotNull
	private CountryBean country;
	
	private String websiteURL;
	private String homePhone;
	private String officePhone;
	private String mobileNo;
	
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

	@OneToOne(optional=false, fetch = FetchType.EAGER,cascade=CascadeType.ALL)
    @JoinColumn(name="city_code", unique=false, nullable=false, updatable=true)		
	public CityBean getCity() {
		return city;
	}


	public void setCity(CityBean city) {
		this.city = city;
		if(city != null)
		{
			setState(city.getState());
			if(city.getState() != null)
			{
				setCountry(city.getState().getCountry());	
			}
		}	
	}

	@Column(name = "zip_code")
	public String getZipCode() {
		return zipCode;
	}


	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}

	@OneToOne(optional=false, fetch = FetchType.EAGER,cascade=CascadeType.ALL)
    @JoinColumn(name="state_code", unique=false, nullable=false, updatable=true)		
	public StateBean getState() {
		return state;
	}


	public void setState(StateBean state) {
		this.state = state;
	}

	@OneToOne(optional=false, fetch = FetchType.EAGER,cascade=CascadeType.ALL)
    @JoinColumn(name="country_code", unique=false, nullable=false, updatable=true)			
	public CountryBean getCountry() {
		return country;
	}


	public void setCountry(CountryBean country) {
		this.country = country;
	}

	@Column(name = "website_url")
	public String getWebsiteURL() {
		return websiteURL;
	}


	public void setWebsiteURL(String websiteURL) {
		this.websiteURL = websiteURL;
	}

	@Column(name = "home_phone")
	public String getHomePhone() {
		return homePhone;
	}


	public void setHomePhone(String homePhone) {
		this.homePhone = homePhone;
	}

	@Column(name = "office_phone")
	public String getOfficePhone() {
		return officePhone;
	}


	public void setOfficePhone(String officePhone) {
		this.officePhone = officePhone;
	}

	@Column(name = "mobile_no")
	public String getMobileNo() {
		return mobileNo;
	}


	public void setMobileNo(String mobileNo) {
		this.mobileNo = mobileNo;
	}	

	
}
