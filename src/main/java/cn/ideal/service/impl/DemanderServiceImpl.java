package cn.ideal.service.impl;

import cn.ideal.dao.DemanderDao;
import cn.ideal.domain.DemandInformation;
import cn.ideal.domain.Demander;
import cn.ideal.domain.VoluntaryInformation;
import cn.ideal.service.DemanderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("demanderservice")
public class DemanderServiceImpl implements DemanderService {
    @Autowired
    DemanderDao demanderDao;

    @Override
    public Demander getDemanderByName(String username) {
         return demanderDao.getDemanderByName(username);
    }



    @Override
    public int changeInformation(String phoneNumber, String email, String profession,String username) {
        return demanderDao.changeInformation(phoneNumber,email,profession,username);
    }

    @Override
    public int submitDemand(DemandInformation demandInformation) {
        return demanderDao.submitDemnad(demandInformation);
    }

    @Override
    public int submitVolunteer(VoluntaryInformation voluntaryInformation) {
        return demanderDao.submitVolunteer(voluntaryInformation);
    }

    @Override
    public List<DemandInformation> getDemandInformationByUsername(String username) {
        return  demanderDao.getDemandInformationByUsername(username);
    }

    @Override
    public List<VoluntaryInformation> getVoluntaryInformationByUsername(String username) {
        return demanderDao.getVoluntaryInformationByUsername(username);
    }

    @Override
    public int finshDemand(Integer id) {
        return demanderDao.finshDemand(id);
    }

    @Override
    public int finshVoluntary(Integer id) {
        return demanderDao.finshVoluntary(id);
    }
}
