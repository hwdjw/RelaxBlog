package com.controller;


import cn.edu.hfut.dmic.contentextractor.ContentExtractor;
import cn.edu.hfut.dmic.contentextractor.News;
import com.entity.ArticlesEntity;
import com.service.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpSession;
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
        System.out.println(result);
        if(result==true)
        {
            return "success";
        }
        else return "false";


    }
    @RequestMapping("/test")

    @ResponseBody

    public String testjson(HttpSession session) {
        if(session.getAttribute("username")==null){
            return "fall";
        }
        else return "success";

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
    @RequestMapping("/crawlArticle")
    public Map<String ,Object> crawlArticle(String url){
        Map<String,Object> result = new HashMap<String, Object>();
        try {
            News news = ContentExtractor.getNewsByUrl(url);
            String  content = news.getContentElement().toString();
            String title = news.getTitle();
            result.put("status", "success");
            result.put("title", title);
            result.put("categories","转发");
            result.put("content",content);
        }catch (Exception e){
            result.put("status","fail");
            e.printStackTrace();
        }
        return result;
    }

}
