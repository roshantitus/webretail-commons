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
@Table(name="wallet_payment_method")
public class WalletPaymentMethodBean extends CardPaymentMethodBean {


	/**
	 * 
	 */
	private static final long serialVersionUID = -5567913119676968658L;

	private UserBean user;
	
	public WalletPaymentMethodBean() {
		super();
		// TODO initialize object
	}

	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	@Column(name = "wallet_payment_method_id")
	public Long getWalletPaymentMethodId() {
		return id;
	}	
	
	public void setWalletPaymentMethodId(Long id) {
		this.id = id;
	}

	public UserBean getUser() {
		return user;
	}

	public void setUser(UserBean user) {
		this.user = user;
	}		
	
	
}
