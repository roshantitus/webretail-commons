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
@Table(name="net_banking_payment_method")
public class NetBankingPaymentMethodBean extends CardPaymentMethodBean {

	/**
	 * 
	 */
	private static final long serialVersionUID = -8605922283606028935L;

	public NetBankingPaymentMethodBean() {
		super();
		// TODO initialize object
	}

	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	@Column(name = "net_banking_payment_method_id")
	public Long getNetBankingPaymentMethodId() {
		return id;
	}	
	
	public void setNetBankingPaymentMethodId(Long id) {
		this.id = id;
	}		
}
