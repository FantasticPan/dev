package com.pan.dev.util;

import com.pan.dev.entity.User;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.crypto.hash.Sha256Hash;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.util.ByteSource;

/**
 * Shiro工具类
 * Created by Pan on 2019/6/16.
 */
public class ShiroUtil {

    /**
     * 对用户密码加密
     *
     * @param user 加密用户
     * @return 返回加密后的密码
     */
    public static String passwordEncryption(User user) {

        //以账号作为盐值
        ByteSource credentialsSalt = ByteSource.Util.bytes(user.getUsername());
        SimpleHash simpleHash
                = new SimpleHash(Sha256Hash.ALGORITHM_NAME, user.getPassword(), credentialsSalt, 1024);
        return simpleHash.toString();
    }

    /**
     * 获得当前认证用户
     *
     * @return 当前用户
     */
    public static User getPrincipalUser() {
        return (User) SecurityUtils.getSubject().getPrincipal();
    }
}
