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

import com.rsinc.webretail.b2c.estore.business.domain.entity.CityBean;
import com.rsinc.webretail.b2c.estore.business.domain.entity.CountryBean;
import com.rsinc.webretail.b2c.estore.business.domain.entity.manager.CityEntityManager;
import com.rsinc.webretail.b2c.estore.common.config.AppConfig;
import com.rsinc.webretail.b2c.estore.common.util.CommonConstants;

/**
 * @author Roshan Titus
 *
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes={AppConfig.class})
public class CityEntityManagerTest {

	private static final String CITY_CODE = "THIRUVANANTHAPURAM";
	
	@Inject
	private CityEntityManager cityEntityManager;
	
	@Test
	@Transactional
	public void testForSeededValues() {

		try {
			
			List<CityBean> cities = cityEntityManager.findAll();
			assertNotNull(cities);
			assertTrue(cities.size() > 0);
			
		} catch (Exception e) {
			e.printStackTrace();
			fail(e.getMessage());
		}
	}
	
	@Test
	@Transactional
	public void testFindByCityCode() {

		try {
			
			CityBean cityBean = cityEntityManager.findByCityCode(CITY_CODE);
			assertNotNull(cityBean);
			
		} catch (Exception e) {
			e.printStackTrace();
			fail(e.getMessage());
		}
	}

}
