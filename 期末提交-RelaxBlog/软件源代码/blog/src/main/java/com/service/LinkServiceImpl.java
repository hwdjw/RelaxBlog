package com.service;

import com.dao.LinkDAO;
import com.entity.LinksEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by DELL on 2017-05-30.
 */
@Service("linkService")
@Transactional
public class LinkServiceImpl implements LinkService {
    @Autowired
    private LinkDAO linkDAO;

    public boolean createLink(LinksEntity a) {
        boolean result = linkDAO.createLink(a);
        System.out.println("service"+a.getName());
        if (result == true) {
            return true;
        } else return false;

    }

    public boolean editLink(LinksEntity a) {
        boolean result = linkDAO.editLink(a);
        if (result == true) {
            return true;
        } else return false;
    }

    public boolean deleteLink(LinksEntity a) {
        boolean result = linkDAO.deleteLink(a);
        if (result == true) {
            return true;
        } else return false;
    }

    public List<LinksEntity> getAllLinks() {
        return linkDAO.findAll();
    }
}
