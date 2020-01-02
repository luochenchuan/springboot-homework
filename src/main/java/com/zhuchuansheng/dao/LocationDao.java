package com.zhuchuansheng.dao;

import com.zhuchuansheng.entity.Location;

import java.util.List;

/**
 * @author zhuchuansheng
 * @date: 2019/12/3
 * @time: 20:33
 */
public interface LocationDao {


    /**
     * 查询全部的地址信息
     * @return
     */
    List<Location> selectLocationAll();

}
