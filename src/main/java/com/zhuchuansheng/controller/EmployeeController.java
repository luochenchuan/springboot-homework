package com.zhuchuansheng.controller;

import com.zhuchuansheng.entity.Employee;
import com.zhuchuansheng.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Map;

/**
 * @author zhuchuansheng
 * @date: 2019/12/2
 * @time: 19:02
 */
@RestController
@RequestMapping("/employee")
public class EmployeeController {


    @Autowired
    private EmployeeService employeeService;


    /**
     * 分页查询
     * @param page   当前页
     * @param rows   每一页显示数量
     * @return
     */
    @RequestMapping("/queryPaging")
    public Map<String, Object> queryEmployeeByPaging(int page, int rows){

        if(page < 1){
            page = 1;
        }

        if (rows < 1){
            rows = 3;
        }
        return employeeService.queryByPaging(page, rows);
    }


    @RequestMapping("/editInfo")
    public void editInfo(Employee employee, String id, String oper){

        String meg = "服务器忙";

        //删除
        if("del".equals(oper) && id != null){

            meg = employeeService.deleteEmployeeById(id);
            System.out.println(id+":"+meg);
        }

        //添加
        if("add".equals(oper) && employee != null){

            meg = employeeService.addEmployeeInfo(employee);
            System.out.println("add "+meg);
        }

        //修改
        if("edit".equals(oper) && employee != null){

            meg = employeeService.updateEmployeeById(employee);
            System.out.println("add "+meg);
        }
    }


    /**
     * 查询全部的领导信息
     * @return
     */
    @RequestMapping("/queryManager")
    public List<Employee> queryManageAll(){

        return employeeService.queryManagerAll();
    }

}
