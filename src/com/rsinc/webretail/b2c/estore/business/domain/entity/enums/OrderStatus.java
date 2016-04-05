/**
 * 
 */
package com.rsinc.webretail.b2c.estore.business.domain.entity.enums;

/**
 * @author Roshan Titus
 *
 */
public enum OrderStatus {
	
	NEW, PAYMENT_RECIEVED, PROCESSING, HOLD, CANCELLED, SHIPPED, DELIVERED, RETURNED;

    public static OrderStatus getOrderStatus(String orderStatus)
    {
        if(orderStatus.equalsIgnoreCase("PAYMENT_RECIEVED"))
        {
            return PAYMENT_RECIEVED;
        }
        else if(orderStatus.equalsIgnoreCase("PROCESSING"))
        {
            return PROCESSING;
        }
        else if(orderStatus.equalsIgnoreCase("CANCELLED"))
        {
            return CANCELLED;
        }
        else if(orderStatus.equalsIgnoreCase("SHIPPED"))
        {
            return SHIPPED;
        }
        else if(orderStatus.equalsIgnoreCase("DELIVERED"))
        {
            return DELIVERED;
        }        
        else if(orderStatus.equalsIgnoreCase("RETURNED"))
        {
            return RETURNED;
        }        
        return NEW;
    } 
}
