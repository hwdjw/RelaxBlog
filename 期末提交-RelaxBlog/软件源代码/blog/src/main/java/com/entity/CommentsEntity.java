package com.entity;

import javax.persistence.*;
import java.sql.Date;

/**
 * Created by DELL on 2017-05-04.
 */
@Entity
@Table(name = "comments", schema = "blog", catalog = "")
public class CommentsEntity {
    private int cmtId;
    private Date createdDate;
    private int artId;
    private int userId;
    private String content;

    @Id
    @Column(name = "cmt_id", nullable = false)
    public int getCmtId() {
        return cmtId;
    }

    public void setCmtId(int cmtId) {
        this.cmtId = cmtId;
    }

    @Basic
    @Column(name = "created_date", nullable = false)
    public Date getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(Date createdDate) {
        this.createdDate = createdDate;
    }

    @Basic
    @Column(name = "art_id", nullable = false)
    public int getArtId() {
        return artId;
    }

    public void setArtId(int artId) {
        this.artId = artId;
    }

    @Basic
    @Column(name = "user_id", nullable = false)
    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    @Basic
    @Column(name = "content", nullable = false, length = 200)
    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        CommentsEntity that = (CommentsEntity) o;

        if (cmtId != that.cmtId) return false;
        if (artId != that.artId) return false;
        if (userId != that.userId) return false;
        if (createdDate != null ? !createdDate.equals(that.createdDate) : that.createdDate != null) return false;
        if (content != null ? !content.equals(that.content) : that.content != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = cmtId;
        result = 31 * result + (createdDate != null ? createdDate.hashCode() : 0);
        result = 31 * result + artId;
        result = 31 * result + userId;
        result = 31 * result + (content != null ? content.hashCode() : 0);
        return result;
    }
}
