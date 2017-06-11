package com.service;

import com.dao.CommentDAO;
import com.entity.ArticlesEntity;
import com.entity.CommentsEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by DELL on 2017-05-06.
 */
@Service("commentService")
@Transactional
public class CommentServiceImpl implements CommentService {
    @Autowired
    private CommentDAO commentDao;

    public void createComment(CommentsEntity c) {
        commentDao.createComment(c);
    }

    public void deleteComment(CommentsEntity c) {
        commentDao.deleteComment(c);
    }

    public List<CommentsEntity> getArticleComments(ArticlesEntity a) {
        return commentDao.getArticleComments(a);
    }
}
