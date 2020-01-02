package com.zhuchuansheng.service.impl;

import com.zhuchuansheng.dao.DepartmentDao;
import com.zhuchuansheng.entity.Department;
import com.zhuchuansheng.service.DepartmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author zhuchuansheng
 * @date: 2019/12/3
 * @time: 18:40
 */
@Service
@Transactional
public class DepartmentServiceImpl implements DepartmentService {

    @Autowired
    private DepartmentDao departmentDao;

    @Transactional(propagation = Propagation.SUPPORTS)
    @Override
    public List<Department> queryDepartmentAll() {

        return departmentDao.selectDepartmentAll();
    }

    @Override
    public Map<String, Object> queryByPaging(int page, int pageNum) {

        //开始计算开始下标
        int start = (page - 1) * pageNum;

        //查询分页数据
        List<Department> departments = departmentDao.selectDepartmentByPaging(start, pageNum);

        //查询总记录数
        int count = departmentDao.selectCountByDepartmentId();

        //计算总页数
        int total = count % pageNum == 0 ? count / pageNum : count / pageNum + 1;

        //定义返回值
        Map<String, Object> result = new HashMap<>();

        result.put("total", total);
        result.put("page", page);
        result.put("records", count);
        result.put("rows", departments);

        return result;
    }
}
