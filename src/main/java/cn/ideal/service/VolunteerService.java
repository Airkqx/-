package cn.ideal.service;

import cn.ideal.domain.Apply;
import cn.ideal.domain.Volunteer;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface VolunteerService {

    public int changeInformation(String phoneNumber, String email,String address,String description, String username);

    public Volunteer getVolunteerByName(String username);

    public int addInformation(Apply apply);

    public List<Apply> selectApplyByName(String volunteerName);

    public int deleteApplyByName(String voluntaryApply);



}
