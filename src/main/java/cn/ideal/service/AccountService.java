package cn.ideal.service;

import cn.ideal.domain.Demander;
import cn.ideal.domain.Volunteer;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface AccountService {

    /**
     * \查询所有
     * @return
     */
    public List<Demander> findAllDemander();



    public void addDemander(Demander demander);

    public void addVolunteer(Volunteer volunteer);

    public Demander getDemanderById(Integer id);

    public void aggreeRegister(Integer id);

    public void rejectRegister(Integer id);

    public void sendEmail(String email,int status);

    public String login(String username,String password,String tableName);

    public String login2(String username, String tableName);


    public int Update(String username, String password, String tableName);


}
