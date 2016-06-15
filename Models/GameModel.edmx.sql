
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 06/14/2016 23:53:07
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
    [TotalScore] float  NOT NULL,
    [Spectators] bigint  NOT NULL,
    [WinningTeam] varchar(50)  NOT NULL
);
GO

-- Creating table 'Teams'
CREATE TABLE [dbo].[Teams] (
    [TeamID] int  NOT NULL,
    [Name] varchar(50)  NOT NULL,
    [UserID] varchar(50)  NOT NULL,
    [Description] varchar(50)  NOT NULL,
    [TotalScore] int  NOT NULL,
    [MaxScore] int  NOT NULL,
    [GameID] int  NOT NULL,
    [GameGameID] int  NOT NULL
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
    [ReEnterPassword] char(50)  NOT NULL,
    [Salt] varchar(50)  NOT NULL,
    [TeamID] int  NOT NULL,
    [TeamTeamID] int  NOT NULL
);
GO

-- Creating table 'GameScores'
CREATE TABLE [dbo].[GameScores] (
    [ScoreID] int  NOT NULL,
    [GameID] varchar(50)  NOT NULL,
    [TeamID] varchar(50)  NOT NULL,
    [TotalScore] int  NOT NULL,
    [MaxScore] int  NOT NULL,
    [GameGameID] int  NOT NULL
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

-- Creating primary key on [TeamID] in table 'Teams'
ALTER TABLE [dbo].[Teams]
ADD CONSTRAINT [PK_Teams]
    PRIMARY KEY CLUSTERED ([TeamID] ASC);
GO

-- Creating primary key on [UserID] in table 'Users'
ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [PK_Users]
    PRIMARY KEY CLUSTERED ([UserID] ASC);
GO

-- Creating primary key on [ScoreID] in table 'GameScores'
ALTER TABLE [dbo].[GameScores]
ADD CONSTRAINT [PK_GameScores]
    PRIMARY KEY CLUSTERED ([ScoreID] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [TeamTeamID] in table 'Users'
ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [FK_TeamUser]
    FOREIGN KEY ([TeamTeamID])
    REFERENCES [dbo].[Teams]
        ([TeamID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TeamUser'
CREATE INDEX [IX_FK_TeamUser]
ON [dbo].[Users]
    ([TeamTeamID]);
GO

-- Creating foreign key on [GameGameID] in table 'GameScores'
ALTER TABLE [dbo].[GameScores]
ADD CONSTRAINT [FK_GameGameScore]
    FOREIGN KEY ([GameGameID])
    REFERENCES [dbo].[Games]
        ([GameID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_GameGameScore'
CREATE INDEX [IX_FK_GameGameScore]
ON [dbo].[GameScores]
    ([GameGameID]);
GO

-- Creating foreign key on [GameGameID] in table 'Teams'
ALTER TABLE [dbo].[Teams]
ADD CONSTRAINT [FK_GameTeam]
    FOREIGN KEY ([GameGameID])
    REFERENCES [dbo].[Games]
        ([GameID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_GameTeam'
CREATE INDEX [IX_FK_GameTeam]
ON [dbo].[Teams]
    ([GameGameID]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------