package com.pan.dev.entity;

import java.io.Serializable;
import java.util.Set;

/**
 * 用户类
 * Created by Pan on 2019/6/15.
 */
public class User implements Serializable {

    private static final long serialVersionUID = -4332635296774437833L;

    private Integer userId;

    private String username;

    private String password;

    private Set<Role> roles;

    public User(String username, String password) {
        this.username = username;
        this.password = password;
    }

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Set<Role> getRoles() {
        return roles;
    }

    public void setRoles(Set<Role> roles) {
        this.roles = roles;
    }
}
