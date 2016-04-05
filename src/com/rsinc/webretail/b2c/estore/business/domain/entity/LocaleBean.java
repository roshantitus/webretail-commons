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
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

/**
 * @author Roshan Titus
 *
 */
@Entity
@Access(AccessType.PROPERTY)
@NamedQueries({@NamedQuery(name="findLocaleByUK", query="from LocaleBean localeBean where localeBean.localeCode = :localeCode"), })
@Table(name="locale_master")
public class LocaleBean extends BaseBean {

	/**
	 * 
	 */
	private static final long serialVersionUID = -1612960104256612548L;
    private String localeCode;
    private String name;
    private String description;
    private String languageCode;
    private String countryCode;
    
	public LocaleBean() {
		super();
	}

	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	@Column(name = "locale_id")
	public Long getLocaleId() {
		return id;
	}	
	
	public void setLocaleId(Long id) {
		this.id = id;
	}

	@Column(name = "locale_code", unique=true, nullable=false)
	public String getLocaleCode() {
		return localeCode;
	}

	public void setLocaleCode(String localeCode) {
		this.localeCode = localeCode;
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

	@Column(name = "language_code")
	public String getLanguageCode() {
		return languageCode;
	}

	public void setLanguageCode(String languageCode) {
		this.languageCode = languageCode;
	}

	@Column(name = "country_code")	
	public String getCountryCode() {
		return countryCode;
	}

	public void setCountryCode(String countryCode) {
		this.countryCode = countryCode;
	}		
	
	
}
