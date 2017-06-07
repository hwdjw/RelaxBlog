package com.service;

import com.dao.UserDAO;
import com.entity.UsersEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by DELL on 2017-05-04.
 */
@Service("articleService")
@Transactional
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDAO userDao;

    public void saveUsers(List<UsersEntity> us) {
        for (UsersEntity u : us) {
            userDao.save(u);
        }
    }

    public List<UsersEntity> getAllUsernames() {
        return userDao.findAll();
    }
}