package com.dao;

import com.entity.UsersEntity;

import java.util.List;

/**
 * Created by DELL on 2017-05-04.
 */
public interface UserDAO {
    public boolean save(UsersEntity u);
    public List<UsersEntity> findAll();
}