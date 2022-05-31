package cn.ideal.controller;


import cn.ideal.domain.DemandInformation;
import cn.ideal.domain.Demander;
import cn.ideal.domain.VoluntaryInformation;
import cn.ideal.service.AccountService;
import cn.ideal.service.AdminService;
import cn.ideal.service.EmailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;


@Controller
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    private AccountService accountService;
    @Autowired
    private EmailService emailService;

    @Autowired
    private AdminService adminService;

    @RequestMapping("")
    public String admin(){
        return "admin";
    }



    @RequestMapping("/checkdemander")
    public String checkDemander(Model model){
        List<Demander> list=accountService.findAllDemander();
        model.addAttribute("list",list);
        return "checkdemander";
    }


    @RequestMapping("/checkdemander/{id}")
    public String getDemanderByID(@PathVariable("id") Integer id, Model model){
        Demander demander=accountService.getDemanderById(id);//设权限 不能查出已同意的
        model.addAttribute("demander",demander);
        return "demander";
    }//查询个人的详细信息

    @RequestMapping("/checkdemander/{id}/aggree")
    public String aggreeRegister(@PathVariable("id") Integer id){
        Demander demander=accountService.getDemanderById(id);
        accountService.aggreeRegister(id);
        emailService.sendEmail(demander.getEmail(),1);  //发送邮件
        return "redirect:/admin/checkdemander/";
    }   //审核通过



    @RequestMapping("/checkdemander/{id}/reject")
    public String rejectRegister(@PathVariable("id") Integer id){
        Demander demander=accountService.getDemanderById(id);
        accountService.rejectRegister(id);
        emailService.sendEmail(demander.getEmail(),0);  //发送邮件
        return "redirect:/admin/checkdemander/";
    }  //拒绝审核


    @RequestMapping("/checkdemand")
    public String checkDeamnd(Model model){
        List<DemandInformation> newDemandInformations = adminService.getNewDemandInformation();
        model.addAttribute("newDemandInformations",newDemandInformations);
        return "checkdemand";

    }

    @RequestMapping("/checkdemand/{id}")
    public String getDemandByID(@PathVariable("id") Integer id, Model model){
        DemandInformation demandInformation = adminService.getDemandInformationById(id);
        System.out.println("demandInformation = " + demandInformation);
        model.addAttribute("demandInformation",demandInformation);
        return "demand";
    }//查询个人的详细信息

    @RequestMapping("/checkdemand/{id}/aggree")
    public String aggreeDemand(@PathVariable("id") Integer id, Model model){
        adminService.aggreeDemand(id);
        return "redirect:/admin/checkdemand/";
    }//查询个人的详细信息

    @RequestMapping("/checkdemand/{id}/reject")
    public String rejectDemand(@PathVariable("id") Integer id, Model model){
        adminService.rejectDemand(id);
        return "redirect:/admin/checkdemand/";
    }//查询个人的详细信息




    @RequestMapping("/checkvoluntary")
    public String checkVoluntary(Model model){
        List<VoluntaryInformation> newVoluntaryInformations = adminService.getNewVoluntaryInformation();
        model.addAttribute("newVoluntaryInformations",newVoluntaryInformations);
        return "checkvoluntary";
    }


    @RequestMapping("/checkvoluntary/{id}")
    public String getVoluntaryByID(@PathVariable("id") Integer id, Model model){
        VoluntaryInformation voluntaryInformation = adminService.getVoluntaryInformationById(id);
        model.addAttribute("VoluntaryInformation",voluntaryInformation);
        return "voluntary";
    }//查询个人的详细信息


    @RequestMapping("/checkvoluntary/{id}/aggree")
    public String aggreeVoluntary(@PathVariable("id") Integer id, Model model){
        adminService.aggreeVoluntary(id);
        return "redirect:/admin/checkvoluntary/";
    }//查询个人的详细信息

    @RequestMapping("/checkvoluntary/{id}/reject")
    public String rejectVoluntary(@PathVariable("id") Integer id, Model model){
        adminService.rejectVoluntary(id);
        return "redirect:/admin/checkvoluntary/";
    }//查询个人的详细信息







}
