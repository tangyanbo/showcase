-- 用户修改时间
alter table user_sy add column modify_time datetime;
update user_sy set modify_time = now();

-- 班级修改时间
update class set MODIFY_TIME = now();


-- 角色
alter table role add column status varchar(10);
update role set status = '是';
alter table role add column COMMENT VARCHAR(1000);
alter table role add column type VARCHAR(10);
update role set type = '内置角色';

-- 采集时间表
CREATE TABLE GATHER_TIME
(
   ID                   INT NOT NULL,
   TABLE_NAME           VARCHAR(50) NOT NULL,
   GATHER_TIME          DATETIME NOT NULL,
   PRIMARY KEY (ID)
);

-- 登录日志
drop table LOGIN_LOG;
CREATE TABLE LOGIN_LOG
(
   LOG_ID               INT NOT NULL,
   USER_ID              INT NOT NULL,
   IP                   VARCHAR(50) NOT NULL,
   LOGIN_TIME           DATETIME NOT NULL,
   LOGOUT_TIME          DATETIME,
   PRIMARY KEY (LOG_ID)
);

-- 操作日志
CREATE TABLE OPERATION_LOG
(
   OPER_LOG_ID          INT NOT NULL,
   OPER_USER            INT NOT NULL,
   CONTENT              VARCHAR(2000) NOT NULL,
   TIME                 DATETIME NOT NULL,
   IP                   VARCHAR(50) NOT NULL,
   MODULE               VARCHAR(20) NOT NULL,
   PRIMARY KEY (OPER_LOG_ID)
);

-- 权限相关表
CREATE TABLE CATEGORY_ROLE_R
(
   ID                   INT NOT NULL AUTO_INCREMENT,
   CATEGORY_ID          INT,
   ROLE_ID              VARCHAR(50),
   PRIMARY KEY (ID)
);


CREATE UNIQUE INDEX CATE_ROLE_UNIQUE_KEY ON CATEGORY_ROLE_R
(
   CATEGORY_ID,
   ROLE_ID
);

ALTER TABLE CATEGORY_ROLE_R ADD CONSTRAINT FK_REFERENCE_25 FOREIGN KEY (CATEGORY_ID)
      REFERENCES CATEGORY (CATEGORY_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CATEGORY_ROLE_R ADD CONSTRAINT FK_REFERENCE_26 FOREIGN KEY (ROLE_ID)
      REFERENCES ROLE (ROLE_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;

CREATE TABLE CATEGORY_ORG_R
(
   ID                   INT NOT NULL AUTO_INCREMENT,
   CATEGORY_ID          INT,
   ORGANIZATION_ID      INT,
   PRIMARY KEY (ID)
);

CREATE UNIQUE INDEX CATE_ORG_UK ON CATEGORY_ORG_R
(
   CATEGORY_ID,
   ORGANIZATION_ID
);

ALTER TABLE CATEGORY_ORG_R ADD CONSTRAINT FK_REFERENCE_27 FOREIGN KEY (CATEGORY_ID)
      REFERENCES CATEGORY (CATEGORY_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CATEGORY_ORG_R ADD CONSTRAINT FK_REFERENCE_28 FOREIGN KEY (ORGANIZATION_ID)
      REFERENCES ORGANIZATION (ORGANIZATION_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;
      
-- 栏目数据更新
UPDATE category set name='教师专业发展', needPrivilege = 1 where code = 'teacherdev';
UPDATE category set name='选课平台', needPrivilege = 1 where code = 'elRoot';
