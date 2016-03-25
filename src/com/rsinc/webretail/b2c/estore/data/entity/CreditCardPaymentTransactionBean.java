/**
 * 
 */
package com.rsinc.webretail.b2c.estore.data.entity;

import javax.persistence.Access;
import javax.persistence.AccessType;
import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;

/**
 * @author Roshan Titus
 *
 */
@Entity
@Access(AccessType.PROPERTY)
//@NamedQueries({@NamedQuery(name="findByUsername", query=""), })
@DiscriminatorValue(value="CREDIT_CARD_TRANSACTION")
public class CreditCardPaymentTransactionBean extends CardPaymentTransactionBean {

	/**
	 * 
	 */
	private static final long serialVersionUID = -4566543964909590147L;

	public CreditCardPaymentTransactionBean() {
		super();
	}		
}
