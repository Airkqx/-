package cn.ideal.controller;


import cn.ideal.domain.Apply;
import cn.ideal.domain.Demander;
import cn.ideal.domain.Volunteer;
import cn.ideal.service.AccountService;
import cn.ideal.service.VolunteerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/volunteer")

public class VolunteerController {

    @Autowired
    AccountService accountService;

    @Autowired
    VolunteerService volunteerService;

    @RequestMapping("")
    public String index(Model model, HttpSession session){
        String username = (String) session.getAttribute("volunteer");
        Volunteer volunteer=volunteerService.getVolunteerByName(username);
        model.addAttribute("volunteer",volunteer);
        return "volunteerhome";
    }

    @RequestMapping("/volunteerinformation")
    public String volunteerInformation(Model model, HttpSession session){
        String username = (String) session.getAttribute("volunteer");
        Volunteer volunteer=volunteerService.getVolunteerByName(username);
        model.addAttribute("volunteer",volunteer);
        return "volunteerinformation";
    }

    @RequestMapping("/changeinformation")
    public String changeInformation(HttpServletRequest request, HttpSession session, Model model){

        int result=volunteerService.changeInformation(request.getParameter("phoneNumber"),request.getParameter("email"),request.getParameter("address"),request.getParameter("description"), (String) session.getAttribute("volunteer"));
        if(result==1)
            model.addAttribute("Message","修改成功");
        else
            model.addAttribute("Message","修改失败");
        return "redirect:/volunteer/volunteerinformation";
    }

    @RequestMapping("/apply")
    public String applyVoluntary(String title,String name,Model model){
        Apply apply = new Apply();
        apply.setVoluntaryApply(title);
        apply.setVolunteerName(name);
        volunteerService.addInformation(apply);
        return "applySuccess";
    }

}
