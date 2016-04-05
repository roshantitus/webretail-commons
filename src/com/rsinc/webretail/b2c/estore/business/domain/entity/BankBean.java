/**
 * 
 */
package com.rsinc.webretail.b2c.estore.business.domain.entity;

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
@Table(name="bank_master")
public class BankBean extends VenderBean {

	/**
	 * 
	 */
	private static final long serialVersionUID = -5060340189467096547L;
	private String netBankingURL;
	/**
	 * 
	 */
	public BankBean() {
		// TODO initialize object
	}
	
	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	@Column(name = "bank_id")
	public Long getBankId() {
		return id;
	}	
	
	public void setBankId(Long id) {
		this.id = id;
	}	
	
	@Column(name = "net_banking_url")
	public String getNetBankingURL() {
		return netBankingURL;
	}
	public void setNetBankingURL(String netBankingURL) {
		this.netBankingURL = netBankingURL;
	}

	
}
