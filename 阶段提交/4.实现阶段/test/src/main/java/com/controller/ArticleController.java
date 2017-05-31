package com.controller;



import com.entity.ArticlesEntity;

import com.service.ArticleService;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.ResponseBody;

import org.springframework.web.bind.annotation.RestController;



import java.util.Date;

import java.util.HashMap;

import java.util.List;

import java.util.Map;



/**

 * Created by DELL on 2017-05-04.

 */

@RestController

@RequestMapping("/article")

public class ArticleController {

    @Autowired

    private ArticleService articleService;

    @RequestMapping("/all")

    @ResponseBody

    public List<ArticlesEntity> json(){

        return articleService.getAllArticles();

    }

    @RequestMapping("/add")

    public String  createArticle(ArticlesEntity a){

        System.out.println(a.getContent());

        Date date =new Date();

        a.setCreatedDate(new java.sql.Date(date.getTime()));

        a.setStatus(1);


        boolean result=articleService.createArticle(a);
        if(result==true)
        {
            return "success";
        }
        else return "false";


    }

    @RequestMapping("/delete")

    public String deleteArticle(ArticlesEntity a){

        System.out.println(a.getArtId());


        boolean result=articleService.deleteArticle(a);
        if(result==true)
        {
            return "success";
        }
        else return "false";


    }

    @RequestMapping("/get")

    public Map<String ,Object> getArticle(ArticlesEntity a){

        ArticlesEntity articlesEntity = articleService.getArticle(a);

        Map<String,Object> result = new HashMap<String, Object>();

        result.put("status", "success");

        result.put("articleId",articlesEntity.getArtId());

        result.put("title", articlesEntity.getTitle());

        result.put("category",articlesEntity.getCategories());

        result.put("content",articlesEntity.getContent());

        return result;

    }



    @RequestMapping("/edit")

    public String editArticle(ArticlesEntity a){

        ArticlesEntity b=new ArticlesEntity();
        b.setArtId(a.getArtId());
        boolean result1=articleService.deleteArticle(b);

        System.out.println(a.getContent());

        Date date =new Date();

        a.setCreatedDate(new java.sql.Date(date.getTime()));

        //a.setStatus(1);

        boolean result2=articleService.createArticle(a);
        if(result1==true&&result2==true)
        {
            return "success";
        }
        else return "false";


    }

    @RequestMapping("/draft")

    public String  saveDraft(ArticlesEntity a){

        System.out.println(a.getContent());

        Date date =new Date();

        a.setCreatedDate(new java.sql.Date(date.getTime()));

        a.setStatus(0);

       boolean result=articleService.createArticle(a);
        if(result==true)
        {
            return "success";
        }
        else return "false";


    }

}
