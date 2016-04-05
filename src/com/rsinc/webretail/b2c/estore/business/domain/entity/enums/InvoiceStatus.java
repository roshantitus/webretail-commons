/**
 * 
 */
package com.rsinc.webretail.b2c.estore.business.domain.entity.enums;

/**
 * @author Roshan Titus
 *
 */
public enum InvoiceStatus {
	ISSUED, PAYED;
	
    public static InvoiceStatus getInvoiceStatus(String invoiceStatus)
    {
        if(invoiceStatus.equalsIgnoreCase("PAYED"))
        {
            return PAYED;
        }      
        return ISSUED;
    }	
}
