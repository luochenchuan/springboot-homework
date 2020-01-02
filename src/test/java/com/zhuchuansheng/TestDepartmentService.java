package com.zhuchuansheng;

import com.zhuchuansheng.entity.Department;
import com.zhuchuansheng.service.DepartmentService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;

/**
 * @author zhuchuansheng
 * @date: 2019/12/3
 * @time: 18:42
 */
@RunWith(SpringRunner.class)
@SpringBootTest(classes = SpringbootHomeworkApplication.class)
public class TestDepartmentService {


    @Autowired
    private DepartmentService departmentService;


    @Test
    public void testQueryDepartmentAll(){

        List<Department> departments = departmentService.queryDepartmentAll();

        System.out.println(departments);
    }


}
