/**
 * 
 */
package com.rsinc.webretail.b2c.estore.data.entity;

import javax.persistence.Access;
import javax.persistence.AccessType;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.DiscriminatorColumn;
import javax.persistence.DiscriminatorType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

import com.rsinc.webretail.b2c.estore.data.entity.enums.PartyType;

/**
 * @author Roshan Titus 
 *
 */
@Entity
@Access(AccessType.PROPERTY)
//@NamedQueries({@NamedQuery(name="findByUsername", query=""), })
@Table(name="party")
@Inheritance(strategy=InheritanceType.SINGLE_TABLE)
@DiscriminatorColumn(name="party_type", discriminatorType=DiscriminatorType.STRING)
public abstract class PartyBean extends BaseBean {

	/**
	 * 
	 */
	private static final long serialVersionUID = 6462474650349080734L;
	
	@NotEmpty
	private String name;
	
	@NotEmpty @Email	
	private String email;
	
	private AddressBean partyAddress;
	
	private String websiteURL;
	
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
    @JoinColumn(name="address_id", unique=true, nullable=true, updatable=true)		
	public AddressBean getPartyAddress() {
		return partyAddress;
	}

	public void setPartyAddress(AddressBean partyAddress) {
		this.partyAddress = partyAddress;
	}

	@Column(name = "name")
	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}

	@Column(name = "website_url")
	public String getWebsiteURL() {
		return websiteURL;
	}


	public void setWebsiteURL(String websiteURL) {
		this.websiteURL = websiteURL;
	}	
	
	
}
