package com.dao;

import com.entity.ArticlesEntity;
import com.entity.UsersEntity;
import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by DELL on 2017-05-04.
 */
@Repository
public class ArticleDAOImpl implements ArticleDAO {


    @Autowired
    private SessionFactory sessionFactory;
    public boolean createArticle(ArticlesEntity a){
        boolean flag=true;
        try {
            sessionFactory.getCurrentSession().save(a);
        } catch (Exception e) {
            flag=false;
            e.printStackTrace();
            return false;
        }
        //System.out.println(i);
        return flag;
    }

    public boolean editArticle(ArticlesEntity a){
        boolean flag=true;
        try {
            sessionFactory.getCurrentSession().update(a);
        } catch (Exception e) {
            flag=false;
            e.printStackTrace();
            return false;
        }
        return flag;

    }
    public boolean deleteArtice(ArticlesEntity a){
        boolean flag=true;
        try {
            sessionFactory.getCurrentSession().delete(a);
        } catch (Exception e) {
            flag=false;
            e.printStackTrace();
            return false;
        }
        return flag;
    }
    public List<ArticlesEntity> findAll(){
        List<ArticlesEntity> list = new ArrayList<ArticlesEntity>();
        try {
            Criteria criteria = sessionFactory.getCurrentSession().createCriteria(ArticlesEntity.class);
            list = criteria.list();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
    public ArticlesEntity findArticle(ArticlesEntity a){
        List<ArticlesEntity> list = new ArrayList<ArticlesEntity>();
        try {
            Criteria criteria = sessionFactory.getCurrentSession().createCriteria(ArticlesEntity.class,Integer.toString(a.getArtId()));
            list = criteria.list();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list.get(0);
    }
}