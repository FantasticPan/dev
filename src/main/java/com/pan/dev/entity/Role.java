package com.pan.dev.entity;

import java.io.Serializable;
import java.util.Set;

/**
 * 角色类
 * Created by Pan on 2019/6/15.
 */
public class Role implements Serializable {

    private static final long serialVersionUID = 461933626143766775L;

    private Integer roleId;

    private String roleName;

    private String description;

    private Set<Permission> permissions;

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public Integer getRoleId() {
        return roleId;
    }

    public void setRoleId(Integer roleId) {
        this.roleId = roleId;
    }

    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Set<Permission> getPermissions() {
        return permissions;
    }

    public void setPermissions(Set<Permission> permissions) {
        this.permissions = permissions;
    }
}
