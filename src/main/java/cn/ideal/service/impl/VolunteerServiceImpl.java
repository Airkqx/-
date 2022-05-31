package cn.ideal.service.impl;

import cn.ideal.dao.VolunteerDao;
import cn.ideal.domain.Apply;
import cn.ideal.domain.Volunteer;
import cn.ideal.service.VolunteerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("volunteerservice")
public class VolunteerServiceImpl implements VolunteerService {

    @Autowired
    VolunteerDao volunteerDao;

    @Override
    public int changeInformation(String phoneNumber, String email, String address, String description, String username) {
        return volunteerDao.changeInformation(phoneNumber,email,address,description,username);
    }

    @Override
    public Volunteer getVolunteerByName(String username) {
        return volunteerDao.getVolunteerByName(username);
    }

    @Override
    public int addInformation(Apply apply) {
        return volunteerDao.addInformation(apply);
    }

    @Override
    public List<Apply> selectApplyByName(String volunteerName) {
        return volunteerDao.selectApplyByName(volunteerName);
    }

    @Override
    public int deleteApplyByName(String voluntaryApply) {
        return volunteerDao.deleteApplyByName(voluntaryApply);
    }
}
