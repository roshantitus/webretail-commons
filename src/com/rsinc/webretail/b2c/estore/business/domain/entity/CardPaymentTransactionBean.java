/**
 * 
 */
package com.rsinc.webretail.b2c.estore.business.domain.entity;

import javax.persistence.Column;
import javax.persistence.MappedSuperclass;

import org.hibernate.validator.constraints.NotEmpty;

/**
 * @author Roshan Titus
 *
 */
@MappedSuperclass
public abstract class CardPaymentTransactionBean extends PaymentTransactionBean {

	/**
	 * 
	 */
	private static final long serialVersionUID = 2724515159777293971L;
	
	@NotEmpty
	private String cardNumber;
	
	@NotEmpty
	private String cardType;
	
	@NotEmpty
	private String validToMonth;
	
	@NotEmpty
	private String validToYear;
	
	public CardPaymentTransactionBean() {
		super();
		// TODO initialize object
	}	
	
	@Column(name = "card_number")
	public String getCardNumber() {
		return cardNumber;
	}

	public void setCardNumber(String cardNumber) {
		this.cardNumber = cardNumber;
	}

	@Column(name = "card_type")
	public String getCardType() {
		return cardType;
	}

	public void setCardType(String cardType) {
		this.cardType = cardType;
	}

	@Column(name = "valid_to_month")
	public String getValidToMonth() {
		return validToMonth;
	}

	public void setValidToMonth(String validToMonth) {
		this.validToMonth = validToMonth;
	}

	@Column(name = "valid_to_year")
	public String getValidToYear() {
		return validToYear;
	}

	public void setValidToYear(String validToYear) {
		this.validToYear = validToYear;
	}

	
}
