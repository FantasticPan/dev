package com.pan.dev.config.shiro;

import com.pan.dev.entity.Permission;
import com.pan.dev.entity.Role;
import com.pan.dev.entity.User;
import com.pan.dev.service.UserService;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.HashSet;
import java.util.Set;

/**
 * 继承AuthorizingRealm，重写认证和授权方法
 * Created by Pan on 2019/6/15.
 */
public class ShiroRealm extends AuthorizingRealm {

    private static final Logger LOGGER = LogManager.getLogger(ShiroRealm.class);

    @Autowired
    private UserService userService;

    /**
     * 授权方法，如果不设置缓存管理的话，需要访问需要一定的权限或角色的请求时会进入这个方法
     *
     * @param principalCollection
     * @return
     */
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        LOGGER.info("执行授权");
        SimpleAuthorizationInfo authorizationInfo = new SimpleAuthorizationInfo();
        User user = (User) principalCollection.getPrimaryPrincipal();

        Set<Permission> permissionSet = new HashSet<>();
        Set<Role> roleSet = user.getRoles();
        if (!roleSet.isEmpty()) {
            for (Role role : roleSet) {
                //将角色名称提供给info
                authorizationInfo.addRole(role.getRoleName());

                if (!role.getPermissions().isEmpty()) {
                    for (Permission permission : role.getPermissions()) {
                        authorizationInfo.addStringPermission(permission.getPermissionName());
                    }
                }
            }
        }
        return authorizationInfo;
    }

    /**
     * 认证方法
     *
     * @param authenticationToken
     * @return
     * @throws AuthenticationException
     */
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken)
            throws AuthenticationException {

        LOGGER.info("执行认证");
        UsernamePasswordToken usernamePasswordToken = (UsernamePasswordToken) authenticationToken;
        String username = usernamePasswordToken.getUsername();
        //获取用户
        User user = userService.getUserByUsername(username);
        if (user == null) {
            //用户名不存在抛出异常
            throw new UnknownAccountException();
        }

        ByteSource credentialsSalt = ByteSource.Util.bytes(user.getUsername());

        //authenticationInfo信息交给shiro，调用login的时候会自动比较这里的token和authenticationInfo
        return new SimpleAuthenticationInfo(user, user.getPassword(), credentialsSalt, getName());
    }
}
