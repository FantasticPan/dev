package com.pan.dev;

import com.pan.dev.entity.User;
import com.pan.dev.service.UserService;
import org.apache.shiro.crypto.hash.Sha256Hash;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.util.ByteSource;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest
public class DemoApplicationTests {

    @Autowired
    private UserService userService;

	@Test
	public void contextLoads() {
        User user = new User("李攀","lp19970622");
        ByteSource credentialsSalt = ByteSource.Util.bytes(user.getUsername());
        SimpleHash info = new SimpleHash(Sha256Hash.ALGORITHM_NAME, user.getPassword(), credentialsSalt, 1024);
        System.out.println(info.toString());
	}

	@Test
    public void testMybatis() {
	    User user = userService.getUserByUsername("李攀");
    }

}
