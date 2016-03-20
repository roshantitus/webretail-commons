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
@Table(name="debit_card_payment_method")
public class DebitCardPaymentMethodBean extends CardPaymentMethodBean {

	/**
	 * 
	 */
	private static final long serialVersionUID = -5867163322409369930L;

	public DebitCardPaymentMethodBean() {
		super();
		// TODO initialize object
	}

	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	@Column(name = "debit_card_payment_method_id")
	public Long getDebitCardPaymentMethodId() {
		return id;
	}	
	
	public void setDebitCardPaymentMethodId(Long id) {
		this.id = id;
	}		
}
