/**
 * 
 */
package com.rsinc.webretail.b2c.estore.data.entity;

import javax.persistence.Access;
import javax.persistence.AccessType;
import javax.persistence.CascadeType;
import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

/**
 * @author Roshan Titus
 *
 */
@Entity
@Access(AccessType.PROPERTY)
//@NamedQueries({@NamedQuery(name="findByUsername", query=""), })
@DiscriminatorValue(value="NETBANKING_TRANSACTION")
public class NetBankingPaymentTransactionBean extends PaymentTransactionBean {

	/**
	 * 
	 */
	private static final long serialVersionUID = -8605922283606028935L;
	private BankBean bank;

	
	public NetBankingPaymentTransactionBean() {
		super();
		// TODO initialize object
	}
	
	@OneToOne(optional=true, fetch = FetchType.EAGER,cascade=CascadeType.ALL)
    @JoinColumn(name="bank_id", unique=true, nullable=true, updatable=true)			
	public BankBean getBank() {
		return bank;
	}

	public void setBank(BankBean bank) {
		this.bank = bank;
	}

	
	
}
