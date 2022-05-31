package cn.ideal.controller;


import cn.ideal.Verification.Code;
import cn.ideal.Verification.VerificationCode;
import cn.ideal.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

;

@Controller
public class LoginController {

    @Autowired
    private AccountService accountService;


    @RequestMapping("/")
    public String index(){
        return "index";
    }


    @RequestMapping("/checklogin")
    public String login(HttpServletRequest request, Model model){
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String userType = request.getParameter("usertype");
        String tableName=null;
        HttpSession session=request.getSession();
        if(userType.equals("admin")){
            tableName="t_admin";
        }
        else if (userType.equals("demander")){
            tableName="t_demanders";
        }
        else if(userType.equals("volunteer")){
            tableName="t_volunteers";
        }
        else {
            System.out.println("fuck!!");
        }

        String name=accountService.login(username, password, tableName);


        if(name==null){
            model.addAttribute("errorMsg","The user name or password is incorrect");
            return "index";
        }

        else {
            if(tableName.equals("t_admin")){
                session.setAttribute("admin",name);
                return "redirect:/admin";
            }
            else if(tableName.equals("t_demanders")){
                session.setAttribute("demander",name);
                return "redirect:/demander";
            }
            else if(tableName.equals("t_volunteers")){
                session.setAttribute("volunteer",name);
                return "redirect:/volunteer";

            }

        }
        return "test";

    }
    @RequestMapping("updatePwd")
    String updatePwd(){
        return "updatePwd";
    }

    @RequestMapping("updatePassword")
    String updatePassword(HttpServletRequest request, Model model){
        String username = request.getParameter("username");
        String passwordOld = request.getParameter("password");
        String passwordNew = request.getParameter("password2");
        String userType = request.getParameter("usertype");
        String tableName=null;
        if(userType.equals("admin")){
            tableName="t_admin";
        }
        else if (userType.equals("demander")){
            tableName="t_demanders";
        }
        else if(userType.equals("volunteer")){
            tableName="t_volunteers";
        }
        String name=accountService.login(username, passwordOld, tableName);

        if(name==null){
            model.addAttribute("errorMsg","The user name or password is incorrect");
            return "updatePwd";
        }

        accountService.Update(username,passwordNew,tableName);

        return "updateSuccess";
    }

    @RequestMapping("/missPwd")
    String missPwd(){
        return "missPwd";
    }

    @RequestMapping("missPassword")
    String missPassword(HttpServletRequest request, Model model){
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String userType = request.getParameter("usertype");
        String code = request.getParameter("code");
        boolean judge = code.equals(Code.get());
        String tableName=null;
        HttpSession session=request.getSession();
        if(userType.equals("admin")){
            tableName="t_admin";
        }
        else if (userType.equals("demander")){
            tableName="t_demanders";
        }
        else if(userType.equals("volunteer")){
            tableName="t_volunteers";
        }

        String name = accountService.login2(username, tableName);


        if(name==null){
            model.addAttribute("errorMsg","User name error\n");
            return "missPwd";
        }

        if(!judge){
            model.addAttribute("msg","Verification code error");
            return "missPwd";
        }


        return "updateSuccess";
    }

    @RequestMapping("return")
    String returnPage(){
        return "index";
    }

    @RequestMapping("/returnAdmin")
    public String returnAdmin(){
        return "admin";
    }

    @RequestMapping("/returnDemander")
    public String returnDemander(){
        return "demanderhome";
    }

    @RequestMapping("/returnVolunteer")
    public String returnVolunteer(){
        return "volunteerhome";
    }


}
