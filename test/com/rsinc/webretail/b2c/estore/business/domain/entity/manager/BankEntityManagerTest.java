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

import com.rsinc.webretail.b2c.estore.business.domain.entity.BankBean;
import com.rsinc.webretail.b2c.estore.business.domain.entity.manager.BankEntityManager;
import com.rsinc.webretail.b2c.estore.common.config.AppConfig;

/**
 * @author Roshan Titus
 *
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes={AppConfig.class})
public class BankEntityManagerTest {
	
	@Inject
	private BankEntityManager bankEntityManager;
	
	@Test
	@Transactional
	public void testForSeededValues() {

		try {
			
			List<BankBean> banks = bankEntityManager.findAll();
			assertNotNull(banks);
			assertTrue(banks.size() > 0);
			
		} catch (Exception e) {
			e.printStackTrace();
			fail(e.getMessage());
		}
	}

}
