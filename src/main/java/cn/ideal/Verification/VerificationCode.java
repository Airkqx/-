package cn.ideal.Verification;


import com.google.code.kaptcha.Producer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.awt.image.BufferedImage;
import java.io.IOException;

@Controller
public class VerificationCode{
    @Autowired
    private Producer kaptchaProducer;

    //生成验证码
    @RequestMapping("/getVerifyCode")
    public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)throws Exception{
        ModelAndView mv = new ModelAndView();
        response.setDateHeader("Expires",0);
        response.setHeader("Cache-Control", "no-store, no-cache, must-revalidate");
        response.addHeader("Cache-Control", "post-check=0, pre-check=0");
        response.setHeader("Pragma", "no-cache");
        response.setContentType("image/jpeg");
        String capText = kaptchaProducer.createText();//生产验证码
        Code.set(capText);
        System.err.println(Code.get());
        mv.addObject("code",capText);
        mv.setViewName("missPwd");
        request.getSession().setAttribute("verifyCode", capText);

        BufferedImage bi = kaptchaProducer.createImage(capText);//把验证码渲染到图片
        ServletOutputStream out = null;

        try {
            out = response.getOutputStream();//得到输出流
            ImageIO.write(bi, "jpg", out);//把图片以输出流的方式输出
        } catch (IOException e) {
            e.printStackTrace();
        }
        try {
            out.flush();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            try {
                out.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return mv;
    }

}
