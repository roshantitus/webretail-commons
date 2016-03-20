/**
 * 
 */
package com.rsinc.webretail.b2c.estore.data.entity.enums;

/**
 * @author Roshan Titus
 *
 */
public enum UserStatus {
	
	NEW, ACTIVE, LOCKED, DISABLED;
	
    public static UserStatus getUserStatus(String userStatus)
    {
        if(userStatus.equalsIgnoreCase("ACTIVE"))
        {
            return ACTIVE;
        }
        else if(userStatus.equalsIgnoreCase("LOCKED"))
        {
            return LOCKED;
        }  
        else if(userStatus.equalsIgnoreCase("DISABLED"))
        {
            return DISABLED;
        }        
        return NEW;
    }		

}
