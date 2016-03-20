/**
 * 
 */
package com.rsinc.webretail.b2c.estore.data.entity;

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
@Table(name="shipment_Item")
public class ShipmentItemBean extends BaseBean {

	/**
	 * 
	 */
	private static final long serialVersionUID = -5502224558121810096L;
	
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
	
	public OrderLineItemBean getItem() {
		return item;
	}

	public void setItem(OrderLineItemBean item) {
		this.item = item;
	}
	
	

}