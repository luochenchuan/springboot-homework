package com.zhuchuansheng.commons;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;

import java.io.Serializable;

/**
 * @author zhuchuansheng
 * @date: 2019/12/3
 * @time: 19:47
 */
@JsonSerialize
public enum  StatusCode implements Serializable {

    SUCCESS(200, "操作成功"),
    ERROR(500, "操作失败");

    private Integer code;

    private String mes;

    StatusCode() {

    }

    StatusCode(Integer code, String mes) {
        this.code = code;
        this.mes = mes;
    }

    public Integer getCode() {
        return code;
    }

    public void setCode(Integer code) {
        this.code = code;
    }

    public String getMes() {
        return mes;
    }

    public void setMes(String mes) {
        this.mes = mes;
    }

    @Override
    public String toString() {
        return "StatusCode{" +
                "code=" + code +
                ", mes='" + mes + '\'' +
                '}';
    }
}
