/**
 * 
 */
package com.rsinc.webretail.b2c.estore.data.entity.enums;

/**
 * @author Roshan Titus
 *
 */
public enum GenderType {

	MALE, FEMALE;
	
    public static GenderType getInvoiceStatus(String genderType)
    {
        if(genderType.equalsIgnoreCase("MALE"))
        {
            return MALE;
        }      
        return FEMALE;
    }		
}
