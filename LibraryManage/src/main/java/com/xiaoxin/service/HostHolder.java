package com.xiaoxin.service;

import com.xiaoxin.model.User;

public interface HostHolder {

    /**
     * 获取user
     * @return
     */
    public User getUser();

    /**
     * 存储user
     * @param user
     */
    public void setUser(User user);
}
