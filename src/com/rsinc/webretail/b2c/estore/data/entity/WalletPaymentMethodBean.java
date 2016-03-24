/**
 * 
 */
package com.rsinc.webretail.b2c.estore.data.entity;

import javax.persistence.Access;
import javax.persistence.AccessType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotEmpty;

/**
 * @author Roshan Titus
 *
 */
@Entity
@Access(AccessType.PROPERTY)
//@NamedQueries({@NamedQuery(name="findByUsername", query=""), })
@Table(name="wallet_payment_method")
public class WalletPaymentMethodBean extends BaseBean {


	/**
	 * 
	 */
	private static final long serialVersionUID = -5567913119676968658L;

	private UserBean user;
	
	@NotEmpty
	private String cardNumber;
	
	@NotEmpty
	private String cardType;
	
	@NotEmpty
	private String validToMonth;
	
	@NotEmpty
	private String validToYear;
	
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

	@OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="user_id", unique=true, nullable=false, updatable=true)		
	public UserBean getUser() {
		return user;
	}

	public void setUser(UserBean user) {
		this.user = user;
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
