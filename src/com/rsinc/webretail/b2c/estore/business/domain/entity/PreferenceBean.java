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
	
	private String preferenceDataType;//NUMBER,STRING,DECIMAL
	private String preferenceType;//TEXT_DISPLAY,RICHTEXT_DISPLAY
	private String preferenceDescription;
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

	@Column(name = "preference_data_type")
	public String getPreferenceDataType() {
		return preferenceDataType;
	}

	public void setPreferenceDataType(String preferenceDataType) {
		this.preferenceDataType = preferenceDataType;
	}

	@Column(name = "preference_type")
	public String getPreferenceType() {
		return preferenceType;
	}

	public void setPreferenceType(String preferenceType) {
		this.preferenceType = preferenceType;
	}

	@Column(name = "preference_description")
	public String getPreferenceDescription() {
		return preferenceDescription;
	}

	public void setPreferenceDescription(String preferenceDescription) {
		this.preferenceDescription = preferenceDescription;
	}

	
}
