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
@Table(name="visitor")
public class VisitorBean extends BaseBean{

	/**
	 * 
	 */
	private static final long serialVersionUID = -3680712075643452099L;
	
	private String inputDeviceIpAddress;
	private String inputDeviceTypeCode;
	private String inputLocaleCode;
	private String inputDeviceOsText;
	private String inputDeviceOsCode;
	private String inputDeviceOsVersion;
	private String inputDeviceBrowserText;
	private String inputDeviceBrowserCode;
	private String inputDeviceBrowserVersion;
	private String inputReferrerUrl;

	public VisitorBean() {
		super();
	}

	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	@Column(name = "visitor_id")
	public Long getVisitorId() {
		return id;
	}	
	
	public void setVisitorId(Long id) {
		this.id = id;
	}		
	
	@Column(name = "input_device_ip_address", unique=true, nullable=false)
	public String getInputDeviceIpAddress()
	{
		return inputDeviceIpAddress;
		
	}
	
	@Column(name = "input_device_type_code")
	public String getInputDeviceTypeCode(){
		
		return inputDeviceTypeCode;
		
	}
	
	@Column(name = "input_locale_code")
	public String getInputLocaleCode(){
		return inputLocaleCode;
		
	}
	
	@Column(name = "input_device_os_text")
	public String getInputDeviceOsText(){
		return inputDeviceOsText;
		
	}
	
	@Column(name = "input_device_os_code")
	public String getInputDeviceOsCode(){
		return inputDeviceOsCode;
		
	}
	
	@Column(name = "input_device_os_version")
	public String getInputDeviceOsVersion(){
		return inputDeviceOsVersion;
		
	}
	
	@Column(name = "input_device_browser_text")
	public String getInputDeviceBrowserText(){
		return inputDeviceBrowserText;
		
	}
	
	@Column(name = "input_device_browser_code")
	public String getInputDeviceBrowserCode(){
		return inputDeviceBrowserCode;
		
	}
	
	@Column(name = "input_device_browser_version")
	public String getInputDeviceBrowserVersion(){
		return inputDeviceBrowserVersion;
		
	}
	
	@Column(name = "input_referrer_url")
	public String getInputReferrerUrl(){
		return inputReferrerUrl;
		
	}

	public void setInputDeviceIpAddress(String inputDeviceIpAddress) {
		this.inputDeviceIpAddress = inputDeviceIpAddress;
	}

	public void setInputDeviceTypeCode(String inputDeviceTypeCode) {
		this.inputDeviceTypeCode = inputDeviceTypeCode;
	}

	public void setInputLocaleCode(String inputLocaleCode) {
		this.inputLocaleCode = inputLocaleCode;
	}

	public void setInputDeviceOsText(String inputDeviceOsText) {
		this.inputDeviceOsText = inputDeviceOsText;
	}

	public void setInputDeviceOsCode(String inputDeviceOsCode) {
		this.inputDeviceOsCode = inputDeviceOsCode;
	}

	public void setInputDeviceOsVersion(String inputDeviceOsVersion) {
		this.inputDeviceOsVersion = inputDeviceOsVersion;
	}

	public void setInputDeviceBrowserText(String inputDeviceBrowserText) {
		this.inputDeviceBrowserText = inputDeviceBrowserText;
	}

	public void setInputDeviceBrowserCode(String inputDeviceBrowserCode) {
		this.inputDeviceBrowserCode = inputDeviceBrowserCode;
	}

	public void setInputDeviceBrowserVersion(String inputDeviceBrowserVersion) {
		this.inputDeviceBrowserVersion = inputDeviceBrowserVersion;
	}

	public void setInputReferrerUrl(String inputReferrerUrl) {
		this.inputReferrerUrl = inputReferrerUrl;
	}
	
	
}
