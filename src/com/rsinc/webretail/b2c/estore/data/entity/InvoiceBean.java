/**
 * 
 */
package com.rsinc.webretail.b2c.estore.data.entity;

import java.util.Date;

/**
 * @author Roshan Titus
 *
 */
public class InvoiceBean extends BaseBean {

	/**
	 * 
	 */
	private static final long serialVersionUID = 2654978215629683092L;


	private OrderBean order;
	private Date invoiceDate;
	private String status;

	public InvoiceBean() {
		super();
		// TODO initialize object
	}

}
