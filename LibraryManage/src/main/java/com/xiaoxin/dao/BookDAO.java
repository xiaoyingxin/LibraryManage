package com.xiaoxin.dao;

import com.xiaoxin.model.Book;
import org.apache.ibatis.annotations.*;

import java.util.List;

/**
 * Book相关的sql语句
 */
@Mapper
public interface BookDAO {

    String table_name = " book";
    String insert_field = " name, author,price ";
    String select_field = " id, status, " + insert_field;

    //根据书籍名称查询书籍信息
    Book selectBookByName(String name);

    //查询所有书籍书籍
    @Select("select " + select_field + "from" +table_name)
    List<Book> selectAll();

    //增加图书
    @Insert("insert into " + table_name + "(" + insert_field + ")" + "values (#{name},#{author},#{price})")
    void addBook(Book book);

    //更新图书
    @Update("update" + table_name +" set status = #{status} where id = #{id}" )
    void updateBookStatus(@Param("id") int id, @Param("status") int status);
        }
