package com.controller;

import com.entity.ArticlesEntity;
import com.entity.CommentsEntity;
import com.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Created by DELL on 2017-05-06.
 */
@Controller
@RequestMapping("/comment")
public class CommentController {
    @Autowired
    private CommentService commentService ;
    @RequestMapping("/json")
    @ResponseBody
    public List<CommentsEntity> json(ArticlesEntity a){
        System.out.println("article id = "+a.getArtId());
      //  a.setCreatedDate(new java.sql.Date(2017-05-04));
        return commentService.getArticleComments(a);
    }
}
