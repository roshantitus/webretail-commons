/**
 * 
 */
package com.rsinc.webretail.b2c.estore.data.entity;

import javax.persistence.Access;
import javax.persistence.AccessType;
import javax.persistence.CascadeType;
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
@Table(name="shipment_Item")
public class ShipmentItemBean extends BaseBean {

	/**
	 * 
	 */
	private static final long serialVersionUID = -5502224558121810096L;
	
	private ShipmentBean shipment;
	
	private OrderLineItemBean item;

	public ShipmentItemBean() {
		super();
		// TODO initialize object
	}

	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	@Column(name = "shipment_Item_id")
	public Long getShipmentItemId() {
		return id;
	}	
	
	public void setShipmentItemId(Long id) {
		this.id = id;
	}	
	
	@OneToOne(optional=false, fetch = FetchType.EAGER,cascade=CascadeType.ALL)
    @JoinColumn(name="order_line_item_id", unique=true, nullable=true, updatable=true)		
	public OrderLineItemBean getItem() {
		return item;
	}

	public void setItem(OrderLineItemBean item) {
		this.item = item;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name="shipment_id", unique=true, nullable=false, updatable=true)		
	public ShipmentBean getShipment() {
		return shipment;
	}

	public void setShipment(ShipmentBean shipment) {
		this.shipment = shipment;
	}
	
	

}
