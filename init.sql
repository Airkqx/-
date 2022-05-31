
create database ssm;
use ssm;


drop table  if exists `t_admin`;
drop table  if exists `t_volunteers`;
drop table  if exists `t_demanders`;
drop table  if exists `t_voluntary_information`;
drop table  if exists `t_demand_information`;
drop table  if exists `t_apply`;


create table t_admin(
                        id int NOT NULL auto_increment,
                        username varchar(255) NOT NULL,
                        password varchar(255) NOT NULL,
                        email varchar(255),
                        primary key(`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table `t_volunteers`(
                               id int not null auto_increment,
                               username varchar(255) unique not null,
                               password varchar(255) not null,
                               birthday date,
                               real_name varchar(255) not null,
                               sex varchar(255) not null,
                               id_card char(20) not null,
                               phone_number char(11) not null,
                               email varchar(255) not null,
                               address varchar(255),
                               description text,
                               primary key(`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


create table `t_demanders`(
                              id int not null auto_increment,
                              username varchar(255) unique not null,
                              password varchar(255) not null,
                              real_name varchar(255) not null,
                              sex varchar(255) not null,
                              id_card char(18) not null,
                              phone_number char(11) not null,
                              email varchar(255) not null,
                              profession varchar(255) default null,
                              id_card_photo varchar(255) not null,
                              check_status int default 0,
                              primary key(`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#check_status 0为未审核，1为审核通过，2为审核不通过，3为已完成



create table `t_voluntary_information`(
                                          id int NOT NULL auto_increment,
                                          title varchar(255) not null,
                                          school varchar(255) not null,
                                          address varchar(255) not null,
                                          director varchar(255) not null,
                                          phone_number varchar(255) not null,
                                          email varchar(255) not null,
                                          people_needed int not null,
                                          start_time date not null,
                                          end_time date not null,
                                          description text default null,
                                          check_status int default 0,
                                          demander varchar(255),
                                          primary key(`id`)

)ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

create table `t_demand_information`(
                                       id int NOT NULL auto_increment,
                                       title varchar(255),
                                       demander varchar(255),
                                       phone_number varchar(255),
                                       email varchar(255),
                                       end_time date,
                                       description text,
                                       check_status int default 0,
                                       primary key(`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

create table `t_apply`(
                          id int NOT NULL auto_increment,
                          voluntary_apply varchar(255) NOT NULL,
                          volunteer_name varchar(255) NOT NULL,
                          primary key(`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

insert into t_admin(username, password, email)  values ('admin','admin','2632416634@qq.com');


insert into t_demanders (username, password, real_name, sex, id_card, phone_number, email, profession,id_card_photo)
VALUES ('demander1','123456','张三','男','411123200102280036','18983936191','531864572@qq.com','幼儿园',''),
       ('demander2','123321','李四','男','411233200102280032','18983936192','123864573@qq.com','小学',''),
       ('demander3','321123','王麻子','男','321232001022800363','18983936193','51234572@qq.com','初中',''),
       ('demander4','321321','翠花','女','123123100102280036','18983936194','39434572@qq.com','高中',''),
       ('demander5','112233','迪丽热巴','女','872123200102280036','18983936195','731123572@qq.com','大学','');



insert into t_volunteers (username, password, birthday, real_name, sex, id_card, phone_number, email, address, description)
VALUES ('volunteer1','123123','2001-01-09','张三','男','411123200102280036','18983936191','531864572@qq.com','13栋','666'),
       ('volunteer2','123321','2002-02-09','李四','男','411233200102280032','18983936192','123864573@qq.com','13栋','666'),
       ('volunteer3','321123','2003-03-09','王麻子','男','321232001022800363','18983936193','51234572@qq.com','13栋','666'),
       ('volunteer4','321321','2004-04-09','翠花','女','123123100102280036','18983936194','39434572@qq.com','紫荆2','666'),
       ('volunteer5','112233','2005-05-09','迪丽热巴','女','872123200102280036','18983936195','731123572@qq.com','紫荆2','666');


insert into t_demand_information (title, demander, phone_number, email, end_time, description)
VALUES('需求1','demander1','18983936191','531864572@qq.com','2022-06-30','300'),
      ('需求2','demander1','18983936192','123864573@qq.com','2022-06-30','300'),
      ('需求3','demander2','18983936193','51234572@qq.com','2022-06-30','300'),
      ('需求4','demander1','18983936194','39434572@qq.com','2022-06-30','300'),
      ('需求5','demander2','18983936195','731123572@qq.com','2022-06-30','300');



insert into t_voluntary_information (title, school, address, director, phone_number, email, people_needed, start_time, end_time, description, demander)
VALUES ('志愿1','霍格沃兹','乌克兰','张三','18983936191','531864572@qq.com','99','2022-05-30','2022-06-30','300','demander1'),
       ('志愿2','霍格沃兹','乌克兰','李四','18983936192','123864573@qq.com','99','2022-05-30','2022-06-30','300','demander1'),
       ('志愿3','霍格沃兹','乌克兰','王麻子','18983936193','51234572@qq.com','99','2022-05-30','2022-06-30','300','demander1'),
       ('志愿4','霍格沃兹','乌克兰','翠花','18983936194','39434572@qq.com','99','2022-05-30','2022-06-30','300','demander1'),
       ('志愿5','霍格沃兹','乌克兰','迪丽热巴','18983936195','731123572@qq.com','99','2022-05-30','2022-06-30','300','demander1');







    