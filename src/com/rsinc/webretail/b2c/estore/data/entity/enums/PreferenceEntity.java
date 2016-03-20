/**
 * 
 */
package com.rsinc.webretail.b2c.estore.data.entity.enums;

/**
 * @author Roshan Titus
 *
 */
public enum PreferenceEntity {
	
	SYSTEM, USER;
	
    public static PreferenceEntity getPreferenceEntity(String preferenceEntity)
    {
        if(preferenceEntity.equalsIgnoreCase("USER"))
        {
            return USER;
        }      
        return SYSTEM;
    }	
}
