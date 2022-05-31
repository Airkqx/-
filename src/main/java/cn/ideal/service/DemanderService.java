package cn.ideal.service;

import cn.ideal.domain.DemandInformation;
import cn.ideal.domain.Demander;
import cn.ideal.domain.VoluntaryInformation;

import java.util.List;

public interface DemanderService {

    public Demander getDemanderByName(String username);

    public int changeInformation(String phoneNumber,String email,String profession,String username);

    public int submitDemand(DemandInformation demandInformation);

    public int submitVolunteer(VoluntaryInformation voluntaryInformation);

    public List<DemandInformation> getDemandInformationByUsername(String username);

    public List<VoluntaryInformation> getVoluntaryInformationByUsername(String username);

    public int finshDemand(Integer id);

    public int finshVoluntary(Integer id);


}
