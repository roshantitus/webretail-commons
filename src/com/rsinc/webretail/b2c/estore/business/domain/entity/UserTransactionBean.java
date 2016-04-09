/**
 * 
 */
package com.rsinc.webretail.b2c.estore.business.domain.entity;

import java.util.Calendar;

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

/**
 * @author Roshan Titus
 *
 */
@Entity
@Access(AccessType.PROPERTY)
//@NamedQueries({@NamedQuery(name="findByUsername", query=""), })
@Table(name="user_transaction")
public class UserTransactionBean extends BaseBean {

	/**
	 * 
	 */
	private static final long serialVersionUID = 2841387011338075385L;
	/**
	 * 
	 */
	private UserBean user;
	private Calendar transactionTime;
	private String operation;
	private Long entityPK;
	private String entityType;
	
	public UserTransactionBean() {
		// TODO initialize object
	}

	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	@Column(name = "user_transaction_id")
	public Long getUserTransactionId() {
		return id;
	}	
	
	public void setUserTransactionId(Long id) {
		this.id = id;
	}
	
	@OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="user_id", unique=false, nullable=false, updatable=true)		
	public UserBean getUser() {
		return user;
	}

	public void setUser(UserBean user) {
		this.user = user;
	}	
}
