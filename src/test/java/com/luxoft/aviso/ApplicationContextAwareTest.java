package com.luxoft.aviso;


import org.junit.After;
import org.junit.BeforeClass;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.transaction.TransactionConfiguration;
import org.springframework.transaction.annotation.Transactional;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:applicationContext.xml"})
@TransactionConfiguration(defaultRollback = true, transactionManager = "transactionManager")
@Transactional
/*@ActiveProfiles("oracle")*/
public abstract class ApplicationContextAwareTest {

    @After
    public void afterMethod() {
        // nothing
    }

}
