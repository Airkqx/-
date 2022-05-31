package cn.ideal.controller;


import cn.ideal.domain.DemandInformation;
import cn.ideal.domain.Demander;
import cn.ideal.domain.VoluntaryInformation;
import cn.ideal.service.AccountService;
import cn.ideal.service.DemanderService;
import cn.ideal.service.PublicService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/demander")

public class DemanderController {
    @Autowired
    PublicService publicService;
    @Autowired
    AccountService accountService;
    @Autowired
    DemanderService demanderService;
    @Autowired
    HttpSession session;


    @RequestMapping("")
    public String index(HttpSession session){
        return "demanderhome";
    }

    @RequestMapping("/demanderinformation")
    public String demanderInformation(Model model, HttpSession session){
        String username = (String) session.getAttribute("demander");
        Demander demander=demanderService.getDemanderByName(username);
        model.addAttribute("demander",demander);
        return "demanderinformation";
    }

    @RequestMapping("/changeinformation")
    public String changeInformation(HttpServletRequest request,HttpSession session,Model model){

        int result=demanderService.changeInformation(request.getParameter("phoneNumber"),request.getParameter("email"),request.getParameter("profession"), (String) session.getAttribute("demander"));
        if(result==1)
            model.addAttribute("Message","修改成功");
        else
            model.addAttribute("Message","修改失败");
//        return "redirect:/demander/demanderinformation";
        return  "/test";
    }


    //渲染提交信息界面
    @RequestMapping("/releasedemandinformation")
    public String releaseDemandInformation(){
        return "releasedemandinformation";
    }

    @RequestMapping("/releasevolunteerinformation")
    public String releaseVolunteerInformation(){
        return "releasevolunteerinformation";
    }


    @RequestMapping("/submitdemnad")
    public String submitDemnadInformation(DemandInformation demandInformation){
        demandInformation.setDemander((String) session.getAttribute("demander"));
        demanderService.submitDemand(demandInformation);
        return "test2";
    }

    @RequestMapping("/submitvolunteer")
    public String submitVolunteerInformation(VoluntaryInformation voluntaryInformation){
        voluntaryInformation.setDemander((String) session.getAttribute("demander"));
        System.out.println("voluntaryInformation = " + voluntaryInformation);
        demanderService.submitVolunteer(voluntaryInformation);
        return "test2";
    }

    @RequestMapping("/demandinformations")
    public String showDemandInformation(Model model){  //展示自己物资提交的需求信息
        List<DemandInformation> demandInformations=demanderService.getDemandInformationByUsername((String) session.getAttribute("demander"));
        for (DemandInformation demandInformation : demandInformations) {
            if(demandInformation.getCheckStatus()==1){
                demandInformation.setChecked("Pass");
            }
            if(demandInformation.getCheckStatus()==0){
                demandInformation.setChecked("Unreviewed");
            }
            if(demandInformation.getCheckStatus()==-1){
                demandInformation.setChecked("Rejected");
            }
            if(demandInformation.getCheckStatus()==2) {
                demandInformation.setChecked("Finished");
            }}
        model.addAttribute("demandinformations",demandInformations);
        return "demandinformations";

    }

    @RequestMapping("/voluntaryinformations")
    public String showVolunteerInformation(Model model){   //展示自己提交的志愿需求信息
        List<VoluntaryInformation> voluntaryInformations=demanderService.getVoluntaryInformationByUsername((String) session.getAttribute("demander"));
        for (VoluntaryInformation voluntaryInformation : voluntaryInformations) {
            String title = voluntaryInformation.getTitle();
            String voluntaryNumber = String.valueOf(publicService.getVoluntaryNumber(title));
            String voluntaryNeedNumber = publicService.getVoluntaryNeedNumber(title);
            String counting = voluntaryNumber+"/"+voluntaryNeedNumber;
            System.out.println(counting);
            voluntaryInformation.setYet(counting);

            if(voluntaryInformation.getCheckStatus()==1){
                voluntaryInformation.setChecked("Pass");
            }
            if(voluntaryInformation.getCheckStatus()==0){
                voluntaryInformation.setChecked("Unreviewed");
            }
            if(voluntaryInformation.getCheckStatus()==-1){
                voluntaryInformation.setChecked("Rejected");
            }
            if(voluntaryInformation.getCheckStatus()==2){
                voluntaryInformation.setChecked("Finished");
            }
        }

        model.addAttribute("voluntaryInformations",voluntaryInformations);
        return "voluntaryinformations";
    }


    @RequestMapping("/demandinformations/{id}")
    public String finshDemand(@PathVariable Integer id){
        demanderService.finshDemand(id);
        return "redirect:/demander/demandinformations";
    }

    @RequestMapping("/voluntaryinformations/{id}")
    public String finshVoluntary(@PathVariable Integer id){
        demanderService.finshVoluntary(id);
        return "redirect:/demander/voluntaryinformations";

    }






}
