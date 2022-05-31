package cn.ideal.dao;

import cn.ideal.domain.DemandInformation;
import cn.ideal.domain.VoluntaryInformation;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

public interface AdminDao {


    @Select("select id,title,description,check_status,end_time from t_demand_information where check_status=0")
    @Results(value = {
            @Result(property = "id",column = "id"),
            @Result(property = "title",column = "title"),
            @Result(property = "description",column = "description"),
            @Result(property = "checkStatus",column = "check_status"),
//            @Result(property = "phoneNumber",column = "phone_number"),
//            @Result(property = "email",column = "email"),
            @Result(property = "endTime",column = "end_time")
    })
    public List<DemandInformation> getNewDemandInformation();


    //审核志愿

    @Select("select id,title,school,check_status,description from t_voluntary_information where check_status=0")
    @Results(value = {
            @Result(property = "id",column = "id"),
            @Result(property = "title",column = "title"),
            @Result(property = "school",column = "school"),
            @Result(property = "description",column = "description"),

    })
    public List<VoluntaryInformation> getNewVoluntaryInformation();



    @Select("select * from t_demand_information where id=#{id}")
    @Results(value = {
            @Result(property = "id",column = "id"),
            @Result(property = "title",column = "title"),
            @Result(property = "description",column = "description"),
            @Result(property = "checkStatus",column = "check_status"),
            @Result(property = "phoneNumber",column = "phone_number"),
            @Result(property = "email",column = "email"),
            @Result(property = "endTime",column = "end_time")

    })
    public DemandInformation getDemandInformationById(Integer id);



    @Select("select * from t_voluntary_information where id=#{id}")
    @Results(value = {
            @Result(property = "id",column = "id"),
            @Result(property = "title",column = "title"),
            @Result(property = "school",column = "school"),
            @Result(property = "description",column = "description"),
            @Result(property = "checkStatus",column = "check_status"),
            @Result(property = "director",column = "director"),
            @Result(property = "peopleNeed",column = "people_needed"),
            @Result(property = "startTime",column = "start_time"),
            @Result(property = "endTime",column = "end_time"),
            @Result(property = "email",column = "email"),
            @Result(property = "phoneNumber",column = "phone_number"),

    })
    public VoluntaryInformation getVoluntaryInformationById(Integer id);



    //更新数据


    @Update("update t_demand_information set check_status = 1 where id=#{id}")
    public int aggreeDemand(Integer id);

    @Update("update t_demand_information set check_status = 2 where id=#{id}")
    public int rejectDemand(Integer id);


    @Update("update t_voluntary_information set check_status = 1 where id=#{id}")
    public int aggreeVoluntary(Integer id);

    @Update("update t_voluntary_information set check_status = 2 where id=#{id}")
    public int rejectVoluntary(Integer id);






}
