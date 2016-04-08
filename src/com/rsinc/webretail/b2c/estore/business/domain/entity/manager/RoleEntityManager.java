/**
 * 
 */
package com.rsinc.webretail.b2c.estore.business.domain.entity.manager;

import com.rsinc.webretail.b2c.estore.business.domain.entity.RoleBean;
import com.rsinc.webretail.b2c.estore.common.exception.system.RetrievalFailureSystemException;

/**
 * @author Roshan Titus
 *
 */
public interface RoleEntityManager extends BaseEntityManager<RoleBean>{

	RoleBean findByRoleCode(String roleCode) throws RetrievalFailureSystemException;
}
