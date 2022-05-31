package cn.ideal.dao;

import cn.ideal.domain.Demander;
import cn.ideal.domain.Volunteer;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AccountDao {


    //查询所有未被审核的需求者的所有数据
    @Select("select id,username,real_name from t_demanders where check_status=0")
    @Results(value = {
            @Result(property = "id",column = "id"),
            @Result(property = "username",column = "username"),
            @Result(property = "realName",column = "real_name")
    }
    //采用注解的方式，来消除java变量与sql列名不同的差异
    )
    public List<Demander> findAllDemander();

    //查询需求者的所有数据
    @Select("select id,username,password,real_name,sex,id_card,phone_number,email,profession,id_card_photo from t_demanders where id=#{id}")
    @Results(value = {
            @Result(property = "realName",column = "real_name"),
            @Result(property = "IDCard",column = "id_card"),
            @Result(property = "phoneNumber",column = "phone_number"),
            @Result(property = "IDCardPhoto",column = "id_card_photo")
    }
    )
    public Demander getDemanderById(Integer id);

      //审核数据
    @Update("update t_demanders set check_status = 1 where id=#{id}")
    public void aggreeRegister(Integer id);

    @Delete("delete from t_demanders where id=#{id}")
    public void rejectRegister(Integer id);


    //注册用户

    @Insert("insert into t_demanders (username,password,real_name,sex,id_card,phone_number,email,profession,id_card_photo) values (#{username},#{password},#{realName},#{sex},#{IDCard},#{phoneNumber},#{email},#{profession},#{IDCardPhoto})")
    public void addDemander(Demander demander);

    @Insert("insert into t_volunteers (username,password,birthday,real_name,sex,id_card,phone_number,email,address,description) values (#{username},#{password},#{birthday},#{realName},#{sex},#{IDCard},#{phoneNumber},#{email},#{address},#{description})")
    public void addVolunteer(Volunteer volunteer);


    //登入

    @Select("select username from ${tableName} where username=#{username} and password=#{password}")
    public String login(@Param("username")String username,@Param("password")String password,@Param("tableName")String tableName);

    @Select("select username from ${tableName} where username=#{username}")
    public String login2(@Param("username")String username,@Param("tableName")String tableName);

    //修改密码
    @Update("update ${tableName} set password = #{password} where username=#{username}")
    public int Update(@Param("username")String username,@Param("password")String password,@Param("tableName")String tableName);



    //审核需求




    //查看详情(可复用)














}
