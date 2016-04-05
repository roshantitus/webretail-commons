/**
 * 
 */
package com.rsinc.webretail.b2c.estore.business.domain.entity.enums;

/**
 * @author Roshan Titus
 *
 */
public enum ShippingType {

	COURIER, POST;
	
    public static ShippingType getShippingType(String shippingType)
    {
        if(shippingType.equalsIgnoreCase("POST"))
        {
            return POST;
        }      
        return COURIER;
    }
    
}
