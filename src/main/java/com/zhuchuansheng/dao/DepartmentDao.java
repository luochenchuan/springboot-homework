package com.zhuchuansheng.dao;

import com.zhuchuansheng.entity.Department;

import java.util.List;

/**
 * @author zhuchuansheng
 * @date: 2019/12/3
 * @time: 18:34
 */
public interface DepartmentDao {


    /**
     * 查询全部的部门信息
     * @return
     */
    List<Department> selectDepartmentAll();


    /**
     * 分页查询部门信息
     * @param start    开始下标
     * @param rows     查询数量
     * @return
     */
    List<Department> selectDepartmentByPaging(int start, int rows);


    /**
     * 根据ID查询总记录数
     * @return
     */
    int selectCountByDepartmentId();


    /**
     * 添加部门信息
     * @param department  部门信息
     * @return
     */
    int insertDepartmentInfo(Department department);

}
