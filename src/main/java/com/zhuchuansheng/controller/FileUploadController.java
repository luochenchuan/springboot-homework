package com.zhuchuansheng.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import sun.misc.FDBigInteger;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Date;

/**
 * @author zhuchuansheng
 * @date: 2019/12/3
 * @time: 15:14
 */
@RequestMapping("/file")
@RestController
public class FileUploadController {


    /**
     * 文件上传,默认上传大小为 1MB
     * @param file
     * @param session
     * @return
     */
    @RequestMapping("/uploadFile")
    public String uploadFile(MultipartFile file, HttpSession session){

        //获取上传文件夹路径
        String path = session.getServletContext().getRealPath("upload");

        //判断文件是否存在
        File file1 = new File(path);
        if(!(file1.exists())){
            file1.mkdirs();
        }

        //文件名字处理
        String filename = new Date().getTime()+"-"+file.getOriginalFilename();

        //文件上传
        try {
            file.transferTo(new File(path, filename));
        } catch (IOException e) {
            e.printStackTrace();
        }

        return "{'status': 200, 'message': '文件上传成功'}";
    }


    @RequestMapping("/download")
    public String download(String filename, HttpSession session,
                           HttpServletResponse response) throws IOException {

        //获取服务器上的路径
        String path = session.getServletContext().getRealPath("upload");
        //文件下载
        File file = new File(path, filename);

        //创建输入输出流
        FileInputStream fis = new FileInputStream(file);
        ServletOutputStream outputStream = response.getOutputStream();

        int len;
        byte[] buf = new byte[1024*1024];

        while((len = fis.read(buf,0, buf.length)) != -1){

            outputStream.write(buf, 0, len);
        }

        //关闭流
        fis.close();
        outputStream.flush();
        outputStream.close();

        return "{'status': 200, 'message': '文件下载成功'}";
    }



    @RequestMapping("/test")
    public String test(){

        System.out.println("成功");

        return "{'status': 200, 'message': '成功'}";
    }

}
