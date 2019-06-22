package com.pan.dev.service;

import com.pan.dev.entity.User;

/**
 * Created by Pan on 2019/6/15.
 */
public interface UserService {

    void insertUser(User user);

    void updateUser(User user);

    User getUserByUsername(String username);
}
