/**
 * 
 */
package com.rsinc.webretail.b2c.estore.business.domain.entity.manager;

import com.rsinc.webretail.b2c.estore.business.domain.entity.CityBean;
import com.rsinc.webretail.b2c.estore.common.exception.system.RetrievalFailureSystemException;

/**
 * @author Roshan Titus
 *
 */
public interface CityEntityManager extends BaseEntityManager<CityBean> {

	
	CityBean findByCityCode(String cityCde) throws RetrievalFailureSystemException;
}
