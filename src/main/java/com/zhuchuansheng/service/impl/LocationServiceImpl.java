package com.zhuchuansheng.service.impl;

import com.zhuchuansheng.dao.LocationDao;
import com.zhuchuansheng.entity.Location;
import com.zhuchuansheng.service.LocationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author zhuchuansheng
 * @date: 2019/12/3
 * @time: 20:59
 */
@Service
@Transactional
public class LocationServiceImpl implements LocationService {

    @Autowired
    private LocationDao locationDao;


    @Transactional(propagation = Propagation.SUPPORTS)
    @Override
    public List<Location> selectLocationAll() {

        return locationDao.selectLocationAll();
    }
}
