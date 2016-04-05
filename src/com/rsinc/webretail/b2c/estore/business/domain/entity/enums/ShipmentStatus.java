/**
 * 
 */
package com.rsinc.webretail.b2c.estore.business.domain.entity.enums;

/**
 * @author Roshan Titus
 *
 */
public enum ShipmentStatus {
	
	NEW, PREPARING_SHIPMENT, PACKED_AND_AWAITING_TRACKING_NO, TRACKING_NO_ASSIGNED, IN_TRANSIT, DELIVERED;

    public static ShipmentStatus getOrderStatus(String orderStatus)
    {
        if(orderStatus.equalsIgnoreCase("PREPARING_SHIPMENT"))
        {
            return PREPARING_SHIPMENT;
        }
        else if(orderStatus.equalsIgnoreCase("PACKED_AND_AWAITING_TRACKING_NO"))
        {
            return PACKED_AND_AWAITING_TRACKING_NO;
        }
        else if(orderStatus.equalsIgnoreCase("TRACKING_NO_ASSIGNED"))
        {
            return TRACKING_NO_ASSIGNED;
        }
        else if(orderStatus.equalsIgnoreCase("IN_TRANSIT"))
        {
            return IN_TRANSIT;
        }
        else if(orderStatus.equalsIgnoreCase("DELIVERED"))
        {
            return DELIVERED;
        }               
        return NEW;
    } 
}
