package com.xiaoxin.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data   //自动配置getter 和 setter方法
public class Book {

    private int id;
    private String name;
    private String author;
    private String price;
    private int status;

}
