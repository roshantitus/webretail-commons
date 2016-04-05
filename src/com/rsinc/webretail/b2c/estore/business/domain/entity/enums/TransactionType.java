/**
 * 
 */
package com.rsinc.webretail.b2c.estore.business.domain.entity.enums;

/**
 * @author Roshan Titus
 *
 */
public enum TransactionType {
	
	CREDIT_CARD_TRANSACTION, DEBIT_CARD_TRANSACTION, NETBANKING_TRANSACTION;

    public static TransactionType getPaymentMethod(String paymentMethod)
    {
        if(paymentMethod.equalsIgnoreCase("CREDIT_CARD_TRANSACTION"))
        {
            return CREDIT_CARD_TRANSACTION;
        }
        else if(paymentMethod.equalsIgnoreCase("DEBIT_CARD_TRANSACTION"))
        {
            return DEBIT_CARD_TRANSACTION;
        }       
        return NETBANKING_TRANSACTION;
    }	
}
