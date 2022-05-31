package cn.ideal.dao;

import cn.ideal.domain.Apply;
import cn.ideal.domain.Demander;
import cn.ideal.domain.Volunteer;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface VolunteerDao {

    @Select("select id,username,password,birthday,real_name,sex,id_card,phone_number,email,address,description from t_volunteers where username=#{username}")
    @Results(value = {
            @Result(property = "realName",column = "real_name"),
            @Result(property = "IDCard",column = "id_card"),
            @Result(property = "phoneNumber",column = "phone_number")
    }
    )
    public Volunteer getVolunteerByName(String username);

    @Update("update `t_volunteers` set phone_number=#{phoneNumber},email=#{email},address=#{address},description=#{description} where username=#{username}")
    public int changeInformation(@Param("phoneNumber")String phoneNumber, @Param("email")String email, @Param("address")String address, @Param("description")String description,@Param("username")String username);

    @Insert("insert into t_apply (voluntary_apply,volunteer_name) values (#{voluntaryApply},#{volunteerName})")
    public int addInformation(Apply apply);

    @Select("select * from t_apply where volunteer_name=#{volunteerName}")
    @Results(value = {
            @Result(property = "voluntaryApply",column = "voluntary_apply"),
            @Result(property = "volunteerName",column = "volunteer_name")
    })
    public List<Apply> selectApplyByName(@Param("volunteerName")String volunteerName);

    @Delete("delete from t_apply where voluntary_apply = #{voluntaryApply};")
    @Results(value = {
            @Result(property = "voluntaryApply",column = "voluntary_apply"),
            @Result(property = "volunteerName",column = "volunteer_name")
    })
    public int deleteApplyByName(@Param("voluntaryApply")String voluntaryApply);


}
