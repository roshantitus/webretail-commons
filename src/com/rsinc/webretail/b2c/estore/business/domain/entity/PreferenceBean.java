/**
 * 
 */
package com.rsinc.webretail.b2c.estore.business.domain.entity;

import javax.persistence.Column;
import javax.persistence.MappedSuperclass;

/**
 * @author Roshan Titus
 *
 */
@MappedSuperclass
public abstract class PreferenceBean extends BaseBean {

	/**
	 * 
	 */
	private static final long serialVersionUID = -3108261538313816904L;
	
	private String preferenceName;
	private String preferenceValue;

	public PreferenceBean() {
		super();
		// TODO initialize object
	}
	
	@Column(name = "preference_name")
	public String getPreferenceName() {
		return preferenceName;
	}

	public void setPreferenceName(String preferenceName) {
		this.preferenceName = preferenceName;
	}

	@Column(name = "preference_value")
	public String getPreferenceValue() {
		return preferenceValue;
	}

	public void setPreferenceValue(String preferenceValue) {
		this.preferenceValue = preferenceValue;
	}

}
