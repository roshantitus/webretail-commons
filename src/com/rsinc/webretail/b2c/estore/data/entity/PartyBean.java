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

/**
 * @author Roshan Titus 
 *
 */
@Entity
@Access(AccessType.PROPERTY)
//@NamedQueries({@NamedQuery(name="findByUsername", query=""), })
@Table(name="PARTY")
public class PartyBean extends BaseBean {

	/**
	 * 
	 */
	private static final long serialVersionUID = 6462474650349080734L;

	private String partyType;
	private String name;
	private String email;
	private AddressBean partyAddress;
	
	/**
	 * 
	 */
	public PartyBean() {
		// TODO Auto-generated constructor stub
	}

	
	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	@Column(name = "party_id")
	public Long getPartyId() {
		return id;
	}

	public void setPartyId(Long id) {
		this.id = id;
	}	
	

	@Column(name = "email")
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@OneToOne(optional=true, fetch = FetchType.EAGER,cascade=CascadeType.ALL)
    @JoinColumn(name="ADDRESS_ID", unique=true, nullable=true, updatable=true)		
	public AddressBean getPartyAddress() {
		return partyAddress;
	}

	public void setPartyAddress(AddressBean partyAddress) {
		this.partyAddress = partyAddress;
	}
	
	public String getPartyType() {
		return partyType;
	}


	public void setPartyType(String partyType) {
		this.partyType = partyType;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}	
	
	
}
