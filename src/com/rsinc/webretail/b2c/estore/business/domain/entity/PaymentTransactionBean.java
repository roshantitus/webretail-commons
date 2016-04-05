/**
 * 
 */
package com.rsinc.webretail.b2c.estore.business.domain.entity;

import java.util.Date;

import javax.persistence.Access;
import javax.persistence.AccessType;
import javax.persistence.Column;
import javax.persistence.DiscriminatorColumn;
import javax.persistence.DiscriminatorType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.rsinc.webretail.b2c.estore.business.domain.entity.enums.TransactionStatus;

/**
 * @author Roshan Titus
 *
 */
@Entity
@Access(AccessType.PROPERTY)
//@NamedQueries({@NamedQuery(name="findByUsername", query=""), })
@Table(name="payment_transaction")
@Inheritance(strategy=InheritanceType.SINGLE_TABLE)
@DiscriminatorColumn(name="transaction_type", discriminatorType=DiscriminatorType.STRING)
public abstract class PaymentTransactionBean extends BaseBean {

	/**
	 * 
	 */
	private static final long serialVersionUID = 5796135675390020937L;
	private Date transactionDateAndTime;
	private TransactionStatus status;
	private Double transactionAmount; 
	private Double transactionCharges;
	private PaymentBean payment;
	
	public PaymentTransactionBean() {
		super();
	}

	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	@Column(name = "payment_transaction_id")
	public Long getPaymentTransactionId() {
		return id;
	}

	public void setPaymentTransactionId(Long id) {
		this.id = id;
	}

	@Column(name = "transaction_date_and_time")
	public Date getTransactionDateAndTime() {
		return transactionDateAndTime;
	}

	public void setTransactionDateAndTime(Date transactionDateAndTime) {
		this.transactionDateAndTime = transactionDateAndTime;
	}

	@Column(name = "transaction_status")
	public TransactionStatus getStatus() {
		return status;
	}

	public void setStatus(TransactionStatus status) {
		this.status = status;
	}
	

	@Column(name = "transaction_amount")
	public Double getTransactionAmount() {
		return transactionAmount;
	}

	public void setTransactionAmount(Double transactionAmount) {
		this.transactionAmount = transactionAmount;
	}

	@Column(name = "transaction_charges")
	public Double getTransactionCharges() {
		return transactionCharges;
	}

	public void setTransactionCharges(Double transactionCharges) {
		this.transactionCharges = transactionCharges;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name="payment_id", unique=false, nullable=false, updatable=true)	
	public PaymentBean getPayment() {
		return payment;
	}

	public void setPayment(PaymentBean payment) {
		this.payment = payment;
	}		

}
