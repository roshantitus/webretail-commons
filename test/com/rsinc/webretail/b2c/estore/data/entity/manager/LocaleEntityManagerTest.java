/**
 * 
 */
package com.rsinc.webretail.b2c.estore.data.entity.manager;

import static junit.framework.Assert.assertNotNull;
import static junit.framework.Assert.assertTrue;
import static junit.framework.Assert.fail;

import java.util.List;

import javax.inject.Inject;
import javax.transaction.Transactional;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.rsinc.webretail.b2c.estore.common.config.AppConfig;
import com.rsinc.webretail.b2c.estore.common.util.CommonConstants;
import com.rsinc.webretail.b2c.estore.data.entity.LocaleBean;
import com.rsinc.webretail.b2c.estore.data.entity.StateBean;

/**
 * @author Roshan Titus
 *
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes={AppConfig.class})
public class LocaleEntityManagerTest {

	@Inject
	private LocaleEntityManager localeEntityManager;
	
	@Test
	@Transactional
	public void testForSeededValues() {

		try {
			
			List<LocaleBean> locales = localeEntityManager.findAll();
			assertNotNull(locales);
			assertTrue(locales.size() > 0);
			
		} catch (Exception e) {
			e.printStackTrace();
			fail(e.getMessage());
		}
	}
	
	@Test
	@Transactional
	public void testFindByLocaleCode() {

		try {
			
			LocaleBean localeBean = localeEntityManager.findByLocaleCode(CommonConstants.DEFAULT_LOCALE);
			assertNotNull(localeBean);
			
		} catch (Exception e) {
			e.printStackTrace();
			fail(e.getMessage());
		}
	}

}
