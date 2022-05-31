package cn.ideal.service;

import cn.ideal.domain.DemandInformation;
import cn.ideal.domain.VoluntaryInformation;

import java.util.List;

public interface PublicService {

    public List<VoluntaryInformation> getPassVoluntaryInformation();

    public List<DemandInformation> getPassDemandInformation();

    public int getVoluntaryNumber(String voluntaryName);

    public String getVoluntaryNeedNumber(String voluntaryName);

}
