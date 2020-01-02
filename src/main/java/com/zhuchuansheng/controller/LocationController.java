package com.zhuchuansheng.controller;

import com.zhuchuansheng.entity.Location;
import com.zhuchuansheng.service.LocationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @author zhuchuansheng
 * @date: 2019/12/3
 * @time: 21:02
 */
@RestController
@RequestMapping("/location")
public class LocationController {

    @Autowired
    private LocationService locationService;


    /**
     * 查询全部的地址信息
     * @return
     */
    @RequestMapping("/queryAll")
    public List<Location> queryLocationAll(){

        return locationService.selectLocationAll();
    }
}
