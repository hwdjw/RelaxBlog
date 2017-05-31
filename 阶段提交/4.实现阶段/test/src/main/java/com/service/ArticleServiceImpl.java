package com.service;

import com.dao.ArticleDAO;
import com.entity.ArticlesEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by DELL on 2017-05-04.
 */
@Service("userService")
@Transactional
public class ArticleServiceImpl implements ArticleService {
    @Autowired
    private ArticleDAO articleDAO;

    public boolean createArticle(ArticlesEntity a) {
        boolean result=articleDAO.createArticle(a);
        if(result==true)
        {
            return true;
        }
        else return false;

    }

    public boolean editArticle(ArticlesEntity a) {
        boolean result=articleDAO.editArticle(a);
        if(result==true)
        {
            return true;
        }
        else return false;


    }

    public boolean deleteArticle(ArticlesEntity a) {
        boolean result=articleDAO.deleteArtice(a);
        if(result==true)
        {
            return true;
        }
        else return false;


    }

    public List<ArticlesEntity> getAllArticles() {
        return articleDAO.findAll();
    }
    public ArticlesEntity getArticle(ArticlesEntity a){return articleDAO.findArticle(a);}
}