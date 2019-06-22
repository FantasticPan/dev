package com.pan.dev.entity;

import java.io.Serializable;

/**
 * 权限类
 * Created by Pan on 2019/6/15.
 */
public class Permission implements Serializable {

    private static final long serialVersionUID = 155018394631288985L;

    private Integer permissionId;

    private String permissionName;

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public Integer getPermissionId() {
        return permissionId;
    }

    public void setPermissionId(Integer permissionId) {
        this.permissionId = permissionId;
    }

    public String getPermissionName() {
        return permissionName;
    }

    public void setPermissionName(String permissionName) {
        this.permissionName = permissionName;
    }
}
