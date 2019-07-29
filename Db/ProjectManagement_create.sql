-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2019-07-29 10:13:22.469

-- tables
-- Table: JobRole
CREATE TABLE JobRole (
    Id int  NOT NULL IDENTITY,
    Title nvarchar(50)  NOT NULL,
    Description ntext  NULL,
    IsActive bit  NOT NULL,
    CONSTRAINT JobRole_pk PRIMARY KEY  (Id)
);

-- Table: LookupStatus
CREATE TABLE LookupStatus (
    Id int  NOT NULL,
    Title nvarchar(50)  NOT NULL,
    IsProject bit  NOT NULL,
    IsTask bit  NOT NULL,
    IsActive bit  NOT NULL,
    CONSTRAINT LookupStatus_pk PRIMARY KEY  (Id)
);

-- Table: Module
CREATE TABLE Module (
    Id int  NOT NULL,
    Title nvarchar(100)  NOT NULL,
    ProjectId int  NOT NULL,
    TeamLead varchar(50)  NOT NULL,
    IsActive bit  NOT NULL,
    CONSTRAINT Module_pk PRIMARY KEY  (Id)
);

-- Table: Project
CREATE TABLE Project (
    Id int  NOT NULL IDENTITY,
    Name nvarchar(100)  NOT NULL,
    "From" date  NOT NULL,
    "To" date  NULL,
    CreatedBy nvarchar(100)  NOT NULL,
    CreatedDate date  NOT NULL,
    StatusId int  NOT NULL,
    IsActive bit  NOT NULL,
    CONSTRAINT Project_pk PRIMARY KEY  (Id)
);

-- Table: ProjectLog
CREATE TABLE ProjectLog (
    Id int  NOT NULL,
    Content int  NOT NULL,
    CreatedBy int  NOT NULL,
    CreatedDate int  NOT NULL,
    CONSTRAINT ProjectLog_pk PRIMARY KEY  (Id)
);

-- Table: Request
CREATE TABLE Request (
    Id int  NOT NULL,
    Title nvarchar(100)  NOT NULL,
    Content ntext  NOT NULL,
    CreatedBy nvarchar(50)  NOT NULL,
    CreatedDateTime datetime  NOT NULL,
    ApprovalBy nvarchar(50)  NULL,
    ApprovalDateTime datetime  NULL,
    StatusId int  NOT NULL,
    IsActive int  NOT NULL,
    CONSTRAINT Request_pk PRIMARY KEY  (Id)
);

-- Table: RoleInProject
CREATE TABLE RoleInProject (
    ProjectId int  NOT NULL,
    RoleId int  NOT NULL,
    UserName varchar(50)  NOT NULL,
    CONSTRAINT RoleInProject_pk PRIMARY KEY  (ProjectId,RoleId,UserName)
);

-- Table: Task
CREATE TABLE Task (
    Id int  NOT NULL,
    Title nvarchar(100)  NOT NULL,
    CreatedBy varchar(50)  NOT NULL,
    AssignedTo varchar(50)  NOT NULL,
    TaskTypeId int  NOT NULL,
    "From" datetime  NOT NULL,
    "To" datetime  NOT NULL,
    Level int  NOT NULL,
    StatusId int  NOT NULL,
    Description ntext  NULL,
    IsActive bit  NOT NULL,
    CONSTRAINT Task_pk PRIMARY KEY  (Id)
);

-- Table: TaskType
CREATE TABLE TaskType (
    Id int  NOT NULL,
    Title nvarchar(50)  NOT NULL,
    CONSTRAINT TaskType_pk PRIMARY KEY  (Id)
);

-- Table: UserInfo
CREATE TABLE UserInfo (
    UserName varchar(50)  NOT NULL IDENTITY,
    FullName varchar(200)  NOT NULL,
    CurrentJob varchar(200)  NOT NULL,
    Company varchar(200)  NULL,
    CountExperience float  NULL,
    TimeUnit varchar(10)  NULL,
    IsActive bit  NOT NULL,
    CONSTRAINT UserInfo_pk PRIMARY KEY  (UserName)
);

-- End of file.

