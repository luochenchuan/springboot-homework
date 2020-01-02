package com.zhuchuansheng.commons;

import java.io.Serializable;

/**
 * @author zhuchuansheng
 * @date: 2019/12/3
 * @time: 19:46
 */
public class Message implements Serializable {


    /**
     * 状态的枚举类
     */
    private StatusCode statusCode;


    /**
     * 消息内容
     */
    private Object content;


    public Message() {

    }

    public Message(StatusCode statusCode, Object content) {
        this.statusCode = statusCode;
        this.content = content;
    }

    public StatusCode getStatusCode() {
        return statusCode;
    }

    public void setStatusCode(StatusCode statusCode) {
        this.statusCode = statusCode;
    }

    public Object getContent() {
        return content;
    }

    public void setContent(Object content) {
        this.content = content;
    }

    @Override
    public String toString() {
        return "Message{" +
                "statusCode=" + statusCode +
                ", content=" + content +
                '}';
    }
}
