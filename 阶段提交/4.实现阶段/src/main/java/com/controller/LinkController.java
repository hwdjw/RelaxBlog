package com.controller;

import com.entity.LinksEntity;
import com.service.LinkService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * Created by DELL on 2017-05-30.
 */

@RestController

@RequestMapping("/link")
public class LinkController {
    @Autowired

    private LinkService linkService;

    @RequestMapping("/all")

    @ResponseBody

    public List<LinksEntity> json() {


        return linkService.getAllLinks();

    }
    @RequestMapping("/add")
    public String createArticle(LinksEntity l){
        System.out.println(l.getName()+"gf"+l.getDescription());
        boolean result = linkService.createLink(l);
        if (result == true) {
            return "success";
        } else return "false";
    }
    @RequestMapping("/delete")
    public String deleteArticle(LinksEntity l){
        boolean result = linkService.deleteLink(l);
        if (result == true) {
            return "success";
        } else return "false";
    }

}
