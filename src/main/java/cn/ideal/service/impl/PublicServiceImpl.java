package cn.ideal.service.impl;

import cn.ideal.dao.PublicDao;
import cn.ideal.domain.DemandInformation;
import cn.ideal.domain.VoluntaryInformation;
import cn.ideal.service.PublicService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("publicservice")
public class PublicServiceImpl implements PublicService {
    @Autowired
    PublicDao publicDao;


    @Override
    public List<VoluntaryInformation> getPassVoluntaryInformation() {
        return publicDao.getPassVoluntaryInformation();

    }

    @Override
    public List<DemandInformation> getPassDemandInformation() {
        return publicDao.getPassDemandInformation();
    }

    @Override
    public int getVoluntaryNumber(String voluntaryName) {
        return publicDao.getVoluntaryNumber(voluntaryName);
    }

    @Override
    public String getVoluntaryNeedNumber(String voluntaryName) {
        return publicDao.getVoluntaryNeedNumber(voluntaryName);
    }


}
