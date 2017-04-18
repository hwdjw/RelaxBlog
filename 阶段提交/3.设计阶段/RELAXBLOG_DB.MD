```sql
DROP TABLE IF EXISTS comments;
CREATE TABLE comments 
(
  id INTEGER AUTOINCREMENT NOT NULL, 
  created INTEGER (10) NOT NULL,
  author VARCHAR (200) NOT NULL, 
  author_id INTEGER (10) DEFAULT (0), 
  owner_id INTEGER (10) DEFAULT (0), 
  content TEXT NOT NULL,
);

DROP TABLE IF EXISTS articles;
CREATE TABLE articles
( 
  id INTEGER  AUTO_INCREMENT NOT NULL,
  title VARCHAR (255) NOT NULL, 
  created_date Date  NOT NULL,
  modified_date Date,
  content TEXT, 
  author_id INTEGER (10) NOT NULL,
  categories VARCHAR (200), 
  comments_num INTEGER (1) DEFAULT (0), 
  allow_comment INTEGER (1) DEFAULT (1), 
  
  primary key(id)
);
DROP TABLE IF EXISTS relationships;
CREATE TABLE relationships 
(
  user_id INTEGER (10) NOT NULL, 
  rel_id INTEGER (10) NOT NULL
);
DROP TABLE IF EXISTS users;
CREATE TABLE t_users (
  uid INTEGER PRIMARY KEY UNIQUE NOT NULL, 
  username VARCHAR (64) UNIQUE NOT NULL,
  password VARCHAR (64) NOT NULL,
  email VARCHAR (100), home_url VARCHAR (255), 
);



```

