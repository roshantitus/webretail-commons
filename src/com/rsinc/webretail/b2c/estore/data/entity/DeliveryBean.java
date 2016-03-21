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
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

/**
 * @author Roshan Titus
 *
 */
@Entity
@Access(AccessType.PROPERTY)
//@NamedQueries({@NamedQuery(name="findByUsername", query=""), })
@Table(name="delivery")
public class DeliveryBean extends BaseBean {

	/**
	 * 
	 */
	private static final long serialVersionUID = 4519314037779492477L;
	
	private OrderBean order;
	
	private String deliveryInstruction;

	private Boolean giftWrap;

	private String giftNote;

	private Date deliveryEstimate;
	
	

	public DeliveryBean() {
		super();
		// TODO initialize object
	}

	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	@Column(name = "delivery_id")
	public Long getDeliveryId() {
		return id;
	}	
	
	public void setDeliveryId(Long id) {
		this.id = id;
	}	

	@Column(name = "delivery_instruction")
	public String getDeliveryInstruction() {
		return deliveryInstruction;
	}



	public void setDeliveryInstruction(String deliveryInstruction) {
		this.deliveryInstruction = deliveryInstruction;
	}


	@Column(name = "gift_wrap")
	public Boolean getGiftWrap() {
		return giftWrap;
	}



	public void setGiftWrap(Boolean giftWrap) {
		this.giftWrap = giftWrap;
	}


	@Column(name = "gift_note")
	public String getGiftNote() {
		return giftNote;
	}



	public void setGiftNote(String giftNote) {
		this.giftNote = giftNote;
	}


	@Column(name = "delivery_estimate_date")
	public Date getDeliveryEstimate() {
		return deliveryEstimate;
	}



	public void setDeliveryEstimate(Date deliveryEstimate) {
		this.deliveryEstimate = deliveryEstimate;
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
