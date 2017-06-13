package com.dao;

import com.entity.ArticlesEntity;
import com.entity.CommentsEntity;

import java.util.List;

/**
 * Created by DELL on 2017-05-06.
 */
public interface CommentDAO {
    public List<CommentsEntity>getArticleComments(ArticlesEntity articlesEntity);

    public boolean createComment(CommentsEntity commentsEntity);
    public boolean deleteComment(CommentsEntity commentsEntity);
}
