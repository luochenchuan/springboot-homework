package com.zhuchuansheng.service;

import com.zhuchuansheng.entity.Employee;

import java.util.List;
import java.util.Map;

/**
 * @author zhuchuansheng
 * @date: 2019/12/2
 * @time: 18:41
 */
public interface EmployeeService {


    /**
     * 分页查询
     * @param page      当前页
     * @param pageNum   每一页显示的数量
     * @return
     */
    Map<String, Object> queryByPaging(Integer page, Integer pageNum);


    /**
     * 根据ID删除用户信息
     * @param id  删除的ID
     * @return
     */
    String deleteEmployeeById(String id);


    /**
     *  添加用户信息
     * @param employee  用户信息
     * @return
     */
    String addEmployeeInfo(Employee employee);


    /**
     * 根据ID修改用户的数据
     * @param employee  修改的数据
     * @return
     */
    String updateEmployeeById(Employee employee);


    /**
     * 查询全部的领导信息
     * @return
     */
    List<Employee> queryManagerAll();
}
