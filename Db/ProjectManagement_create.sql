-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2019-07-29 08:10:59.962

-- tables
-- Table: JobRole
CREATE TABLE JobRole (
    Id int  NOT NULL IDENTITY,
    Title nvarchar(50)  NOT NULL,
    Description ntext  NOT NULL,
    CONSTRAINT JobRole_pk PRIMARY KEY  (Id)
);

-- Table: LookupStatus
CREATE TABLE LookupStatus (
    Id int  NOT NULL,
    Title nvarchar(50)  NOT NULL,
    IsProject bit  NOT NULL,
    IsActive bit  NOT NULL,
    CONSTRAINT LookupStatus_pk PRIMARY KEY  (Id)
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

-- Table: UserInfo
CREATE TABLE UserInfo (
    UserName varchar(50)  NOT NULL IDENTITY,
    FullName varchar(200)  NOT NULL,
    CurrentJob varchar(200)  NOT NULL,
    CountExperience float  NOT NULL,
    TimeUnit varchar(10)  NOT NULL,
    IsActive bit  NOT NULL,
    CONSTRAINT UserInfo_pk PRIMARY KEY  (UserName)
);

-- End of file.

