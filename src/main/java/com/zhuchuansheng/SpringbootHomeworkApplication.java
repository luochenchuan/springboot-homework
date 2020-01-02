package com.zhuchuansheng;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 * @SpringBootApplication注解是由三注解组成的:
 * @Configuration注解表示是一个配置类.相当于spring.xml文件
 * @ComponentScan注解表示是扫描该类即该类下的子包
 * @EnableAutoConfiguration开启自动配置
 */
@SpringBootApplication
@MapperScan("com.zhuchuansheng.dao")
public class SpringbootHomeworkApplication {

    public static void main(String[] args) {

        SpringApplication.run(SpringbootHomeworkApplication.class, args);
    }

}
