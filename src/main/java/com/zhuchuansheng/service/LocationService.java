package com.zhuchuansheng.service;

import com.zhuchuansheng.entity.Location;

import java.util.List;

/**
 * @author zhuchuansheng
 * @date: 2019/12/3
 * @time: 20:58
 */
public interface LocationService {

    /**
     * 查询全部的地址
     * @return
     */
    List<Location> selectLocationAll();
}

