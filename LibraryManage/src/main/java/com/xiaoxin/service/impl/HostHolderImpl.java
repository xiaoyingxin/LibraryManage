package com.xiaoxin.service.impl;

import com.xiaoxin.model.User;
import com.xiaoxin.service.HostHolder;
import com.xiaoxin.utils.ConcurrentUtils;
import org.springframework.stereotype.Service;

@Service
public class HostHolderImpl implements HostHolder {
    @Override
    public User getUser() {
        return ConcurrentUtils.getHost();
    }

    @Override
    public void setUser(User user) {
        ConcurrentUtils.setHost(user);
    }
}
