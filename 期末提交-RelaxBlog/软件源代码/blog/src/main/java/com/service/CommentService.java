package com.service;

import com.entity.ArticlesEntity;
import com.entity.CommentsEntity;

import java.util.List;

/**
 * Created by DELL on 2017-05-06.
 */
public interface CommentService {
    public void createComment(CommentsEntity c);
    public void deleteComment(CommentsEntity c);
    public List<CommentsEntity> getArticleComments(ArticlesEntity a);

}
