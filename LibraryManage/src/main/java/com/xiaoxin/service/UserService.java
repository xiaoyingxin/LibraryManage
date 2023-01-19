package com.xiaoxin.service;

import com.xiaoxin.model.User;

public interface UserService {

    int addUser(User user);

    User getUser(String email);

    User getUser(int uid);
}
