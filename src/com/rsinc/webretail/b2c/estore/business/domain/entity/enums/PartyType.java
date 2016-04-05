/**
 * 
 */
package com.rsinc.webretail.b2c.estore.business.domain.entity.enums;

/**
 * @author Roshan Titus
 *
 */
public enum PartyType {
	
	PERSON, ORGANIZATION;
	
    public static PartyType getPartyType(String partyType)
    {
        if(partyType.equalsIgnoreCase("ORGANIZATION"))
        {
            return ORGANIZATION;
        }      
        return PERSON;
    }		

}
