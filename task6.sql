CREATE DATABASE task_sql;
use task_sql;

CREATE TABLE IF NOT EXISTS goods(
  id_goods INT(10) AUTO_INCREMENT NOT NULL ,
  goods_name VARCHAR(255) NOT NULL ,
  price DECIMAL (6,2) UNSIGNED NOT NULL ,
  PRIMARY KEY (id_goods)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS  customers(
  id_customers INT(10) AUTO_INCREMENT NOT NULL ,
  name VARCHAR(255) NOT NULL ,
  city VARCHAR(255) NOT NULL ,
  PRIMARY KEY (id_customers)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS orders(
  id INT(10) AUTO_INCREMENT NOT NULL ,
  all_sum DECIMAL (10,2) UNSIGNED NOT NULL ,
  date_buy date NOT NULL,
  id_goods INT (10) NOT NULL ,
  id_customers INT(10) NOT NULL ,
  PRIMARY KEY (id),
  FOREIGN KEY (id_goods) REFERENCES goods (id_goods),
  FOREIGN KEY (id_customers) REFERENCES customers (id_customers)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;