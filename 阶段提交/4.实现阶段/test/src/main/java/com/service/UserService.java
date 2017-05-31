package com.service;

import com.entity.UsersEntity;

import java.util.List;

/**
 * Created by DELL on 2017-05-04.
 */
public interface UserService {
    public void saveUsers(List<UsersEntity> us);
    public List<UsersEntity> getAllUsernames();
}