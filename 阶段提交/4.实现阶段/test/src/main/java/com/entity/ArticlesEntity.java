package com.entity;



import javax.persistence.*;

import java.sql.Date;



/**

 * Created by DELL on 2017-05-04.

 */

@Entity

@Table(name = "articles", schema = "blog")

public class ArticlesEntity {

    private int artId;

    private String title;

    private Date createdDate;

    private Date modifiedDate;

    private String content;

    private String categories;

    private Integer commentsNum;

    private Integer status;



    @Id

    @Column(name = "art_id", nullable = false)

    public int getArtId() {

        return artId;

    }



    public void setArtId(int artId) {

        this.artId = artId;

    }



    @Basic

    @Column(name = "title", nullable = false, length = 255)

    public String getTitle() {

        return title;

    }



    public void setTitle(String title) {

        this.title = title;

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

    @Column(name = "modified_date", nullable = true)

    public Date getModifiedDate() {

        return modifiedDate;

    }



    public void setModifiedDate(Date modifiedDate) {

        this.modifiedDate = modifiedDate;

    }



    @Basic

    @Column(name = "content", nullable = true, length = 1000)

    public String getContent() {

        return content;

    }



    public void setContent(String content) {

        this.content = content;

    }



    @Basic

    @Column(name = "categories", nullable = true, length = 50)

    public String getCategories() {

        return categories;

    }



    public void setCategories(String categories) {

        this.categories = categories;

    }



    @Basic

    @Column(name = "comments_num", nullable = true)

    public Integer getCommentsNum() {

        return commentsNum;

    }



    public void setCommentsNum(Integer commentsNum) {

        this.commentsNum = commentsNum;

    }



    @Override

    public boolean equals(Object o) {

        if (this == o) return true;

        if (o == null || getClass() != o.getClass()) return false;



        ArticlesEntity that = (ArticlesEntity) o;



        if (artId != that.artId) return false;

        if (title != null ? !title.equals(that.title) : that.title != null) return false;

        if (createdDate != null ? !createdDate.equals(that.createdDate) : that.createdDate != null) return false;

        if (modifiedDate != null ? !modifiedDate.equals(that.modifiedDate) : that.modifiedDate != null) return false;

        if (content != null ? !content.equals(that.content) : that.content != null) return false;

        if (categories != null ? !categories.equals(that.categories) : that.categories != null) return false;

        if (commentsNum != null ? !commentsNum.equals(that.commentsNum) : that.commentsNum != null) return false;



        return true;

    }



    @Override

    public int hashCode() {

        int result = artId;

        result = 31 * result + (title != null ? title.hashCode() : 0);

        result = 31 * result + (createdDate != null ? createdDate.hashCode() : 0);

        result = 31 * result + (modifiedDate != null ? modifiedDate.hashCode() : 0);

        result = 31 * result + (content != null ? content.hashCode() : 0);

        result = 31 * result + (categories != null ? categories.hashCode() : 0);

        result = 31 * result + (commentsNum != null ? commentsNum.hashCode() : 0);

        return result;

    }



    @Basic

    @Column(name = "status", nullable = true)

    public Integer getStatus() {

        return status;

    }



    public void setStatus(Integer status) {

        this.status = status;

    }

}
