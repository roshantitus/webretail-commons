/**
 * 
 */
package com.rsinc.webretail.b2c.estore.business.domain.entity;

import java.util.Calendar;

import javax.persistence.Access;
import javax.persistence.AccessType;
import javax.persistence.Column;
import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Past;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.DateTimeFormat;

import com.rsinc.webretail.b2c.estore.business.domain.entity.enums.GenderType;

/**
 * @author Roshan Titus
 *
 */
@Entity
@Access(AccessType.PROPERTY)
//@NamedQueries({@NamedQuery(name="findByUsername", query=""), })
@DiscriminatorValue(value="P")
public class PersonBean extends PartyBean {

	/**
	 * 
	 */
	private static final long serialVersionUID = 8455323373764150792L;

	//@Size(min=2, max=30) 
	private String firstName;
	private String middleName;
	
	//@Size(min=2, max=30) 
	private String lastName;
	private String homePhoneNumber;
	private String businessPhoneNumber;
	private String cellPhoneNumber;
	private String faxNumber;
	
	@NotNull
	private GenderType gender;
	
	//@DateTimeFormat(pattern="dd/MM/yyyy")
	//@Past @NotNull
	private Calendar dateOfBirth;
	
	public PersonBean() {
		super();
		// TODO initialize object
	}
	
	@Column(name = "first_name")
	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	@Column(name = "middle_name")		
	public String getMiddleName() {
		return middleName;
	}

	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}

	@Column(name = "last_name")
	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	
	@Column(name = "home_phone_number")
	public String getHomePhoneNumber() {
		return homePhoneNumber;
	}

	public void setHomePhoneNumber(String homePhoneNumber) {
		this.homePhoneNumber = homePhoneNumber;
	}

	@Column(name = "business_phone_number")
	public String getBusinessPhoneNumber() {
		return businessPhoneNumber;
	}

	public void setBusinessPhoneNumber(String businessPhoneNumber) {
		this.businessPhoneNumber = businessPhoneNumber;
	}

	@Column(name = "cell_phone_number")
	public String getCellPhoneNumber() {
		return cellPhoneNumber;
	}

	public void setCellPhoneNumber(String cellPhoneNumber) {
		this.cellPhoneNumber = cellPhoneNumber;
	}

	@Column(name = "gender")
	public GenderType getGender() {
		return gender;
	}

	public void setGender(GenderType gender) {
		this.gender = gender;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "date_of_birth")
	public Calendar getDateOfBirth() {
		return dateOfBirth;
	}

	public void setDateOfBirth(Calendar dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}


	@Column(name = "fax_number")
	public String getFaxNumber() {
		return faxNumber;
	}


	public void setFaxNumber(String faxNumber) {
		this.faxNumber = faxNumber;
	}
	
}
