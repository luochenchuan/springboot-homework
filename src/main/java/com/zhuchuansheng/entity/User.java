package com.zhuchuansheng.entity;

import java.io.Serializable;

/**
 * @author zhuchuansheng
 * @date: 2019/12/6
 * @time: 17:40
 */
public class User implements Serializable {

    private String id;
    private String name;

    public User() {

    }

    public User(String id, String name) {

        this.id = id;
        this.name = name;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "User{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                '}';
    }
}
