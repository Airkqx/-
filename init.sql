
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


#check_status 0???????????????1??????????????????2?????????????????????3????????????



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
VALUES ('demander1','123456','??????','???','411123200102280036','18983936191','531864572@qq.com','?????????',''),
       ('demander2','123321','??????','???','411233200102280032','18983936192','123864573@qq.com','??????',''),
       ('demander3','321123','?????????','???','321232001022800363','18983936193','51234572@qq.com','??????',''),
       ('demander4','321321','??????','???','123123100102280036','18983936194','39434572@qq.com','??????',''),
       ('demander5','112233','????????????','???','872123200102280036','18983936195','731123572@qq.com','??????','');



insert into t_volunteers (username, password, birthday, real_name, sex, id_card, phone_number, email, address, description)
VALUES ('volunteer1','123123','2001-01-09','??????','???','411123200102280036','18983936191','531864572@qq.com','13???','666'),
       ('volunteer2','123321','2002-02-09','??????','???','411233200102280032','18983936192','123864573@qq.com','13???','666'),
       ('volunteer3','321123','2003-03-09','?????????','???','321232001022800363','18983936193','51234572@qq.com','13???','666'),
       ('volunteer4','321321','2004-04-09','??????','???','123123100102280036','18983936194','39434572@qq.com','??????2','666'),
       ('volunteer5','112233','2005-05-09','????????????','???','872123200102280036','18983936195','731123572@qq.com','??????2','666');


insert into t_demand_information (title, demander, phone_number, email, end_time, description)
VALUES('??????1','demander1','18983936191','531864572@qq.com','2022-06-30','300'),
      ('??????2','demander1','18983936192','123864573@qq.com','2022-06-30','300'),
      ('??????3','demander2','18983936193','51234572@qq.com','2022-06-30','300'),
      ('??????4','demander1','18983936194','39434572@qq.com','2022-06-30','300'),
      ('??????5','demander2','18983936195','731123572@qq.com','2022-06-30','300');



insert into t_voluntary_information (title, school, address, director, phone_number, email, people_needed, start_time, end_time, description, demander)
VALUES ('??????1','????????????','?????????','??????','18983936191','531864572@qq.com','99','2022-05-30','2022-06-30','300','demander1'),
       ('??????2','????????????','?????????','??????','18983936192','123864573@qq.com','99','2022-05-30','2022-06-30','300','demander1'),
       ('??????3','????????????','?????????','?????????','18983936193','51234572@qq.com','99','2022-05-30','2022-06-30','300','demander1'),
       ('??????4','????????????','?????????','??????','18983936194','39434572@qq.com','99','2022-05-30','2022-06-30','300','demander1'),
       ('??????5','????????????','?????????','????????????','18983936195','731123572@qq.com','99','2022-05-30','2022-06-30','300','demander1');







    