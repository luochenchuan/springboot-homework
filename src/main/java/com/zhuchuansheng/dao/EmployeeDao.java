package com.zhuchuansheng.dao;

import com.zhuchuansheng.entity.Employee;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author zhuchuansheng
 * @date: 2019/12/2
 * @time: 18:28
 */
public interface EmployeeDao {


    /**
     * 查询全部的领导信息
     * @return
     */
    List<Employee> selectManagerAll();

    /**
     * 分页查询所有的员工信息
     * @param start     开始的下标
     * @param pageNum   查询的数量
     * @return
     */
    List<Employee> queryEmployeeByPaging(
            @Param("start") Integer start, @Param("pageNum") Integer pageNum);


    /**
     * 通过ID查询总记录数
     * @return
     */
    Integer queryCountByEmployeeId();


    /**
     * 根据ID删除用户数据
     * @param employeeId
     * @return
     */
    int deleteEmployeeByEmployeeId(@Param("employeeId") String employeeId);


    /**
     * 添加用户信息到数据库
     * @param employee  用户信息
     * @return
     */
    int insertEmployeeInfo(Employee employee);


    /**
     * 根据ID修改用户信息
     * @param employee   修改的信息
     * @return
     */
    int updateEmployeeByEmployeeId(Employee employee);
}
