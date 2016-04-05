/**
 * 
 */
package com.rsinc.webretail.b2c.estore.data.entity.manager;

import com.rsinc.webretail.b2c.estore.common.exception.system.RetrievalFailureSystemException;
import com.rsinc.webretail.b2c.estore.data.entity.StateBean;

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
