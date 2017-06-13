package com.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpSession;

/**
 * Created by DELL on 2017-05-24.
 */
@RestController
public class LoginController {
    /**
     * 登录
     *
     * @param session  HttpSession
     * @param username 用户名
     * @param password 密码
     * @return
     */
    @RequestMapping(value = "/login")
    public String login(HttpSession session, String username, String password) throws Exception {
        //在Session里保存信息
        System.out.println(username+password);
        if(username.equals("admin")&&password.equals("123456"))
        {
            session.setAttribute("username", username);
            return "success";
        }
        else
            return "fall";
    }

    /**
     * 退出系统
     *
     * @param session Session
     * @return
     * @throws Exception
     */
    @RequestMapping(value = "/logout")
    public String logout(HttpSession session) throws Exception {
        //清除Session
        session.invalidate();

        return "success";
    }
}
