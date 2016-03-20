/**
 * 
 */
package com.rsinc.webretail.b2c.estore.data.entity;

import java.util.Date;

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
@Table(name="payment")
public class PaymentBean extends BaseBean {

	private InvoiceBean invoice;
	private Date paymentReceivedDate;
	private PaymentGatewayBean paymentGateway;
	private PaymentMethodBean paymentMethod;
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
	
	public InvoiceBean getInvoice() {
		return invoice;
	}

	public void setInvoice(InvoiceBean invoice) {
		this.invoice = invoice;
	}

	@Column(name = "payment_received_date")
	public Date getPaymentReceivedDate() {
		return paymentReceivedDate;
	}

	public void setPaymentReceivedDate(Date paymentReceivedDate) {
		this.paymentReceivedDate = paymentReceivedDate;
	}

	public PaymentGatewayBean getPaymentGateway() {
		return paymentGateway;
	}

	public void setPaymentGateway(PaymentGatewayBean paymentGateway) {
		this.paymentGateway = paymentGateway;
	}

	public PaymentMethodBean getPaymentMethod() {
		return paymentMethod;
	}

	public void setPaymentMethod(PaymentMethodBean paymentMethod) {
		this.paymentMethod = paymentMethod;
	}

	@Column(name = "payment_amount")
	public Double getPaymentAmount() {
		return paymentAmount;
	}

	public void setPaymentAmount(Double paymentAmount) {
		this.paymentAmount = paymentAmount;
	}

}
