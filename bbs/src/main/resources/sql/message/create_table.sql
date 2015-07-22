
create table msg_contact
(
   id                   int not null auto_increment,
   user_id              int not null,
   contact_type_id      int not null,
   primary key (id)
);

create table msg_contact_type
(
   contact_type_id      int not null auto_increment,
   owner                int,
   name                 varchar(20),
   sort                 int,
   primary key (contact_type_id)
);

create table msg_content
(
   content_id           int not null auto_increment,
   content              text,
   primary key (content_id)
);

create table msg_draft
(
   draft_id             int not null auto_increment,
   content_id           int,
   user_id              int,
   title                varchar(100),
   primary key (draft_id)
);

create table msg_draft_file_r
(
   id                   int not null auto_increment,
   file_id              varchar(50) not null,
   draft_id             int not null,
   primary key (id)
);

create table msg_draft_receiveuser_r
(
   id                   int not null auto_increment,
   draft_id             int not null,
   user_id              int not null,
   type                 varchar(20) comment 'receive:接收
            copy:抄送',
   primary key (id)
);




create table msg_message
(
   message_id           int not null auto_increment,
   content_id           int,
   message_type         varchar(20) comment 'message:留言
            email:邮件',
   title                varchar(100),
   publish_time         datetime,
   user_id              int,
   isDelete             bit(1) comment 'true:删除
            false:可用',
   hits                 int,
   receive_sum 			int,
   status               varchar(20) comment 'pass
            reject
            new',
   primary key (message_id)
);

create table msg_message_delete
(
   id                   int not null auto_increment,
   user_id              int not null,
   message_id           int not null,
   primary key (id)
);

create table msg_message_file_r
(
   id                   int not null auto_increment,
   message_id           int not null,
   file_id              varchar(50) not null,
   primary key (id)
);

create table msg_message_receive_user_r
(
   id                   int not null auto_increment,
   message_id           int not null,
   user_id              int not null,
   read_status          bit(1),
   isDelete             bit(1) comment 'true:删除
            false:可用',
   type                 varchar(20) comment 'receive:收件人
            copy:抄送人',
   primary key (id)
);









alter table msg_contact add constraint msg_FK_Reference_1 foreign key (contact_type_id)
      references msg_contact_type (contact_type_id) on delete cascade on update cascade;

alter table msg_draft add constraint msg_FK_Reference_2 foreign key (content_id)
      references msg_content (content_id) on delete cascade on update cascade;

alter table msg_draft_file_r add constraint msg_FK_Reference_3 foreign key (draft_id)
      references msg_draft (draft_id) on delete cascade on update cascade;

alter table msg_draft_receiveuser_r add constraint msg_FK_Reference_4 foreign key (draft_id)
      references msg_draft (draft_id) on delete cascade on update cascade;



      
alter table msg_message add constraint msg_FK_Reference_5 foreign key (content_id)
      references msg_content (content_id) on delete cascade on update cascade;

alter table msg_message_delete add constraint msg_FK_Reference_6 foreign key (message_id)
      references msg_message (message_id) on delete cascade on update cascade;

alter table msg_message_file_r add constraint msg_FK_Reference_7 foreign key (message_id)
      references msg_message (message_id) on delete cascade on update cascade;

alter table msg_message_receive_user_r add constraint msg_FK_Reference_8 foreign key (message_id)
      references msg_message (message_id) on delete cascade on update cascade;




