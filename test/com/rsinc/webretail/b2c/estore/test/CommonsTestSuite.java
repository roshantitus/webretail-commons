/**
 * 
 */
package com.rsinc.webretail.b2c.estore.test;

import org.junit.runner.RunWith;
import org.junit.runners.Suite;

import com.rsinc.webretail.b2c.estore.business.domain.entity.manager.BankEntityManagerTest;
import com.rsinc.webretail.b2c.estore.business.domain.entity.manager.CategoryEntityManagerTest;
import com.rsinc.webretail.b2c.estore.business.domain.entity.manager.CityEntityManagerTest;
import com.rsinc.webretail.b2c.estore.business.domain.entity.manager.CountryEntityManagerTest;
import com.rsinc.webretail.b2c.estore.business.domain.entity.manager.CurrencyEntityManagerTest;
import com.rsinc.webretail.b2c.estore.business.domain.entity.manager.LocaleEntityManagerTest;
import com.rsinc.webretail.b2c.estore.business.domain.entity.manager.PaymentGatewayEntityManagerTest;
import com.rsinc.webretail.b2c.estore.business.domain.entity.manager.ShippingCompanyEntityManagerTest;
import com.rsinc.webretail.b2c.estore.business.domain.entity.manager.StateEntityManagerTest;
import com.rsinc.webretail.b2c.estore.business.domain.entity.manager.UserEntityManagerTest;
import com.rsinc.webretail.b2c.estore.common.email.MailManagerTest;
import com.rsinc.webretail.b2c.estore.data.dao.PersistanceDaoTest;

/**
 * @author Roshan Titus
 *
 */
@RunWith(Suite.class)
@Suite.SuiteClasses({
	PersistanceDaoTest.class,
	//QueryDaoTest.class,
	UserEntityManagerTest.class,
	CategoryEntityManagerTest.class,
	CountryEntityManagerTest.class,
	StateEntityManagerTest.class,
	CityEntityManagerTest.class,
	LocaleEntityManagerTest.class,
	CurrencyEntityManagerTest.class,
	ShippingCompanyEntityManagerTest.class,
	PaymentGatewayEntityManagerTest.class,
	BankEntityManagerTest.class,
	MailManagerTest.class
})
public class CommonsTestSuite {

}
