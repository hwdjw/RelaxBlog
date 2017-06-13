package com.dao;

import com.entity.LinksEntity;

import java.util.List;

/**
 * Created by DELL on 2017-05-30.
 */
public interface LinkDAO {
    public boolean createLink(LinksEntity a);

    public boolean editLink(LinksEntity a);
    public boolean deleteLink(LinksEntity a);
    public List<LinksEntity> findAll();
}
