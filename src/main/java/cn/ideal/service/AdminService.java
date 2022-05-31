package cn.ideal.service;

import cn.ideal.domain.DemandInformation;
import cn.ideal.domain.VoluntaryInformation;

import java.util.List;

public interface AdminService {

    public List<VoluntaryInformation> getNewVoluntaryInformation();

    public List<DemandInformation> getNewDemandInformation();

    public DemandInformation getDemandInformationById(Integer id);

    public VoluntaryInformation getVoluntaryInformationById(Integer id);


    public int aggreeDemand(Integer id);

    public int rejectDemand(Integer id);


    public int aggreeVoluntary(Integer id);

    public int rejectVoluntary(Integer id);




}
