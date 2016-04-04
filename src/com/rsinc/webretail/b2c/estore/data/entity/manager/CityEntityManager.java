/**
 * 
 */
package com.rsinc.webretail.b2c.estore.data.entity.manager;

import com.rsinc.webretail.b2c.estore.common.exception.system.RetrievalFailureSystemException;
import com.rsinc.webretail.b2c.estore.data.entity.CityBean;

/**
 * @author Roshan Titus
 *
 */
public interface CityEntityManager extends BaseEntityManager<CityBean> {

	
	CityBean findByCityCode(String cityCde) throws RetrievalFailureSystemException;
}
