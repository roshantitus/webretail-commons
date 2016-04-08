/**
 * 
 */
package com.rsinc.webretail.b2c.estore.business.domain.entity.manager;

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

import com.rsinc.webretail.b2c.estore.business.domain.entity.RoleBean;
import com.rsinc.webretail.b2c.estore.business.domain.entity.LocaleBean;
import com.rsinc.webretail.b2c.estore.business.domain.entity.manager.RoleEntityManager;
import com.rsinc.webretail.b2c.estore.common.config.AppConfig;
import com.rsinc.webretail.b2c.estore.common.util.CommonConstants;

/**
 * @author Roshan Titus
 *
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes={AppConfig.class})
public class RoleEntityManagerTest {
	
	@Inject
	private RoleEntityManager roleEntityManager;
	
	@Test
	@Transactional
	public void testForSeededValues() {

		try {
			
			List<RoleBean> currencies = roleEntityManager.findAll();
			assertNotNull(currencies);
			assertTrue(currencies.size() > 0);
			
		} catch (Exception e) {
			e.printStackTrace();
			fail(e.getMessage());
		}
	}
	
	@Test
	@Transactional
	public void testFindByRoleCode() {

		try {
			
			RoleBean roleBean = roleEntityManager.findByRoleCode(CommonConstants.ROLE_ADMINISTRATOR);
			assertNotNull(roleBean);
			
		} catch (Exception e) {
			e.printStackTrace();
			fail(e.getMessage());
		}
	}

}
