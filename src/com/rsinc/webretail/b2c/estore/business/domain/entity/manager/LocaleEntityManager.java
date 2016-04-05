/**
 * 
 */
package com.rsinc.webretail.b2c.estore.business.domain.entity.manager;

import com.rsinc.webretail.b2c.estore.business.domain.entity.LocaleBean;
import com.rsinc.webretail.b2c.estore.common.exception.system.RetrievalFailureSystemException;

/**
 * @author Roshan Titus
 *
 */
public interface LocaleEntityManager extends BaseEntityManager<LocaleBean> {

	/**
	 * @param defaultLocale
	 * @return
	 */
	LocaleBean findByLocaleCode(String defaultLocale) throws RetrievalFailureSystemException;

}
