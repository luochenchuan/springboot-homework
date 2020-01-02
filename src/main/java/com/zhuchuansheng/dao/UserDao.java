package com.zhuchuansheng.dao;

import com.zhuchuansheng.entity.User;

import java.util.List;

/**
 * @author zhuchuansheng
 * @date: 2019/12/6
 * @time: 17:42
 */
public interface UserDao {

    List<User> selectAll();

    int insert(User user);

}
