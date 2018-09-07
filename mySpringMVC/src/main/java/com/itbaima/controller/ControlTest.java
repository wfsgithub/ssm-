package com.itbaima.controller;

import com.itbaima.domain.User;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.UUID;

@Controller
@RequestMapping("/user")
public class ControlTest {

    @RequestMapping("/skip")
    public String skip(User user){
        String str=null;

        System.out.println(1);

      return "success";
    }
    @RequestMapping("/requestMsg")
    public @ResponseBody User requestMsg(@RequestBody User string){

        System.out.println(string);

        return string ;
    }
    @RequestMapping(value = "/upLoad")
    public String upLoad(HttpServletRequest request, MultipartFile upload) throws IOException {
        String path = request.getSession().getServletContext().getRealPath("/uploads");
        File file = new File(path);
        if(!file.exists()){
            file.mkdirs();
        }
        String filename1 = upload.getOriginalFilename();
        String replace = UUID.randomUUID().toString().replace("-", "");
        String filename=replace+filename1;
        upload.transferTo(new File(file,filename));
        return "success";
    }
}
