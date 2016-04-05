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
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
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
@NamedQueries({@NamedQuery(name="findStateByUK", query="from StateBean stateBean where stateBean.stateCode = :stateCode"), })
@Table(name="state_master")
public class StateBean extends BaseBean {

	/**
	 * 
	 */
	private static final long serialVersionUID = -7192900547149715765L;
	private CountryBean country;
	private String stateCode;
    private String name;
    private String description;
    private String capitalCity;
    private List<CityBean> cities;
    
	public StateBean() {
		super();
	}

	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	@Column(name = "state_id")
	public Long getStateId() {
		return id;
	}	
	
	public void setStateId(Long id) {
		this.id = id;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name="country_id", unique=false, nullable=false, updatable=true)		
	public CountryBean getCountry() {
		return country;
	}

	public void setCountry(CountryBean country) {
		this.country = country;
	}

	@Column(name = "state_code", unique=true, nullable=false)
	public String getStateCode() {
		return stateCode;
	}

	public void setStateCode(String stateCode) {
		this.stateCode = stateCode;
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

	@Column(name = "capital_city")
	public String getCapitalCity() {
		return capitalCity;
	}

	public void setCapitalCity(String capitalCity) {
		this.capitalCity = capitalCity;
	}

	@OneToMany(mappedBy="state", fetch = FetchType.EAGER)		
	public List<CityBean> getCities() {
		return cities;
	}

	public void setCities(List<CityBean> cities) {
		this.cities = cities;
	}		
	
	
	
}
