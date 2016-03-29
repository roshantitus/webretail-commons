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

/**
 * @author Roshan Titus
 *
 */
@Entity
@Access(AccessType.PROPERTY)
//@NamedQueries({@NamedQuery(name="findByUsername", query=""), })
@Table(name="currency_master")
public class CurrencyBean extends BaseBean {

	/**
	 * 
	 */
	private static final long serialVersionUID = -3114724364235479975L;
    private String currencyCode;
    private String name;
    private String description;
    private String issuingCountryCode;
    private String currencySymbol;
    private Long minAccountableAmount;
    private Long defaultFractionDigit;
    
	/**
	 * 
	 */
	public CurrencyBean() {
		// TODO initialize object
	}

	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	@Column(name = "currency_id")
	public Long getCurrencyId() {
		return id;
	}	
	
	public void setCurrencyId(Long id) {
		this.id = id;
	}
	
	@Column(name = "currency_code", unique=true)
	public String getCurrencyCode() {
		return currencyCode;
	}

	public void setCurrencyCode(String currencyCode) {
		this.currencyCode = currencyCode;
	}

	@Column(name = "name")
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(name = "description")
	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@Column(name = "issuing_country_code")
	public String getIssuingCountryCode() {
		return issuingCountryCode;
	}

	public void setIssuingCountryCode(String issuingCountryCode) {
		this.issuingCountryCode = issuingCountryCode;
	}

	@Column(name = "currency_symbol")
	public String getCurrencySymbol() {
		return currencySymbol;
	}

	public void setCurrencySymbol(String currencySymbol) {
		this.currencySymbol = currencySymbol;
	}

	@Column(name = "min_accountable_amount")
	public Long getMinAccountableAmount() {
		return minAccountableAmount;
	}

	public void setMinAccountableAmount(Long minAccountableAmount) {
		this.minAccountableAmount = minAccountableAmount;
	}

	@Column(name = "default_fraction_digit")
	public Long getDefaultFractionDigit() {
		return defaultFractionDigit;
	}

	public void setDefaultFractionDigit(Long defaultFractionDigit) {
		this.defaultFractionDigit = defaultFractionDigit;
	}

	
}
