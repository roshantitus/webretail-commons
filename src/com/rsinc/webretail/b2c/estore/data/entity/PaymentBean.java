/**
 * 
 */
package com.rsinc.webretail.b2c.estore.data.entity;

import java.util.Date;

/**
 * @author Roshan Titus
 *
 */
public class PaymentBean extends BaseBean {

	private InvoiceBean invoice;
	private PaymentMethodBean paymentMethod;
	private Date paymentReceivedDate;
	private PaymentGatewayBean paymentGateway;
	private Double paymentAmount;
	
	public PaymentBean() {
		super();
		// TODO initialize object
	}

	/**
	 * 
	 */
	private static final long serialVersionUID = -5392331697145705707L;

}
