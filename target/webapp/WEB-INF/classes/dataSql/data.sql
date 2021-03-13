-- auto-generated definition
create table users
(
    id         serial  not null
        constraint users_pk
            primary key,
    first_name varchar,
    last_name  varchar,
    email      varchar not null,
    age        integer,
    city       varchar,
    country    varchar,
    gender     varchar,
    password   varchar not null
);

create unique index users_email_uindex
    on users (email);
-----------------------------------------------
-- auto-generated definition
create table cours
(
    id          serial not null
        constraint table_name_pk
            primary key,
    department  varchar,
    course_name varchar
);
INSERT INTO COURSES VALUES(1,'CSS','Intro to Computer Science');
INSERT INTO COURSES VALUES(2,'CSS','Data Structures');
INSERT INTO COURSES VALUES(3,'IT','Web and Mobile 2');
INSERT INTO COURSES VALUES(4,'LAW','Introduction of Law');
INSERT INTO COURSES VALUES(5,'BAA','Intro to Business Administration');
INSERT INTO COURSES VALUES(6,'MATH','Probability');
---------------------------------
CREATE TABLE enrolment(
                          email varchar references users(email),
                          course_id INT references courses(id)
);
