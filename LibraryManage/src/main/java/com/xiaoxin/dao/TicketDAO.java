package com.xiaoxin.dao;

import com.xiaoxin.model.Ticket;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

/**
 * Ticket相关的sql语句
 */
@Mapper
public interface TicketDAO {

    String table_name = " ticket ";
    String insert_field = " user_id, ticket, expired_at ";
    String select_field = " id, " + insert_field;

    //添加ticket
    @Insert({"insert into" ,table_name,"(",insert_field ,")","values (#{userId}, #{ticket},#{expiredAt})"})
    int addTicket(Ticket ticket);

    //根据uid查询ticket
    @Select({"select ",select_field,"from",table_name,"where user_id = #{uid}"})
    Ticket selectByUserId(int uid);
    //根据ticket实体查ticket
    @Select({"select ",select_field,"from " ,table_name,"where ticket = #{t}"})
    Ticket selectByTicket(String t);
    //根据tid删除ticket
    @Delete({"delete from ", table_name," where id = #{tid}"})
    void deleteTicketById(int tid);
    //根据ticket删除ticket
    @Delete({"delete from",table_name,"where ticket = #{t}"})
    void deleteTicket(String t);
}
