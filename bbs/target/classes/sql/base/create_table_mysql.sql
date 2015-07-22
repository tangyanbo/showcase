CREATE TABLE BASIC_CONFIG
(
   BASIC_CONFIG_ID      VARCHAR(50) NOT NULL,
   NAME                 VARCHAR(50),
   VALUE                VARCHAR(100),
   PRIMARY KEY (BASIC_CONFIG_ID)
);

CREATE TABLE CLASS
(
   CLASS_ID             INT NOT NULL AUTO_INCREMENT,
   GRADE_ID             INT,
   JIE_ID               INT,
   SORT                 INT,
   NAME                 VARCHAR(50),
   STATUS               TINYINT,
   REMARK               VARCHAR(200),
   INSERT_TIME          DATETIME,
   MODIFY_TIME          DATETIME,
   DELETE_TIME          DATETIME,
   BZRGH                INT,
   BZXH                 INT,
   BJRYCH               VARCHAR(40),
   XZ                   VARCHAR(50),
   BJLXM                VARCHAR(2),
   WLLX                 VARCHAR(2),
   BYRQ                 DATETIME,
   SFSSMZSYJXB          VARCHAR(1),
   SYJXMSM              VARCHAR(1),
   PRIMARY KEY (CLASS_ID)
);

ALTER TABLE CLASS COMMENT '班级表';

CREATE TABLE CLASS_COURSE_R
(
   ID                   INT NOT NULL AUTO_INCREMENT,
   CLASS_ID             INT NOT NULL,
   COURSE_ID            INT NOT NULL,
   INSERT_TIME          DATETIME NOT NULL,
   PRIMARY KEY (ID)
);

ALTER TABLE CLASS_COURSE_R COMMENT '班级与课程的关系（如描述任课教师关系时用）';
CREATE UNIQUE INDEX CLASS_COURSE_UK ON CLASS_COURSE_R
(
   CLASS_ID,
   COURSE_ID
);

CREATE TABLE CLASS_HISTORY
(
   CLASS_ID             INT NOT NULL,
   YEAR                 VARCHAR(50) NOT NULL,
   GRADE_ID             INT,
   SORT                 INT,
   NAME                 VARCHAR(50),
   STATUS               TINYINT,
   INSERT_TIME          DATETIME,
   DELETE_TIME          DATETIME,
   REMARK               VARCHAR(200),
   BACKUP_TIME          DATETIME,
   BZRGH                INT,
   BZXH                 INT,
   BJRYCH               VARCHAR(40),
   XZ                   VARCHAR(50),
   BJLXM                VARCHAR(2),
   WLLX                 VARCHAR(2),
   BYRQ                 DATETIME,
   SFSSMZSYJXB          VARCHAR(1),
   SYJXMSM              VARCHAR(1),
   PRIMARY KEY (CLASS_ID, YEAR)
);

CREATE TABLE CODE_ITEMS
(
   VALUE_ID             INT NOT NULL AUTO_INCREMENT,
   CODE_ID              VARCHAR(50),
   VALUE                VARCHAR(50),
   NAME                 VARCHAR(50),
   SORT                 INT,
   PARENT_ID            INT,
   IS_SELECT            INT,
   PRIMARY KEY (VALUE_ID)
);

CREATE TABLE CODE_MAINTENANCE_TYPE
(
   CODE_ID              VARCHAR(50) NOT NULL,
   NAME                 VARCHAR(50),
   DISCRETION           VARCHAR(100),
   CODE_ONLY_READ       VARCHAR(10) DEFAULT '0',
   PRIMARY KEY (CODE_ID)
);

CREATE TABLE COMMUNICATION
(
   COMMUNICATION_ID     INT NOT NULL AUTO_INCREMENT,
   MOBILE_NUMBER1       VARCHAR(20),
   MOBILE_NUMBER2       VARCHAR(20),
   ADDRESS              VARCHAR(100),
   ZIP_CODE             VARCHAR(6),
   EMAIL                VARCHAR(50),
   CALL_SY              VARCHAR(20),
   QQ                   VARCHAR(15),
   PRIMARY KEY (COMMUNICATION_ID)
);

ALTER TABLE COMMUNICATION COMMENT '通讯信息';

CREATE TABLE COURSE
(
   COURSE_ID            INT NOT NULL,
   TEACH_GROUP_ID       INT,
   PARENT               INT,
   NAME                 VARCHAR(50) NOT NULL,
   SORT                 INT,
   DESCRIPTION          VARCHAR(100),
   STATUS               TINYINT NOT NULL,
   INSERT_TIME          DATETIME,
   MODIFY_TIME          DATETIME,
   DELETE_TIME          DATETIME,
   KCM                  VARCHAR(2),
   KCDJM                VARCHAR(1),
   KCBM                 VARCHAR(60),
   KCYQ                 TEXT,
   PRIMARY KEY (COURSE_ID)
);

CREATE TABLE GRADE
(
   GRADE_ID             INT NOT NULL,
   STAGE_ID             INT,
   NAME                 VARCHAR(50) NOT NULL,
   STATUS               TINYINT,
   IS_GRADUATION        TINYINT,
   SORT                 INT,
   INSERT_TIME          DATETIME,
   MODIFY_TIME          DATETIME,
   DELETE_TIME          DATETIME,
   PRIMARY KEY (GRADE_ID)
);

ALTER TABLE GRADE COMMENT '年级表';

CREATE UNIQUE INDEX GRADENAME_UQ ON GRADE
(
   NAME
);

CREATE TABLE GRADE_COURSE_R
(
   ID                   INT NOT NULL AUTO_INCREMENT,
   COURSE_ID            INT NOT NULL,
   GRADE_ID             INT NOT NULL,
   INSERT_TIME          DATETIME NOT NULL,
   PRIMARY KEY (ID)
);

ALTER TABLE GRADE_COURSE_R COMMENT '年级课程关系（描述备课组长等）';

CREATE UNIQUE INDEX GRADE_COURSE_UK ON GRADE_COURSE_R
(
   COURSE_ID,
   GRADE_ID
);

CREATE TABLE JIE
(
   JIE_ID               INT NOT NULL AUTO_INCREMENT,
   NAME                 VARCHAR(50) NOT NULL COMMENT '如98届，99届',
   SORT                 INT,
   INSERT_TIME          DATETIME,
   MODIFY_TIME          DATETIME,
   PRIMARY KEY (JIE_ID)
);

ALTER TABLE JIE COMMENT '届';

CREATE UNIQUE INDEX NAME_UQ ON JIE
(
   NAME
);

CREATE TABLE LOGIN_LOG
(
   LOG_ID               INT NOT NULL,
   ACCOUNT              VARCHAR(50),
   IP                   VARCHAR(50),
   TIME                 DATETIME,
   LOGIN_RESULT         INT,
   PRIMARY KEY (LOG_ID)
);

CREATE TABLE ORGANIZATION
(
   ORGANIZATION_ID      INT NOT NULL AUTO_INCREMENT,
   NAME                 VARCHAR(50) NOT NULL,
   SORT                 INT,
   PARENT               INT,
   INSERT_TIME          DATETIME NOT NULL,
   MODIFY_TIME          DATETIME NOT NULL,
   PRIMARY KEY (ORGANIZATION_ID)
);

ALTER TABLE ORGANIZATION COMMENT '组织（部门）表';

CREATE TABLE REGISTER_DATA
(
   REGISTER_DATE_ID     VARCHAR(50) NOT NULL,
   REGISTER_FILE        LONGBLOB,
   PRIMARY KEY (REGISTER_DATE_ID)
);

CREATE TABLE ROLE
(
   ROLE_ID              VARCHAR(50) NOT NULL,
   CLASSNAME            VARCHAR(50),
   CLASSPK              VARCHAR(50),
   NAME                 VARCHAR(100),
   PRIMARY KEY (ROLE_ID)
);

ALTER TABLE ROLE COMMENT '角色表';

CREATE TABLE SCHOOLTERM
(
   SCHOOLTERM_ID        INT NOT NULL AUTO_INCREMENT,
   NAME                 VARCHAR(50) NOT NULL,
   SCHOOLTERMVALUE      VARCHAR(50) NOT NULL,
   SORT                 INT,
   PRIMARY KEY (SCHOOLTERM_ID)
);

CREATE UNIQUE INDEX SCHOOLTERMVALUE_INDEX_U ON SCHOOLTERM
(
   SCHOOLTERMVALUE
);

CREATE TABLE SCHOOL_INFO
(
   SCHOOL_ID            INT NOT NULL AUTO_INCREMENT,
   NAME                 VARCHAR(50),
   PHONE                VARCHAR(20),
   HEADOFSCHOOL         VARCHAR(50),
   FAX                  VARCHAR(20),
   WEBSITE              VARCHAR(30),
   EMAIL                VARCHAR(100),
   ADDRESS              VARCHAR(100),
   FROPROVINCE          VARCHAR(50),
   ZIP_CODE             VARCHAR(20),
   REGISTER_TIME        DATETIME,
   STATUS               TINYINT,
   DELETE_TIME          DATETIME,
   SCHOOL_SORT          INT,
   IMG                  VARCHAR(200),
   XXYWMC               VARCHAR(50),
   XQR                  VARCHAR(50),
   XXZGBMM              VARCHAR(50),
   FDDBRH               VARCHAR(50),
   FRZSH                VARCHAR(50),
   DWFZRH               VARCHAR(50),
   ZZJGM                VARCHAR(50),
   ZYDZ                 VARCHAR(50),
   LSYG                 VARCHAR(50),
   XXBBM                VARCHAR(2),
   SSZGDWM              VARCHAR(6),
   SZDCXLXM             VARCHAR(50),
   SZDJJSXM             VARCHAR(1),
   SZDMZSX              VARCHAR(1),
   XXXZ                 VARCHAR(50),
   XXRXNL               INT,
   CZXZ                 VARCHAR(50),
   CZRXNL               INT,
   GZXZ                 VARCHAR(50),
   ZJXYYM               VARCHAR(3),
   FJXYYM               VARCHAR(3),
   ZSBJ                 VARCHAR(30),
   PRIMARY KEY (SCHOOL_ID)
);

CREATE UNIQUE INDEX NAME_UQ ON SCHOOL_INFO
(
   NAME
);

CREATE TABLE SCHOOL_STAGE
(
   STAGE_ID             INT NOT NULL,
   NAME                 VARCHAR(50),
   STATUS               TINYINT,
   SORT                 INT,
   INSERT_TIME          DATETIME,
   DELETE_TIME          DATETIME,
   PRIMARY KEY (STAGE_ID)
);

CREATE TABLE TEACH_GROUP
(
   TEACH_GROUP_ID       INT NOT NULL AUTO_INCREMENT,
   NAME                 VARCHAR(100),
   SORT                 INT,
   INSERT_TIME          DATETIME,
   MODIFY_TIME          DATETIME,
   PRIMARY KEY (TEACH_GROUP_ID)
);

ALTER TABLE TEACH_GROUP COMMENT '教研组';

CREATE UNIQUE INDEX NAME_UQ ON TEACH_GROUP
(
   NAME
);

CREATE TABLE USER_CLASS_HISTORY
(
   USER_ID              INT NOT NULL COMMENT '用户id',
   CLASS_ID             INT NOT NULL,
   YEAR                 VARCHAR(50) NOT NULL,
   BACKUP_TIME          DATETIME,
   PRIMARY KEY (USER_ID, CLASS_ID, YEAR)
);

CREATE TABLE USER_COURSE_R
(
   USER_ID              INT NOT NULL,
   COURSE_ID            INT NOT NULL,
   INSERT_TIME          DATETIME NOT NULL,
   PRIMARY KEY (USER_ID, COURSE_ID)
);

CREATE TABLE USER_COURSE_R_HISTORY
(
   ID                   INT NOT NULL AUTO_INCREMENT,
   USER_ID              INT,
   COURSE_ID            INT,
   INSERT_TIME          DATETIME,
   BACKUP_TIME          DATETIME,
   PRIMARY KEY (ID)
);

CREATE TABLE USER_GRADE_R
(
   GRADE_ID             INT NOT NULL,
   USER_ID              INT NOT NULL,
   INSERT_TIME          DATETIME NOT NULL,
   PRIMARY KEY (GRADE_ID, USER_ID)
);

ALTER TABLE USER_GRADE_R COMMENT '用户年级关系表';

CREATE TABLE USER_GRADE_R_HISTORY
(
   ID                   INT NOT NULL AUTO_INCREMENT,
   USER_ID              INT,
   GRADE_ID             INT,
   INSERT_TIME          DATETIME,
   BACKUP_TIME          DATETIME,
   PRIMARY KEY (ID)
);

CREATE TABLE USER_ORG_R
(
   USER_ID              INT NOT NULL,
   ORGANIZATION_ID      INT NOT NULL,
   INSERT_TIME          DATETIME,
   PRIMARY KEY (USER_ID, ORGANIZATION_ID)
);

ALTER TABLE USER_ORG_R COMMENT '用户组织关系表';

CREATE TABLE USER_ORG_R_HISTORY
(
   ID                   INT NOT NULL AUTO_INCREMENT,
   USER_ID              INT,
   ORG_ID               INT,
   INSERT_TIME          DATETIME,
   BACKUP_TIME          DATETIME,
   PRIMARY KEY (ID)
);

CREATE TABLE USER_ROLE_R
(
   USER_ID              INT NOT NULL,
   ROLE_ID              VARCHAR(50) NOT NULL,
   INSERT_TIME          DATETIME,
   PRIMARY KEY (USER_ID, ROLE_ID)
);

ALTER TABLE USER_ROLE_R COMMENT '用户角色关系表';

CREATE TABLE USER_ROLE_R_HISTORY
(
   ID                   INT NOT NULL AUTO_INCREMENT,
   USER_ID              INT,
   ROLE_ID              VARCHAR(50),
   INSERT_TIME          DATETIME,
   BACKUP_TIME          DATETIME,
   PRIMARY KEY (ID)
);

CREATE TABLE USER_SY
(
   USER_ID              INT NOT NULL AUTO_INCREMENT,
   COMMUNICATION_ID     INT,
   CLASS_ID             INT,
   NAME                 VARCHAR(50) NOT NULL,
   SEX                  VARCHAR(16) NOT NULL DEFAULT '0',
   STUDENT_NUMBER       VARCHAR(50),
   ACCOUNT              VARCHAR(50) NOT NULL,
   PASSWORD             VARCHAR(50) NOT NULL,
   IMG                  VARCHAR(200),
   USER_TYPE            TINYINT NOT NULL,
   STATUS               TINYINT NOT NULL,
   OLD_NAME             VARCHAR(50),
   BIRTHDAY             DATETIME,
   ID_NUMBER            VARCHAR(30),
   QUESTION             VARCHAR(50),
   ANSWER               VARCHAR(50),
   PARENT_ID            INT,
   PRIMARY KEY (USER_ID)
);

ALTER TABLE USER_SY COMMENT '用户表';

CREATE UNIQUE INDEX INDEX_ACCOUNT_UQ ON USER_SY
(
   ACCOUNT
);

CREATE INDEX USER_NAME_INDEX ON USER_SY
(
   NAME
);

CREATE TABLE YEAR
(
   YEAR_ID              INT NOT NULL AUTO_INCREMENT,
   NAME                 VARCHAR(50) NOT NULL,
   YEARVALUE            VARCHAR(50) NOT NULL,
   SORT                 INT,
   PRIMARY KEY (YEAR_ID)
);

CREATE UNIQUE INDEX YEAR_VALUE_UNIQUE ON YEAR
(
   YEARVALUE
);

CREATE TABLE CATEGORY
(
   CATEGORY_ID          INT NOT NULL AUTO_INCREMENT,
   PARENT_ID            INT,
   NAME                 VARCHAR(50) NOT NULL,
   APP_ID               VARCHAR(20) NOT NULL,
   CODE                 VARCHAR(50),
   SORT                 INT,
   URL                  VARCHAR(200),
   OPEN_STYLE           VARCHAR(10) COMMENT '_BLANK
            _SELF',
   SHOW_IN_APP          BIT(1),
   SHOW_IN_BASE         BIT(1),
   VERIFY               BIT(1),
   COMMENT              BIT(1),
   needPrivilege		BIT(1),
   PRIMARY KEY (CATEGORY_ID)
);

CREATE TABLE CATEGORY_PRIVILEGE_R
(
   CATEGORY_ID          INT NOT NULL,
   PRIVILEGE_ID         VARCHAR(50) NOT NULL COMMENT 'READ:阅读
            MODIFY:修改
            ADD:添加
            DELETE:删除
            VERIFY:审核
            COMMENT:评论
            REPLY:回复
            ',
   USER_TYPE            INT NOT NULL COMMENT '1：学生
            2：教师
            3：家长',
   PRIMARY KEY (CATEGORY_ID, PRIVILEGE_ID, USER_TYPE)
);

CREATE TABLE PRIVILEGE
(
   PRIVILEGE_ID         VARCHAR(50) NOT NULL COMMENT 'READ:阅读
            MODIFY:修改
            ADD:添加
            DELETE:删除
            VERIFY:审核
            COMMENT:评论
            REPLY:回复
            ',
   NAME                 VARCHAR(50),
   PRIMARY KEY (PRIVILEGE_ID)
);

CREATE TABLE USER_CATEGORY_PRIVILEGE_R
(
   PRIVILEGE_ID         VARCHAR(50) NOT NULL COMMENT 'READ:阅读
            MODIFY:修改
            ADD:添加
            DELETE:删除
            VERIFY:审核
            COMMENT:评论
            REPLY:回复
            ',
   USER_ID              INT NOT NULL,
   CLASS_NAME           VARCHAR(100) NOT NULL,
   CLASS_PK             VARCHAR(50) NOT NULL,
   PRIMARY KEY (PRIVILEGE_ID, USER_ID, CLASS_NAME, CLASS_PK)
);


