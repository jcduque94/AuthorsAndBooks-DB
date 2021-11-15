CREATE DATABASE AuthorsAndBooks
CREATE TABLE [dbo].[Book](
	[Id] [int] NOT NULL,
	[Title] [varchar](50) NOT NULL,
	[Description] [text] NOT NULL,
	[PageCount] [int] NOT NULL,
	[Excerpt] [text] NOT NULL,
	[PublishDate] [datetime] NULL,
 CONSTRAINT [PK_Book] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
))

CREATE TABLE [dbo].[Author](
	[Id] [int] NOT NULL,
	[IdBook] [int] NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Author] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
))

ALTER TABLE Author
ADD FOREIGN KEY (IdBook) REFERENCES Book(Id)