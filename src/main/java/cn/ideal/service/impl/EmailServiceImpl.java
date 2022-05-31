package cn.ideal.service.impl;

import cn.ideal.service.EmailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import javax.mail.internet.MimeMessage;

@Service("emailservice")
public class EmailServiceImpl implements EmailService {

    @Autowired
    private JavaMailSender javaMailSender;	//在spring中配置的邮件发送的bean
    String from="aideducation2022@163.com";	//发件人邮箱
    String subject = "由爱心支教平台发送";	//邮件主题
    String text = "你好，这是一封来自SSM框架整合JavaMail的邮件";	//邮件正文


    @Override
    public void sendEmail(String to,int status) {

        if(status==1)
            text="恭喜您，注册成功";
        else
            text="注册失败，请重新注册";

        MimeMessage message = javaMailSender.createMimeMessage();	//创建邮件对象
        MimeMessageHelper messageHelper;	//处理MimeMessage的辅助类
        try {
            messageHelper = new MimeMessageHelper(message, true);
            messageHelper.setFrom(from);
            messageHelper.setTo(to);
            messageHelper.setSubject(subject);
            messageHelper.setText(text,true);	//true代表支持html格式

            javaMailSender.send(message);
            System.out.println("success!");

        }catch (Exception e) {
            e.printStackTrace();
        }

    }


}
