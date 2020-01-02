package com.zhuchuansheng;

import com.zhuchuansheng.dao.UserDao;
import com.zhuchuansheng.entity.User;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;

/**
 * @author zhuchuansheng
 * @date: 2019/12/6
 * @time: 17:44
 */

@RunWith(SpringRunner.class)
@SpringBootTest(classes = SpringbootHomeworkApplication.class)
public class TestUser {

    @Autowired
    private UserDao userDao;


    @Test
    public void testSelectAll(){

        List<User> users = userDao.selectAll();

        for (User user : users) {

            System.out.println(user);
        }
    }


    @Test
    public void testInsert(){

        User user = new User("2", "chuan");
        int insert = userDao.insert(user);
        System.out.println(insert);
    }

}
