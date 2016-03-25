/**
 * 
 */
package com.rsinc.webretail.b2c.estore.data.entity;

import java.util.List;

import javax.persistence.Access;
import javax.persistence.AccessType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

/**
 * @author Roshan Titus
 *
 */
@Entity
@Access(AccessType.PROPERTY)
//@NamedQueries({@NamedQuery(name="findByUsername", query=""), })
@Table(name="payment")
public class PaymentBean extends BaseBean {

	private OrderBean order;
	private PaymentGatewayBean paymentGateway;
	private List<PaymentTransactionBean> paymentTransactions;
	private Double paymentAmount;
	
	public PaymentBean() {
		super();
		// TODO initialize object
	}

	/**
	 * 
	 */
	private static final long serialVersionUID = -5392331697145705707L;

	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	@Column(name = "payment_id")
	public Long getPaymentId() {
		return id;
	}	
	
	public void setPaymentId(Long id) {
		this.id = id;
	}

	@OneToOne(fetch = FetchType.EAGER)
	@JoinColumn(name="payment_gateway_id", unique=true, nullable=false, updatable=true)		
	public PaymentGatewayBean getPaymentGateway() {
		return paymentGateway;
	}

	public void setPaymentGateway(PaymentGatewayBean paymentGateway) {
		this.paymentGateway = paymentGateway;
	}

	@Column(name = "payment_amount")
	public Double getPaymentAmount() {
		return paymentAmount;
	}

	public void setPaymentAmount(Double paymentAmount) {
		this.paymentAmount = paymentAmount;
	}

	@OneToOne(fetch = FetchType.LAZY)
	@JoinColumn(name="order_id", unique=true, nullable=false, updatable=true)	
	public OrderBean getOrder() {
		return order;
	}
	
	public void setOrder(OrderBean order) {
		this.order = order;
	}

	@OneToMany(mappedBy="payment", fetch = FetchType.EAGER)		
	public List<PaymentTransactionBean> getPaymentTransactions() {
		return paymentTransactions;
	}

	public void setPaymentTransactions(
			List<PaymentTransactionBean> paymentTransactions) {
		this.paymentTransactions = paymentTransactions;
	}

}
