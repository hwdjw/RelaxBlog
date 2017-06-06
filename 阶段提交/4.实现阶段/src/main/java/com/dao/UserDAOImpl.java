package com.dao;

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
public class UserDAOImpl implements UserDAO {

    @Autowired
    private SessionFactory sessionFactory;

    public boolean save(UsersEntity u) {
        boolean flag=true;
        try {
            sessionFactory.getCurrentSession().save(u);
        } catch (Exception e) {
            flag=false;
            e.printStackTrace();
        }
        return flag;
    }

    public List<UsersEntity> findAll() {
        List<UsersEntity> list = new ArrayList<UsersEntity>();
        try {
            Criteria criteria = sessionFactory.getCurrentSession().createCriteria(UsersEntity.class);
            list = criteria.list();
        } catch (Exception e) {
            e.printStackTrace();
        }


        return list;
    }
}