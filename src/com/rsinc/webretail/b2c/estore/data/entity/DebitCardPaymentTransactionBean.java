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
@DiscriminatorValue(value="DEBIT_CARD_TRANSACTION")
public class DebitCardPaymentTransactionBean extends CardPaymentTransactionBean {

	/**
	 * 
	 */
	private static final long serialVersionUID = -5867163322409369930L;

	public DebitCardPaymentTransactionBean() {
		super();
	}
		
}
