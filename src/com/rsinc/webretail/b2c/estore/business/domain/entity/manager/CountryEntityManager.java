/**
 * 
 */
package com.rsinc.webretail.b2c.estore.business.domain.entity.manager;

import com.rsinc.webretail.b2c.estore.business.domain.entity.CountryBean;
import com.rsinc.webretail.b2c.estore.common.exception.system.RetrievalFailureSystemException;

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
