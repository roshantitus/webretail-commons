/**
 * 
 */
package com.rsinc.webretail.b2c.estore.data.entity;

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
import javax.persistence.Table;

/**
 * @author Roshan Titus
 *
 */
@Entity
@Access(AccessType.PROPERTY)
@NamedQueries({@NamedQuery(name="findCityByUK", query="from CityBean cityBean where cityBean.cityCode = :cityCode"), })
@Table(name="city_master")
public class CityBean extends BaseBean {

	/**
	 * 
	 */
	private static final long serialVersionUID = 4980440683434402521L;
	private StateBean state;
	private String cityCode;
    private String name;
    private String description;
    
	/**
	 * 
	 */
	public CityBean() {
		// TODO initialize object
	}


	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	@Column(name = "city_id")
	public Long getCityId() {
		return id;
	}	
	
	public void setCityId(Long id) {
		this.id = id;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name="state_id", unique=false, nullable=false, updatable=true)		
	public StateBean getState() {
		return state;
	}

	public void setState(StateBean state) {
		this.state = state;
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

	@Column(name = "city_code", unique=true, nullable=false)
	public String getCityCode() {
		return cityCode;
	}


	public void setCityCode(String cityCode) {
		this.cityCode = cityCode;
	}	
	
	
}
