package com.xiaoxin.model;

import lombok.Data;

import java.util.Date;

@Data
public class Ticket {
    private int id;
    /**
     * 相绑定的userId
     */
    private int userId;
    /**
     * t票实体
     */
    private String ticket;
    /**
     * 过期时间
     */
    private Date expiredAt;

}
