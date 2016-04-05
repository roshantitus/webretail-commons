/**
 * 
 */
package com.rsinc.webretail.b2c.estore.data.entity.manager;

import com.rsinc.webretail.b2c.estore.common.exception.system.RetrievalFailureSystemException;
import com.rsinc.webretail.b2c.estore.data.entity.CountryBean;

/**
 * @author Roshan Titus
 *
 */
public interface CountryEntityManager extends BaseEntityManager<CountryBean> {

	/**
	 * @param countryCode
	 * @return
	 */
	CountryBean findByCountryCode(String countryCode) throws RetrievalFailureSystemException;

}
