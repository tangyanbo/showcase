/**用户*/
insert into user_sy(name,account,password,user_type,status)
values('user1','user1','000000',2,1);
insert into user_sy(name,account,password,user_type,status)
values('user2','user2','000000',2,1);
insert into user_sy(name,account,password,user_type,status)
values('user3','user3','000000',2,1);

/**角色*/
insert into role(role_id,classname,classpk,name)
values('BZR_001','class','1234','班主任1');
insert into role(role_id,classname,classpk,name)
values('BZR_002','class','1234','班主任2');
insert into role(role_id,classname,classpk,name)
values('BZR_003','class','1234','班主任3');

/**用户角色关系*/
insert into user_role_r values(1,'BZR_001',now());
insert into user_role_r values(2,'BZR_002',now());
insert into user_role_r values(3,'BZR_003',now());


insert into grade(grade_id,name) values(1,'一年级');
insert into grade(grade_id,name) values(2,'二年级');

insert into class(name,grade_id) values('一年级1班',1);
insert into class(name,grade_id) values('一年级2班',2);


insert into course(course_id,name,status) values(0,'语文',1);
insert into course(course_id,name,status) values(1,'数学',1);
insert into course(course_id,name,status) values(2,'历史',1);

insert into role(role_id,classname,classpk,name)
values('REJS_001','class','41','任课教师1');
insert into role(role_id,classname,classpk,name)
values('REJS_002','class','42','任课教师2');
