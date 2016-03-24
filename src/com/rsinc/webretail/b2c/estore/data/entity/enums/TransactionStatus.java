/**
 * 
 */
package com.rsinc.webretail.b2c.estore.data.entity.enums;

/**
 * @author Roshan Titus
 *
 */
public enum TransactionStatus {

	SUCCESS, FAILURE;

    public static TransactionStatus getTransactionStatus(String transactionStatus)
    {
        if(transactionStatus.equalsIgnoreCase("SUCCESS"))
        {
            return SUCCESS;
        }       
        return FAILURE;
    } 
    
}
