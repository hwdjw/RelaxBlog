package com.controller;

import com.entity.UsersEntity;
import com.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by DELL on 2017-05-04.
 */
@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping("")
    public String home(){
        List<UsersEntity> us = new ArrayList<UsersEntity>();
        UsersEntity u = new UsersEntity();
        u.setUserId(1001);
        u.setUsername("Penny");
        u.setPassword("123456");
        u.setEmail("Penny@163.com");
        us.add(u);
        u = new UsersEntity();
        u.setUserId(1012);
        u.setUsername("Tom");
        u.setPassword("123456");
        u.setEmail("Tom@163.com");
        us.add(u);
        userService.saveUsers(us);
        return "index";
    }

    @RequestMapping("/json")
    @ResponseBody
    public List<UsersEntity> json(){
        return userService.getAllUsernames();
    }

}