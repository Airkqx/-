package cn.ideal.controller;

import cn.ideal.domain.Demander;
import cn.ideal.domain.Volunteer;
import cn.ideal.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.UUID;

@Controller
public class AccountController {

    @Autowired
    private AccountService accountService;


    @RequestMapping("/demanderregister")
    public String demanderRegister(){
        return "demanderregister";
    }

    @RequestMapping("/checkdemanderregister")
    public String checkDemanderRegister(Demander demander, MultipartFile photo, HttpSession session, Model model) throws IOException {
        //获取上传的文件的文件名

        String fileName = photo.getOriginalFilename();
        System.out.println(fileName=="");
        if(fileName == ""){
            model.addAttribute("fileError","请上传照片！");
            return "demanderregister";
        }
        //处理文件重名问题
        String hzName = fileName.substring(fileName.lastIndexOf("."));
        fileName = UUID.randomUUID().toString() + hzName;
        //获取服务器中photo目录的路径
        ServletContext servletContext = session.getServletContext();
        String photoPath = servletContext.getRealPath("photo");
        File file = new File(photoPath);
        if(!file.exists()){
            file.mkdir();
        }
        String finalPath = photoPath + File.separator + fileName;
        //实现上传功能
        demander.setIDCardPhoto(fileName);
        accountService.addDemander(demander);
        photo.transferTo(new File(finalPath));
        return "test";
    }

    @RequestMapping("/volunteerregister")
    public String volunteerRegister(){
        return "volunteerregister";
    }

    @RequestMapping("/checkvolunteerregister")
    public String checkVolunteerRegister(Volunteer volunteer){
        accountService.addVolunteer(volunteer);
        return "test";
    }











}
