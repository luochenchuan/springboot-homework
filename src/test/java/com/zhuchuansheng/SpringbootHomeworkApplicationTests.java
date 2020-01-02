package com.zhuchuansheng;

import com.zhuchuansheng.commons.Message;
import com.zhuchuansheng.commons.StatusCode;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class SpringbootHomeworkApplicationTests {

    @Test
    public void contextLoads() {

        Message message = new Message(StatusCode.ERROR, "错误");

        System.out.println(message);
    }

}
