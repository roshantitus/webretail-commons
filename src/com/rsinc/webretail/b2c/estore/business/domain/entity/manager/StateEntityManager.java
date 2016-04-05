/**
 * 
 */
package com.rsinc.webretail.b2c.estore.business.domain.entity.manager;

import com.rsinc.webretail.b2c.estore.business.domain.entity.StateBean;
import com.rsinc.webretail.b2c.estore.common.exception.system.RetrievalFailureSystemException;

/**
 * @author Roshan Titus
 *
 */
public interface StateEntityManager extends BaseEntityManager<StateBean> {

	/**
	 * @param stateCode
	 * @return
	 */
	StateBean findByStateCode(String stateCode) throws RetrievalFailureSystemException;

}
