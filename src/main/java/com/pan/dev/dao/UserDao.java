package com.pan.dev.dao;

import com.pan.dev.entity.User;
import org.springframework.stereotype.Repository;

/**
 * Created by Pan on 2019/6/15.
 */
@Repository
public interface UserDao {

    void insertUser(User user);

    void updateUser(User user);

    User getUserByUsername(String username);
}
