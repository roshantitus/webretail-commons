/**
 * 
 */
package com.rsinc.webretail.b2c.estore.data.entity.enums;

/**
 * @author Roshan Titus
 *
 */
public enum PaymentMethod {
	
	CREDIT_CARD_PAYMENT, DEBIT_CARD_PAYMENT, NETBANKING_PAYMENT;

    public static PaymentMethod getPaymentMethod(String paymentMethod)
    {
        if(paymentMethod.equalsIgnoreCase("CREDIT_CARD_PAYMENT"))
        {
            return CREDIT_CARD_PAYMENT;
        }
        else if(paymentMethod.equalsIgnoreCase("DEBIT_CARD_PAYMENT"))
        {
            return DEBIT_CARD_PAYMENT;
        }       
        return NETBANKING_PAYMENT;
    }	
}
