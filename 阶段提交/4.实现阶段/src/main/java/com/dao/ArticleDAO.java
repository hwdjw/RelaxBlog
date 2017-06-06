package com.dao;

import com.entity.ArticlesEntity;

import java.util.List;

/**
 * Created by DELL on 2017-05-04.
 */
public interface ArticleDAO {
    public boolean createArticle(ArticlesEntity a);
    public boolean editArticle(ArticlesEntity a);
    public boolean deleteArtice(ArticlesEntity a);
    public List<ArticlesEntity> findAll();
    public ArticlesEntity findArticle(ArticlesEntity a);
}
