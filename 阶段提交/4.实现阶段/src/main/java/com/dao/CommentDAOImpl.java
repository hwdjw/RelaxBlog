package com.dao;

import com.entity.ArticlesEntity;
import com.entity.CommentsEntity;
import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by DELL on 2017-05-06.
 */
@Repository
public class CommentDAOImpl implements CommentDAO {
    @Autowired
    private SessionFactory sessionFactory;
    public List<CommentsEntity>getArticleComments(ArticlesEntity articlesEntity){
        List<CommentsEntity> list = new ArrayList<CommentsEntity>();
        int artId=articlesEntity.getArtId();
        System.out.println(articlesEntity.getArtId());
        try{
            Criteria criteria = sessionFactory.getCurrentSession().createCriteria(CommentsEntity.class)
                    .add(Restrictions.eq("artId",artId));
            list = criteria.list();
        }catch (Exception e){
            e.printStackTrace();
        }
        return list;
    }

    public boolean createComment(CommentsEntity c) {
        boolean flag=true;
        try {
            sessionFactory.getCurrentSession().save(c);
        }catch (Exception e){
            e.printStackTrace();
            flag=false;
        }
        return flag;
    }

    public boolean deleteComment(CommentsEntity c) {
        boolean flag=true;
        try {
            sessionFactory.getCurrentSession().delete(c);
        }catch (Exception e){
            e.printStackTrace();
            flag=false;
        }
        return flag;
    }
}
