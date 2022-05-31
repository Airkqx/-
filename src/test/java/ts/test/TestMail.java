package ts.test;

import cn.ideal.dao.AdminDao;
import cn.ideal.dao.DemanderDao;
import cn.ideal.domain.VoluntaryInformation;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.PropertySource;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:applicationContext.xml")
@PropertySource("classpath:config/mail.properties")	//导入mail.properties
public class TestMail {
    @Autowired
    DemanderDao demanderDao;


    @Autowired
    AdminDao adminDao;


    @Test
    public void sss(){
        demanderDao.finshVoluntary(2);



    }




}