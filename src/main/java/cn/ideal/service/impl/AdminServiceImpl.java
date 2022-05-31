package cn.ideal.service.impl;

import cn.ideal.dao.AdminDao;
import cn.ideal.domain.DemandInformation;
import cn.ideal.domain.VoluntaryInformation;
import cn.ideal.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("adminservice")
public class AdminServiceImpl implements AdminService {
    @Autowired
    AdminDao adminDao;

    @Override
    public List<VoluntaryInformation> getNewVoluntaryInformation() {
        return adminDao.getNewVoluntaryInformation();
    }

    @Override
    public List<DemandInformation> getNewDemandInformation() {
        return adminDao.getNewDemandInformation();
    }

    @Override
    public DemandInformation getDemandInformationById(Integer id) {
        return adminDao.getDemandInformationById(id);
    }

    @Override
    public VoluntaryInformation getVoluntaryInformationById(Integer id) {
        return adminDao.getVoluntaryInformationById(id);
    }


    public int aggreeDemand(Integer id){
        return adminDao.aggreeDemand(id);

    }

    public int rejectDemand(Integer id){
        return adminDao.rejectDemand(id);

    }


    public int aggreeVoluntary(Integer id){
        return adminDao.aggreeVoluntary(id);
    }

    public int rejectVoluntary(Integer id){
        return adminDao.rejectVoluntary(id);

    }



}
