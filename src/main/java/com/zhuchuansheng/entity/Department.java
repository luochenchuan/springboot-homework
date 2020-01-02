package com.zhuchuansheng.entity;

import java.io.Serializable;

/**
 * @author zhuchuansheng
 * @date: 2019/12/3
 * @time: 17:03
 */
public class Department implements Serializable {


    private String departmentId;

    private String departmentName;

    private String managerId;

    private String locationId;

    public Department() {

    }

    public Department(String departmentId, String departmentName, String managerId, String locationId) {

        this.departmentId = departmentId;
        this.departmentName = departmentName;
        this.managerId = managerId;
        this.locationId = locationId;
    }

    public String getDepartmentId() {
        return departmentId;
    }

    public void setDepartmentId(String departmentId) {
        this.departmentId = departmentId;
    }

    public String getDepartmentName() {
        return departmentName;
    }

    public void setDepartmentName(String departmentName) {
        this.departmentName = departmentName;
    }

    public String getManagerId() {
        return managerId;
    }

    public void setManagerId(String managerId) {
        this.managerId = managerId;
    }

    public String getLocationId() {
        return locationId;
    }

    public void setLocationId(String locationId) {
        this.locationId = locationId;
    }

    @Override
    public String toString() {
        return "Department{" +
                "departmentId='" + departmentId + '\'' +
                ", departmentName='" + departmentName + '\'' +
                ", managerId='" + managerId + '\'' +
                ", locationId='" + locationId + '\'' +
                '}';
    }
}
