/**
 * 
 */
package com.rsinc.webretail.b2c.estore.business.domain.entity;

import java.util.List;

import javax.persistence.Access;
import javax.persistence.AccessType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * @author Roshan Titus
 *
 */
@Entity
@Access(AccessType.PROPERTY)
@NamedQueries({@NamedQuery(name="findCountryByUK", query="from CountryBean countryBean where countryBean.countryCode = :countryCode"), })
@Table(name="country_master")
public class CountryBean extends BaseBean {

	/**
	 * 
	 */
	private static final long serialVersionUID = 2517388502200288843L;
    private String countryCode;
    private String name;
    private String description;
    private String iso3Code;
    private Integer isoNumericCode;
    private Integer euNumericCode;
    private List<StateBean> states;
    
	public CountryBean() {
		super();
	}

	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	@Column(name = "country_id")
	public Long getCountryId() {
		return id;
	}	
	
	public void setCountryId(Long id) {
		this.id = id;
	}

	@Column(name = "country_code", unique=true, nullable=false)
	public String getCountryCode() {
		return countryCode;
	}

	public void setCountryCode(String countryCode) {
		this.countryCode = countryCode;
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

	@Column(name = "iso3_code")
	public String getIso3Code() {
		return iso3Code;
	}

	public void setIso3Code(String iso3Code) {
		this.iso3Code = iso3Code;
	}

	@Column(name = "iso_numeric_code")
	public Integer getIsoNumericCode() {
		return isoNumericCode;
	}

	public void setIsoNumericCode(Integer isoNumericCode) {
		this.isoNumericCode = isoNumericCode;
	}

	@Column(name = "eu_numeric_code")
	public Integer getEuNumericCode() {
		return euNumericCode;
	}

	public void setEuNumericCode(Integer euNumericCode) {
		this.euNumericCode = euNumericCode;
	}
	
	@OneToMany(mappedBy="country", fetch = FetchType.EAGER)		
	public List<StateBean> getStates() {
		return states;
	}

	public void setStates(List<StateBean> states) {
		this.states = states;
	}	
	
}
