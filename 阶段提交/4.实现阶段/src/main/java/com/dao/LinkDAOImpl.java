package com.dao;

import com.entity.LinksEntity;
import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by DELL on 2017-05-30.
 */
@Repository
public class LinkDAOImpl implements LinkDAO{
    @Autowired
    private SessionFactory sessionFactory;
    public boolean createLink(LinksEntity a){
        System.out.println("DAO"+a.getName());
        boolean flag=true;
        try {
            sessionFactory.getCurrentSession().save(a);
        } catch (Exception e) {
            flag=false;
            e.printStackTrace();
            return false;
        }
        return flag;
    }

    public boolean editLink(LinksEntity a){
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
    public boolean deleteLink(LinksEntity a){
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
    public List<LinksEntity> findAll(){
        List<LinksEntity> list = new ArrayList<LinksEntity>();
        try {
            Criteria criteria = sessionFactory.getCurrentSession().createCriteria(LinksEntity.class);
            list = criteria.list();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }


}
