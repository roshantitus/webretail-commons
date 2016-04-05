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
import com.rsinc.webretail.b2c.estore.data.entity.ShippingCompanyBean;

/**
 * @author Roshan Titus
 *
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes={AppConfig.class})
public class ShippingCompanyEntityManagerTest {
	
	@Inject
	private ShippingCompanyEntityManager shippingCompanyEntityManager;
	
	@Test
	@Transactional
	public void testForSeededValues() {

		try {
			
			List<ShippingCompanyBean> shippingCompanies = shippingCompanyEntityManager.findAll();
			assertNotNull(shippingCompanies);
			assertTrue(shippingCompanies.size() > 0);
			
		} catch (Exception e) {
			e.printStackTrace();
			fail(e.getMessage());
		}
	}

}
