package com.service;

import com.entity.ArticlesEntity;

import java.util.List;

/**
 * Created by DELL on 2017-05-04.
 */
public interface ArticleService {
    public boolean createArticle(ArticlesEntity a);
    public boolean editArticle(ArticlesEntity a);
    public boolean deleteArticle(ArticlesEntity a);
    public List<ArticlesEntity> getAllArticles();
    public ArticlesEntity getArticle(ArticlesEntity a);
}