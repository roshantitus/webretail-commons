/**
 * 
 */
package com.rsinc.webretail.b2c.estore.data.entity;

import java.util.Date;
import java.util.List;

/**
 * @author Roshan Titus
 *
 */
public class ShipmentBean extends BaseBean {

	/**
	 * 
	 */
	private static final long serialVersionUID = 5540254897667783185L;
	
	private Date shipmentDate;

	private Integer shipmentTrackingNo;

	private String shippingCompany;

	private Date expectedArrivalDate;

	private Double shipmentCharges;
	
	private InvoiceBean invoice;
	
	List<ShipmentItemBean> shipmentItems;

	public ShipmentBean() {
		super();
		// TODO initialize object
	}

}
