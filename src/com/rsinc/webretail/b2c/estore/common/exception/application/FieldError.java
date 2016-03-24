/**
 * 
 */
package com.rsinc.webretail.b2c.estore.common.exception.application;

/**
 * @author Roshan Titus
 *
 */
public class FieldError {

	/**
	 * 
	 */
	private String fieldName;
	private String fieldErrorMessage;
	
	public FieldError(String fieldName, String fieldErrorMessage) {
		super();
		this.fieldName = fieldName;
		this.fieldErrorMessage = fieldErrorMessage;
	}

	@Override
	public String toString() {
		return "FieldError [" + fieldName + "::"
				+ fieldErrorMessage + "]";
	}
	


}
