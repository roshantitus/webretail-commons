/**
 * 
 */
package com.rsinc.webretail.b2c.estore.common.exception.application;

import java.util.List;

/**
 * @author Roshan Titus
 *
 */
public class FieldValidationException extends ValidationException {

	/**
	 * 
	 */
	private static final long serialVersionUID = -1551225923341789939L;
	/**
	 * 
	 */
	private List<FieldError> fieldErrors;
	
	public FieldValidationException(List<FieldError> fieldErrors) {
		super(getErrorMessage(fieldErrors));
		this.fieldErrors = fieldErrors;
	}

	/**
	 * @param fieldErrors2
	 * @return
	 */
	private static String getErrorMessage(List<FieldError> fieldErrors) {
		StringBuilder errorMessage = new StringBuilder("");
		for(FieldError fieldError : fieldErrors)
		{
			errorMessage.append(fieldError.toString());
		}
		return errorMessage.toString();
	}


	/**
	 * @param arg0
	 */
	public FieldValidationException(String arg0) {
		super(arg0);
		// TODO initialize object
	}

	/**
	 * @param arg0
	 */
	public FieldValidationException(Throwable arg0) {
		super(arg0);
		// TODO initialize object
	}

	/**
	 * @param arg0
	 * @param arg1
	 */
	public FieldValidationException(String arg0, Throwable arg1) {
		super(arg0, arg1);
		// TODO initialize object
	}

	/**
	 * @param arg0
	 * @param arg1
	 * @param arg2
	 * @param arg3
	 */
	public FieldValidationException(String arg0, Throwable arg1, boolean arg2,
			boolean arg3) {
		super(arg0, arg1, arg2, arg3);
		// TODO initialize object
	}

	public List<FieldError> getFieldErrors() {
		return fieldErrors;
	}

	public void setFieldErrors(List<FieldError> fieldErrors) {
		this.fieldErrors = fieldErrors;
	}
	
	

}
