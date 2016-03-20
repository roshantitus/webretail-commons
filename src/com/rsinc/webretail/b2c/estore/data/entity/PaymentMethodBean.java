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
@Table(name="payment_method")
public class PaymentMethodBean extends BaseBean {

	/**
	 * 
	 */
	private static final long serialVersionUID = 5796135675390020937L;

	public PaymentMethodBean() {
		super();
		// TODO initialize object
	}

	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	@Column(name = "payment_method_id")
	public Long getPaymentMethodId() {
		return id;
	}	
	
	public void setPaymentMethodId(Long id) {
		this.id = id;
	}		
}
