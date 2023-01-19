package com.xiaoxin.service.impl;

import com.xiaoxin.dao.UserDAO;
import com.xiaoxin.model.User;
import com.xiaoxin.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDAO userDAO;
    @Override
    public int addUser(User user) {
        return userDAO.addUser(user);
    }

    @Override
    public User getUser(String email) {
        return userDAO.selectByEmail(email);
    }

    @Override
    public User getUser(int uid) {
        return userDAO.selectById(uid);
    }
}
