/**
 * 
 */
package com.rsinc.webretail.b2c.estore.common.util;

import com.rsinc.webretail.b2c.estore.business.domain.entity.UserBean;

/**
 * @author Roshan Titus
 *
 */
public class SecurityContextUtils {


	
	public static UserBean getLoggedInUser() {
		return null;
	}

	public static Long getLoggedInUserId() {
		// TODO Auto-generated method stub
		return CommonConstants.SYSTEM_USER;
	}

}
