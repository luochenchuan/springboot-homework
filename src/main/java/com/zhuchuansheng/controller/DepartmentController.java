package com.zhuchuansheng.controller;

import com.zhuchuansheng.commons.Message;
import com.zhuchuansheng.commons.StatusCode;
import com.zhuchuansheng.entity.Department;
import com.zhuchuansheng.service.DepartmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Map;

/**
 * @author zhuchuansheng
 * @date: 2019/12/3
 * @time: 18:45
 */
@RequestMapping("/department")
@RestController
public class DepartmentController {

    @Autowired
    private DepartmentService departmentService;


    /**
     * 查询全部的部门信息
     * @return
     */
    @RequestMapping("/queryAll")
    public List<Department> queryDepartmentAll(){

        return departmentService.queryDepartmentAll();
    }


    @RequestMapping("/queryByPaging")
    public Map<String, Object> queryByPaging(Integer page, Integer rows){

        if(page == null || page < 1)
            page = 1;

        if(rows == null || rows < 1)
            rows = 3;

        return departmentService.queryByPaging(page, rows);
    }


    /**
     * 添加用户信息
     * @param department   部门信息
     * @return
     */
    @RequestMapping("/addDepartment")
    public Message addDepartmentInfo(Department department){

        System.out.println(department);

        return new Message(StatusCode.SUCCESS, "添加成功");
    }

}
