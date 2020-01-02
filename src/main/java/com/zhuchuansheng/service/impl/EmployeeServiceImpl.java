package com.zhuchuansheng.service.impl;

import com.zhuchuansheng.dao.EmployeeDao;
import com.zhuchuansheng.entity.Employee;
import com.zhuchuansheng.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/**
 * @author zhuchuansheng
 * @date: 2019/12/2
 * @time: 18:42
 */
@Service
@Transactional
public class EmployeeServiceImpl implements EmployeeService {

    @Autowired
    private EmployeeDao employeeDao;


    @Transactional(propagation = Propagation.SUPPORTS)
    @Override
    public Map<String, Object> queryByPaging(Integer page, Integer pageNum) {

        //计算开始下标
        int start = (page - 1) * pageNum;

        //查询分页数据
        List<Employee> employees = employeeDao.queryEmployeeByPaging(start, pageNum);

        //查询总页数据
        Integer count = employeeDao.queryCountByEmployeeId();

        //计算总页数
        int total = count % pageNum == 0 ? count / pageNum : count / pageNum + 1;

        //定义返回值
        Map<String, Object> result = new HashMap<>();

        result.put("total", total);
        result.put("page", page);
        result.put("records", count);
        result.put("rows", employees);

        return result;
    }

    @Override
    public String deleteEmployeeById(String id) {

        int i = employeeDao.deleteEmployeeByEmployeeId(id);

        if(i== 1){
            return "删除成功";
        }

        return "删除失败";
    }


    @Override
    public String addEmployeeInfo(Employee employee) {

        //数据添加
        employee.setEmployeeId(UUID.randomUUID().toString());  // 设置ID
        employee.setManagerId("0");        //设置领导
        employee.setCommissionPct(0.0);    //设置提成
        employee.setDepartmentId("0");     //设置部门

        int i = employeeDao.insertEmployeeInfo(employee);

        if(i == 1)
            return "添加成功";

        return "添加失败";
    }


    @Override
    public String updateEmployeeById(Employee employee) {

        //数据添加
        employee.setManagerId("0");        //设置领导
        employee.setCommissionPct(0.0);    //设置提成
        employee.setDepartmentId("0");     //设置部门

        int i = employeeDao.updateEmployeeByEmployeeId(employee);

        if(i == 1)
            return "修改成功";

        return "修改失败";
    }


    @Transactional(propagation = Propagation.SUPPORTS)
    @Override
    public List<Employee> queryManagerAll() {

        return employeeDao.selectManagerAll();
    }
}