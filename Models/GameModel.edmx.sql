
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 06/15/2016 16:05:14
-- Generated from EDMX file: C:\Users\Akhil\Desktop\lab3final\Gamer-master\Gamer-master\Project1\Models\GameModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [game];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Game]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Game];
GO
IF OBJECT_ID(N'[dbo].[GameScore]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GameScore];
GO
IF OBJECT_ID(N'[dbo].[Team]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Team];
GO
IF OBJECT_ID(N'[dbo].[Users]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Users];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Games'
CREATE TABLE [dbo].[Games] (
    [GameID] int IDENTITY(1,1) NOT NULL,
    [GameName] varchar(50)  NOT NULL,
    [Description] varchar(max)  NOT NULL,
    [TotalScore] int  NOT NULL,
    [Spectators] bigint  NOT NULL,
    [WinningTeam] varchar(50)  NOT NULL,
	[DateUpdated] datetime NOT NULL
);
GO

-- Creating table 'GameScores'
CREATE TABLE [dbo].[GameScores] (
    [ScoreID] int  NOT NULL,
    [GameID] varchar(50)  NOT NULL,
    [TeamID] varchar(50)  NOT NULL,
    [TotalScore] int  NOT NULL,
    [MaxScore] int  NOT NULL
);
GO

-- Creating table 'Team1'
CREATE TABLE [dbo].[Team1] (
    [TeamID] int  NOT NULL,
    [Name] varchar(50)  NOT NULL,
    [Description] varchar(50)  NOT NULL,
    [GameID] int  NOT NULL
);
GO

-- Creating table 'Users'
CREATE TABLE [dbo].[Users] (
    [UserID] int IDENTITY(1,1) NOT NULL,
    [FirstName] varchar(50)  NOT NULL,
    [LastName] varchar(50)  NOT NULL,
    [UserName] varchar(50)  NOT NULL,
    [EmailID] varchar(50)  NOT NULL,
    [Password] nvarchar(50)  NOT NULL,
    [Salt] varchar(50)  NOT NULL,
    [TeamID] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [GameID] in table 'Games'
ALTER TABLE [dbo].[Games]
ADD CONSTRAINT [PK_Games]
    PRIMARY KEY CLUSTERED ([GameID] ASC);
GO

-- Creating primary key on [ScoreID] in table 'GameScores'
ALTER TABLE [dbo].[GameScores]
ADD CONSTRAINT [PK_GameScores]
    PRIMARY KEY CLUSTERED ([ScoreID] ASC);
GO

-- Creating primary key on [TeamID] in table 'Team1'
ALTER TABLE [dbo].[Team1]
ADD CONSTRAINT [PK_Team1]
    PRIMARY KEY CLUSTERED ([TeamID] ASC);
GO

-- Creating primary key on [UserID] in table 'Users'
ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [PK_Users]
    PRIMARY KEY CLUSTERED ([UserID] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------