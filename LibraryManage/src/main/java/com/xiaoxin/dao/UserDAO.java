package com.xiaoxin.dao;

import com.xiaoxin.model.User;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

/**
 * User相关的sql语句
 */
@Mapper
public interface UserDAO {

    String table_name = " user";
    String insert_field = " name, email, password ";
    String select_field = " id, " + insert_field;

    //添加用户
    @Insert({"insert into" , table_name, "(", insert_field,
            ")values (#{name},#{email},#{password})"})
    int addUser(User user);
    //根据id用户信息
    @Select({"select",select_field,"from",table_name,"where id = #{id}"})
    User selectById(int id);
    //根据name查询用户信息
    @Select({"select ",select_field,"from",table_name,"where name = #{name}"})
    User selectByName(String name);
    @Select({"select ",select_field,"from",table_name,"where email = #{email}"})
        //根据email查询用户信息
    User selectByEmail(String email);
    //更新密码
    @Update({"update ",table_name,"set password = #{password} where id = #{id}"})
    void updatePassword(User user);
}
