package com.pan.dev.util;

import com.pan.dev.entity.User;
import org.apache.shiro.crypto.hash.Sha256Hash;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.util.ByteSource;

/**
 * Created by Pan on 2019/6/16.
 */
public class ShiroUtil {

    public static String passwordEncryption(User user) {

        //以账号作为盐值
        ByteSource credentialsSalt = ByteSource.Util.bytes(user.getUsername());
        SimpleHash simpleHash
                = new SimpleHash(Sha256Hash.ALGORITHM_NAME, user.getPassword(), credentialsSalt, 1024);
        return simpleHash.toString();
    }
}
