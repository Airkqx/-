package cn.ideal.dao;

import cn.ideal.domain.DemandInformation;
import cn.ideal.domain.VoluntaryInformation;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PublicDao {

    @Select("select id,title,description,check_status from t_demand_information where check_status=1 or check_status=2 order by check_status")
    @Results(value = {
            @Result(property = "id",column = "id"),
            @Result(property = "title",column = "title"),
            @Result(property = "description",column = "description"),
            @Result(property = "checkStatus",column = "check_status"),
    })
    public List<DemandInformation> getPassDemandInformation();


    @Select("select id,title,school,check_status,description from t_voluntary_information where check_status=1 or check_status=2 order by check_status")
    @Results(value = {
            @Result(property = "id",column = "id"),
            @Result(property = "title",column = "title"),
            @Result(property = "school",column = "school"),
            @Result(property = "description",column = "description"),
            @Result(property = "checkStatus",column = "check_status"),
    })
    public List<VoluntaryInformation> getPassVoluntaryInformation();



    @Select("select title,phone_number,email,end_time,description" +
            "from t_demand_information where id=#{id}")
    @Results(value = {
            @Result(property = "title",column = "title"),
            @Result(property = "phoneNumber",column = "phone_number"),
            @Result(property = "email",column = "email"),
            @Result(property = "endTime",column = "end_time"),
            @Result(property = "description",column = "description"),
    })

    public DemandInformation getDemanderInformationById(Integer id);  //通过id获取需求信息



    @Select("select title,school,address,director,phone_number,email,people_need,start_time,end_time,description" +
            "from t_voluntary_information where id=#{id}")
    @Results(value = {
            @Result(property = "title",column = "title"),
            @Result(property = "school",column = "school"),
            @Result(property = "address",column = "address"),
            @Result(property = "director",column = "director"),
            @Result(property = "phone_number",column = "phone_number"),
            @Result(property = "description",column = "description"),
    })

    public VoluntaryInformation getVoluntaryInformationById(Integer id);//通过id获取志愿信息




    @Select("select count('getVoluntaryNumber') from t_apply where voluntary_apply=#{voluntaryName}")
    public int getVoluntaryNumber(String voluntaryName);

    @Select("select people_needed from t_voluntary_information where title = #{voluntaryName}")
    public String getVoluntaryNeedNumber(String voluntaryName);




}
