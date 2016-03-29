/**
 * 
 */
package com.rsinc.webretail.b2c.estore.data.dao;

import static junit.framework.Assert.assertNotNull;
import static junit.framework.Assert.fail;

import java.util.Calendar;

import javax.inject.Inject;
import javax.transaction.Transactional;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.rsinc.webretail.b2c.estore.common.config.AppConfig;
import com.rsinc.webretail.b2c.estore.common.logging.Logger;
import com.rsinc.webretail.b2c.estore.common.logging.LoggerFactory;
import com.rsinc.webretail.b2c.estore.common.util.CommonConstants;
import com.rsinc.webretail.b2c.estore.common.util.SecurityContextUtils;
import com.rsinc.webretail.b2c.estore.data.entity.PartyBean;
import com.rsinc.webretail.b2c.estore.data.entity.PersonBean;
import com.rsinc.webretail.b2c.estore.data.entity.UserBean;
import com.rsinc.webretail.b2c.estore.data.entity.enums.UserStatus;

/**
 * @author Roshan Titus
 *
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes={AppConfig.class})
@Transactional
public class PersistanceDaoTest {
	
	private static final String PARTY_EMAIL_ID = "roshantitus@gmail.com";

	//@InjectLogger 
	private static Logger logger = LoggerFactory.getLogger(PersistanceDaoTest.class);
	
	@Inject
	private PersistanceDao persistanceDao;
	
	@Test
	public void testCreateUser()
	{
		try {
			UserBean userBean = getUser();
			persistanceDao.create(userBean);
			
			assertNotNull(userBean.getUserId());
			logger.info(userBean.getUserId());
		} catch (Exception e) {
			e.printStackTrace();
			fail(e.getMessage());
		}
	}

	/**
	 * @return
	 */
	private UserBean getUser() {
		UserBean userBean = new UserBean();
		userBean.setStatus(UserStatus.getUserStatus("NEW"));
		userBean.setCreatedBy(SecurityContextUtils.getLoggedInUser());
		userBean.setCreatedDate(Calendar.getInstance());
		userBean.setUpdatedBy(SecurityContextUtils.getLoggedInUser());
		userBean.setUpdatedDate(Calendar.getInstance());
		userBean.setRecordVersionNo(CommonConstants.ZERO);
		userBean.setDeletedYN(CommonConstants.False);
		PartyBean party = new PersonBean();
		party.setEmail(PARTY_EMAIL_ID);
		party.setCreatedBy(SecurityContextUtils.getLoggedInUser());
		party.setCreatedDate(Calendar.getInstance());
		party.setUpdatedBy(SecurityContextUtils.getLoggedInUser());
		party.setUpdatedDate(Calendar.getInstance());
		party.setRecordVersionNo(CommonConstants.ZERO);
		party.setDeletedYN(CommonConstants.False);		
		userBean.setParty(party);
		return userBean;
	}
}
