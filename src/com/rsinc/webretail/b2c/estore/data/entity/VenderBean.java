/**
 * 
 */
package com.rsinc.webretail.b2c.estore.data.entity;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.MappedSuperclass;
import javax.persistence.OneToOne;

import org.hibernate.validator.constraints.NotEmpty;

/**
 * @author Roshan Titus
 *
 */
@MappedSuperclass
public abstract class VenderBean extends BaseBean {

	/**
	 * 
	 */
	private static final long serialVersionUID = 6717274495815533738L;
	
	@NotEmpty	
	private String name;
	
	private AddressBean address;	
	


	/**
	 * 
	 */
	public VenderBean() {
		// TODO initialize object
	}	

	@Column(name = "name")	
	public String getName() {
		return name;
	}



	public void setName(String name) {
		this.name = name;
	}


	@OneToOne(optional=false, fetch = FetchType.EAGER,cascade=CascadeType.ALL)
    @JoinColumn(name="address_id", unique=false, nullable=true, updatable=true)	
	public AddressBean getAddress() {
		return address;
	}



	public void setAddress(AddressBean address) {
		this.address = address;
	}

	
}
