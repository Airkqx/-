package cn.ideal.dao;

import cn.ideal.domain.DemandInformation;
import cn.ideal.domain.Demander;
import cn.ideal.domain.VoluntaryInformation;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface DemanderDao {

    @Select("select id,username,password,real_name,sex,id_card,phone_number,email,profession,id_card_photo from t_demanders where username=#{username}")
    @Results(value = {
            @Result(property = "realName",column = "real_name"),
            @Result(property = "IDCard",column = "id_card"),
            @Result(property = "phoneNumber",column = "phone_number"),
            @Result(property = "IDCardPhoto",column = "id_card_photo")
    }
    )
    public Demander getDemanderByName(String username);


    @Update("update `t_demanders` set phone_number=#{phoneNumber},email=#{email},profession=#{profession} where username=#{username}")
    public int changeInformation(@Param("phoneNumber")String phoneNumber,@Param("email")String email,@Param("profession")String profession,@Param("username")String username);


    @Insert("insert into t_demand_information" +
            " (title,demander,phone_number,email,end_time,description)" +
            " values (#{title},#{demander},#{phoneNumber},#{email},#{endTime},#{description})")
    public int submitDemnad(DemandInformation demandInformation);//提交物资需求

    @Insert("insert into t_voluntary_information" +
            " (title,school,address,director,phone_number,email,people_needed,start_time,end_time,description,demander)" +
            " values (#{title},#{school},#{address},#{director},#{phoneNumber},#{email},#{peopleNeed},#{startTime},#{endTime},#{description},#{demander})")
    public int submitVolunteer(VoluntaryInformation voluntaryInformation);//提交志愿需求


    @Select("select id,title,description,check_status from t_demand_information where demander=#{usename} order by check_status ")
    @Results(value = {
        @Result(property = "id",column = "id"),
        @Result(property = "title",column = "title"),
        @Result(property = "description",column = "description"),
        @Result(property = "checkStatus",column = "check_status"),
    })
    public List<DemandInformation> getDemandInformationByUsername(String username);  //拿到个人提交的物资需求列表



    @Select("select id,title,school,check_status from t_voluntary_information where demander=#{usename} order by check_status")
    @Results(value = {
            @Result(property = "id",column = "id"),
            @Result(property = "title",column = "title"),
            @Result(property = "school",column = "school"),
            @Result(property = "checkStatus",column = "check_status"),
    })
    public List<VoluntaryInformation> getVoluntaryInformationByUsername(String username);  //拿到个人提交的志愿需求列表

    @Update("update `t_demand_information` set check_status=2 where id=#{id}")
    public int finshDemand(Integer id);

    @Update("update `t_voluntary_information` set check_status=2 where id=#{id}")
    public int finshVoluntary(Integer id);











}
