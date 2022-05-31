package cn.ideal.service.impl;

import cn.ideal.dao.AccountDao;
import cn.ideal.domain.Demander;
import cn.ideal.domain.Volunteer;
import cn.ideal.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("accountService")
public class AccountServiceImpl implements AccountService {

    @Autowired
    private AccountDao accountDao;
    @Autowired
    private JavaMailSender javaMailSender;

    @Override
    public List<Demander> findAllDemander() {
//        System.out.println("业务层：查询所有账户");
        return accountDao.findAllDemander();
    }

    @Override
    public void addDemander(Demander demander) {
        System.out.println("demander = " + demander);
        System.out.println("注册");
        accountDao.addDemander(demander);
    }

    @Override
    public void addVolunteer(Volunteer volunteer) {
        accountDao.addVolunteer(volunteer);
    }

    @Override
    public Demander getDemanderById(Integer id) {
        return accountDao.getDemanderById(id);

    }

    @Override
    public void aggreeRegister(Integer id) {
        accountDao.aggreeRegister(id);
    }

    @Override
    public void rejectRegister(Integer id) {
        accountDao.rejectRegister(id);
    }

    @Override
    public void sendEmail(String email, int status) {

        SimpleMailMessage simpleMailMessage=new SimpleMailMessage();
        simpleMailMessage.setFrom("支教平台管理员");
        simpleMailMessage.setTo("dingruide123@qq.com");
        simpleMailMessage.setSubject("注册成功");
        simpleMailMessage.setText("恭喜您在我们平台注册成功！");
        javaMailSender.send(simpleMailMessage);

    }

    @Override
    public String login(String username, String password, String tableName) {
        return accountDao.login(username, password,tableName);
    }

    @Override
    public String login2(String username, String tableName) {
        return accountDao.login2(username,tableName);
    }

    @Override
    public int Update(String username, String password, String tableName) {
        return accountDao.Update(username,password,tableName);
    }


}
