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
@Table(name="credit_card_payment_method")
public class CreditCardPaymentMethodBean extends CardPaymentMethodBean {

	/**
	 * 
	 */
	private static final long serialVersionUID = -4566543964909590147L;

	public CreditCardPaymentMethodBean() {
		super();
		// TODO initialize object
	}

	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	@Column(name = "credit_card_payment_method_id")
	public Long getCreditCardPaymentMethodId() {
		return id;
	}	
	
	public void setCreditCardPaymentMethodId(Long id) {
		this.id = id;
	}		
}