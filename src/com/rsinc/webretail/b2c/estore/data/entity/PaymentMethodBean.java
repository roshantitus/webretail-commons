/**
 * 
 */
package com.rsinc.webretail.b2c.estore.data.entity;

import javax.persistence.Entity;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.MappedSuperclass;

/**
 * @author Roshan Titus
 *
 */
@Entity
@Inheritance(strategy = InheritanceType.TABLE_PER_CLASS)
public abstract class PaymentMethodBean extends BaseBean {

	/**
	 * 
	 */
	private static final long serialVersionUID = 5796135675390020937L;

	public PaymentMethodBean() {
		super();
		// TODO initialize object
	}
		
}
