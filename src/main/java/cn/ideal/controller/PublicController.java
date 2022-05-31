package cn.ideal.controller;

import cn.ideal.domain.Apply;
import cn.ideal.domain.DemandInformation;
import cn.ideal.domain.VoluntaryInformation;
import cn.ideal.domain.Volunteer;
import cn.ideal.service.AdminService;
import cn.ideal.service.PublicService;
import cn.ideal.service.VolunteerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class PublicController {
    @Autowired
    PublicService publicService;

    @Autowired
    VolunteerService volunteerService;

    @Autowired
    AdminService adminService;


    @RequestMapping("/publicvoluntaryinformation/{id}/{title}")
    public String getVoluntaryByID(@PathVariable("id") Integer id, Model model,@PathVariable("title") String title){
        VoluntaryInformation voluntaryInformation = adminService.getVoluntaryInformationById(id);


        int voluntaryNumber = publicService.getVoluntaryNumber(title);
        String voluntaryNeedNumber = publicService.getVoluntaryNeedNumber(title);
        model.addAttribute("numerator",voluntaryNumber);
        model.addAttribute("denominator",voluntaryNeedNumber);

        model.addAttribute("VoluntaryInformation",voluntaryInformation);
        return "publicvoluntaryinformationdetails";
    }//查询个人的详细信息

    @RequestMapping("/publicdemandinformation/{id}")
    public String getDemandByID(@PathVariable("id") Integer id, Model model){
        DemandInformation demandInformation = adminService.getDemandInformationById(id);

        model.addAttribute("demandInformation",demandInformation);
        return "publicdemandinformationdetails";
    }//查询个人的详细信息



    @RequestMapping("/demandinformations")
    public String showPassdemandInformations(Model model){
        List<DemandInformation> passDemandInformations = publicService.getPassDemandInformation();
        model.addAttribute("passDemandInformations",passDemandInformations);
        for (DemandInformation passDemandInformation : passDemandInformations) {
            if(passDemandInformation.getCheckStatus()==1){
                passDemandInformation.setChecked("Pass");
            }
            if(passDemandInformation.getCheckStatus()==0){
                passDemandInformation.setChecked("Unreviewed");
            }
            if(passDemandInformation.getCheckStatus()==-1){
                passDemandInformation.setChecked("Rejected");
            }
            if(passDemandInformation.getCheckStatus()==2){
                passDemandInformation.setChecked("Finished");
        }}

        return "publicdemandinformation";
    }

    @RequestMapping("/demandinformations2")
    public String showPassdemandInformations2(Model model){
        List<DemandInformation> passDemandInformations = publicService.getPassDemandInformation();
        model.addAttribute("passDemandInformations",passDemandInformations);
        System.out.println("passDemandInformations = " + passDemandInformations);
        return "publicdemandinformation2";
    }

    @RequestMapping("/voluntaryinformations")
    public String showPassVoluntaryInformations(Model model){
        List<VoluntaryInformation> passVoluntaryInformations=publicService.getPassVoluntaryInformation();
        for (VoluntaryInformation passVoluntaryInformation : passVoluntaryInformations) {
            String title = passVoluntaryInformation.getTitle();
            String voluntaryNumber = String.valueOf(publicService.getVoluntaryNumber(title));
            String voluntaryNeedNumber = publicService.getVoluntaryNeedNumber(title);
            String counting = voluntaryNumber+"/"+voluntaryNeedNumber;
            System.out.println(counting);
            passVoluntaryInformation.setYet(counting);

            if(passVoluntaryInformation.getCheckStatus()==1){
                passVoluntaryInformation.setChecked("Pass");
            }
            if(passVoluntaryInformation.getCheckStatus()==0){
                passVoluntaryInformation.setChecked("Unreviewed");
            }
            if(passVoluntaryInformation.getCheckStatus()==-1){
                passVoluntaryInformation.setChecked("Rejected");
            }
            if(passVoluntaryInformation.getCheckStatus()==2){
                passVoluntaryInformation.setChecked("Finished");}}
        model.addAttribute("passVoluntaryInformations",passVoluntaryInformations);
        return "publicvoluntaryinformation";
    }

    @RequestMapping("/voluntaryinformations2")
    public String showPassVoluntaryInformations2(Model model, HttpSession session){
        List<VoluntaryInformation> passVoluntaryInformations2=publicService.getPassVoluntaryInformation();
        System.out.println("passVoluntaryInformations2 = " + passVoluntaryInformations2);
        model.addAttribute("passVoluntaryInformations2",passVoluntaryInformations2);
        String username = (String) session.getAttribute("volunteer");
        Volunteer volunteer=volunteerService.getVolunteerByName(username);
        model.addAttribute("volunteer",volunteer);
        return "apply";
    }






    @RequestMapping("/selectApply")
    public String selectApply(Model model,String volunteerName, HttpSession session){
        System.out.println(volunteerName);
        List<Apply> applyList = volunteerService.selectApplyByName(volunteerName);
        System.out.println("applyList = " + applyList);
        model.addAttribute("applyList",applyList);
        String username = (String) session.getAttribute("volunteer");
        Volunteer volunteer=volunteerService.getVolunteerByName(username);
        model.addAttribute("volunteer",volunteer);
        return "deleteApply";
    }

    @RequestMapping("/deleteApply")
    public String deleteApply(String voluntaryApply){
        System.out.println(voluntaryApply);
        volunteerService.deleteApplyByName(voluntaryApply);
        return "deleteSuccess";
    }


}
