package com.zhuchuansheng.service;

import com.zhuchuansheng.entity.Department;

import java.util.List;
import java.util.Map;

/**
 * @author zhuchuansheng
 * @date: 2019/12/3
 * @time: 18:39
 */
public interface DepartmentService {


    /**
     * 查询全部的部门信息
     * @return
     */
    List<Department> queryDepartmentAll();


    /**
     * 分页查询
     * @param page      当前页
     * @param pageNum   每一页显示数量
     * @return
     */
    Map<String, Object> queryByPaging(int page, int pageNum);
}
