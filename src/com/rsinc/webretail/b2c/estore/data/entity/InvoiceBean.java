/**
 * 
 */
package com.rsinc.webretail.b2c.estore.data.entity;

import java.util.Date;

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
import javax.validation.constraints.NotNull;

import com.rsinc.webretail.b2c.estore.data.entity.enums.InvoiceStatus;

/**
 * @author Roshan Titus
 *
 */
@Entity
@Access(AccessType.PROPERTY)
//@NamedQueries({@NamedQuery(name="findByUsername", query=""), })
@Table(name="invoice")
public class InvoiceBean extends BaseBean {

	/**
	 * 
	 */
	private static final long serialVersionUID = 2654978215629683092L;

	private OrderBean order;
	
	@NotNull
	private Date invoiceDate;
	private InvoiceStatus status;

	public InvoiceBean() {
		super();
		// TODO initialize object
	}

	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	@Column(name = "invoice_id")
	public Long getInvoiceId() {
		return id;
	}	
	
	public void setInvoiceId(Long id) {
		this.id = id;
	}	

	@Column(name = "invoice_date")
	public Date getInvoiceDate() {
		return invoiceDate;
	}

	public void setInvoiceDate(Date invoiceDate) {
		this.invoiceDate = invoiceDate;
	}

	public InvoiceStatus getStatus() {
		return status;
	}

	public void setStatus(InvoiceStatus status) {
		this.status = status;
	}
	
	@OneToOne(fetch = FetchType.LAZY)
	@JoinColumn(name="order_id", unique=true, nullable=false, updatable=true)	
	public OrderBean getOrder() {
		return order;
	}
	public void setOrder(OrderBean order) {
		this.order = order;
	}	
	
}
