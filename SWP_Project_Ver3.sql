--USE [master]
--GO
--/****** Object:  Database [SWP_Project]    Script Date: 3/28/2024 10:11:05 PM ******/
--CREATE DATABASE [SWP_Project]
-- CONTAINMENT = NONE
-- ON  PRIMARY 
--( NAME = N'SWP_Project', FILENAME = N'E:\New folder\MSSQL16.MSSQLSERVER\MSSQL\DATA\SWP_Project.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
-- LOG ON 
--( NAME = N'SWP_Project_log', FILENAME = N'E:\New folder\MSSQL16.MSSQLSERVER\MSSQL\DATA\SWP_Project_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
-- WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [SWP_Project] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SWP_Project].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SWP_Project] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SWP_Project] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SWP_Project] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SWP_Project] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SWP_Project] SET ARITHABORT OFF 
GO
ALTER DATABASE [SWP_Project] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SWP_Project] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SWP_Project] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SWP_Project] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SWP_Project] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SWP_Project] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SWP_Project] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SWP_Project] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SWP_Project] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SWP_Project] SET  ENABLE_BROKER 
GO
ALTER DATABASE [SWP_Project] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SWP_Project] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SWP_Project] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SWP_Project] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SWP_Project] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SWP_Project] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SWP_Project] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SWP_Project] SET RECOVERY FULL 
GO
ALTER DATABASE [SWP_Project] SET  MULTI_USER 
GO
ALTER DATABASE [SWP_Project] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SWP_Project] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SWP_Project] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SWP_Project] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SWP_Project] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SWP_Project] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'SWP_Project', N'ON'
GO
ALTER DATABASE [SWP_Project] SET QUERY_STORE = ON
GO
ALTER DATABASE [SWP_Project] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [SWP_Project]
GO
/****** Object:  Table [dbo].[AuthorizeMap]    Script Date: 3/28/2024 10:11:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AuthorizeMap](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[path] [nvarchar](255) NOT NULL,
	[user] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Conversation]    Script Date: 3/28/2024 10:11:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Conversation](
	[conversationID] [int] IDENTITY(1,1) NOT NULL,
	[MentorID] [int] NULL,
	[MenteeID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[conversationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CV]    Script Date: 3/28/2024 10:11:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CV](
	[CvID] [int] IDENTITY(1,1) NOT NULL,
	[ProfessionIntroduction] [nvarchar](255) NULL,
	[ServiceDescription] [nvarchar](255) NULL,
	[CashPerSlot] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CvID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Follow]    Script Date: 3/28/2024 10:11:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Follow](
	[FollowID] [int] IDENTITY(1,1) NOT NULL,
	[MentorID] [int] NULL,
	[MenteeID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[FollowID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FollowRequest]    Script Date: 3/28/2024 10:11:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FollowRequest](
	[RequestID] [int] IDENTITY(1,1) NOT NULL,
	[RequestTime] [date] NULL,
	[DeadLineTime] [date] NULL,
	[Subject] [nvarchar](255) NULL,
	[Content] [nvarchar](255) NULL,
	[Status] [nvarchar](20) NULL,
	[MentorID] [int] NULL,
	[SenderID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[RequestID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mentee]    Script Date: 3/28/2024 10:11:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mentee](
	[UserID] [int] NULL,
	[MenteeStatus] [nvarchar](10) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mentor]    Script Date: 3/28/2024 10:11:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mentor](
	[UserID] [int] NULL,
	[Description] [nvarchar](255) NULL,
	[CvID] [int] NULL,
	[Achivement] [nvarchar](255) NULL,
	[MentorStatus] [nvarchar](10) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MentorSkills]    Script Date: 3/28/2024 10:11:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MentorSkills](
	[SkillID] [int] NULL,
	[MentorID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Message]    Script Date: 3/28/2024 10:11:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Message](
	[MessageID] [int] IDENTITY(1,1) NOT NULL,
	[conversationID] [int] NULL,
	[SenderID] [int] NULL,
	[sentAt] [datetime] NULL,
	[msgContent] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[MessageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 3/28/2024 10:11:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Status] [nvarchar](255) NULL,
	[Balance] [int] NULL,
	[UserID] [int] NULL,
	[ReceiverID] [int] NULL,
	[Time] [datetime] NULL,
	[RequestID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rating]    Script Date: 3/28/2024 10:11:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rating](
	[MentorID] [int] NULL,
	[MenteeID] [int] NULL,
	[noStar] [int] NULL,
	[ratingComment] [ntext] NULL,
	[rateTime] [datetime] NOT NULL,
	[RequestID] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RejectRequest]    Script Date: 3/28/2024 10:11:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RejectRequest](
	[RequestID] [int] NULL,
	[Reason] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Report]    Script Date: 3/28/2024 10:11:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Report](
	[ReportContent] [text] NULL,
	[reportTime] [datetime] NULL,
	[UserID] [int] NULL,
	[Status] [nchar](10) NULL,
	[ReportID] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ReportID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Request]    Script Date: 3/28/2024 10:11:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Request](
	[RequestID] [int] IDENTITY(1,1) NOT NULL,
	[SenderID] [int] NULL,
	[UserID] [int] NULL,
	[RequestReason] [nvarchar](255) NULL,
	[RequestStatus] [nvarchar](255) NULL,
	[RequestTime] [datetime] NOT NULL,
	[DeadlineTime] [datetime] NOT NULL,
	[RequestSubject] [nvarchar](255) NULL,
	[SkillID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[RequestID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RequestSlot]    Script Date: 3/28/2024 10:11:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RequestSlot](
	[RequestID] [int] NULL,
	[SlotID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RequestStatus]    Script Date: 3/28/2024 10:11:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RequestStatus](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[status] [nvarchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 3/28/2024 10:11:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[roleName] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Schedule]    Script Date: 3/28/2024 10:11:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Schedule](
	[MentorID] [int] NULL,
	[Year] [int] NULL,
	[Week] [int] NULL,
	[ScheduleID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK__Schedule__9C8A5B69F7CD8C26] PRIMARY KEY CLUSTERED 
(
	[ScheduleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Skills]    Script Date: 3/28/2024 10:11:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Skills](
	[SkillID] [int] IDENTITY(1,1) NOT NULL,
	[SkillName] [nvarchar](255) NULL,
	[enable] [bit] NOT NULL,
	[Skilldescription] [ntext] NOT NULL,
	[Imageskill] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SkillID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slot]    Script Date: 3/28/2024 10:11:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slot](
	[SlotID] [int] IDENTITY(1,1) NOT NULL,
	[Time] [float] NULL,
	[startAt] [datetime] NULL,
	[Link] [nchar](50) NULL,
	[ScheduleID] [int] NULL,
	[SkillID] [int] NULL,
	[MenteeID] [int] NULL,
	[Status] [nchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SlotID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transaction]    Script Date: 3/28/2024 10:11:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transaction](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[Balance] [int] NULL,
	[Type] [nvarchar](1) NULL,
	[Content] [nvarchar](255) NULL,
	[Time] [date] NULL,
	[Status] [nvarchar](20) NULL,
	[TransCode] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 3/28/2024 10:11:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[sex] [bit] NULL,
	[activeStatus] [bit] NULL,
	[username] [varchar](255) NULL,
	[password] [varchar](255) NULL,
	[dob] [date] NULL,
	[email] [varchar](255) NULL,
	[phoneNumber] [varchar](10) NULL,
	[wallet] [int] NULL,
	[address] [nvarchar](255) NULL,
	[RoleID] [int] NULL,
	[isValidate] [bit] NULL,
	[Avatar] [nvarchar](255) NULL,
	[fullname] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserBank]    Script Date: 3/28/2024 10:11:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserBank](
	[UserID] [int] NULL,
	[BankName] [nvarchar](255) NULL,
	[BankType] [nvarchar](100) NULL,
	[BankNo] [nvarchar](100) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AuthorizeMap] ON 

INSERT [dbo].[AuthorizeMap] ([id], [path], [user]) VALUES (1, N'/admin/authorization', N'admin')
INSERT [dbo].[AuthorizeMap] ([id], [path], [user]) VALUES (2, N'/admin/request', N'admin, manager')
INSERT [dbo].[AuthorizeMap] ([id], [path], [user]) VALUES (3, N'/admin/skill', N'admin')
INSERT [dbo].[AuthorizeMap] ([id], [path], [user]) VALUES (4, N'/admin/mentor', N'admin')
INSERT [dbo].[AuthorizeMap] ([id], [path], [user]) VALUES (5, N'/email', N'all user')
INSERT [dbo].[AuthorizeMap] ([id], [path], [user]) VALUES (6, N'/forgot', N'guest')
INSERT [dbo].[AuthorizeMap] ([id], [path], [user]) VALUES (7, N'/index', N'guest')
INSERT [dbo].[AuthorizeMap] ([id], [path], [user]) VALUES (8, N'/login', N'guest')
INSERT [dbo].[AuthorizeMap] ([id], [path], [user]) VALUES (9, N'/logout', N'guest')
INSERT [dbo].[AuthorizeMap] ([id], [path], [user]) VALUES (10, N'/register', N'guest')
INSERT [dbo].[AuthorizeMap] ([id], [path], [user]) VALUES (11, N'/profile', N'all user')
INSERT [dbo].[AuthorizeMap] ([id], [path], [user]) VALUES (12, N'/setting', N'all user')
INSERT [dbo].[AuthorizeMap] ([id], [path], [user]) VALUES (13, N'/request', N'mentee, mentor')
INSERT [dbo].[AuthorizeMap] ([id], [path], [user]) VALUES (14, N'/cv', N'mentor')
INSERT [dbo].[AuthorizeMap] ([id], [path], [user]) VALUES (15, N'/follow', N'mentor')
INSERT [dbo].[AuthorizeMap] ([id], [path], [user]) VALUES (16, N'/schedule', N'mentor, mentee')
INSERT [dbo].[AuthorizeMap] ([id], [path], [user]) VALUES (17, N'/admin/mentee', N'admin')
INSERT [dbo].[AuthorizeMap] ([id], [path], [user]) VALUES (18, N'/statistic', N'mentee, mentor')
INSERT [dbo].[AuthorizeMap] ([id], [path], [user]) VALUES (19, N'/admin/report', N'admin, manager')
INSERT [dbo].[AuthorizeMap] ([id], [path], [user]) VALUES (20, N'/bank', N'mentor, mentee')
INSERT [dbo].[AuthorizeMap] ([id], [path], [user]) VALUES (21, N'/wallet', N'mentor, mentee')
INSERT [dbo].[AuthorizeMap] ([id], [path], [user]) VALUES (22, N'/admin/cv', N'admin, manager')
INSERT [dbo].[AuthorizeMap] ([id], [path], [user]) VALUES (23, N'/transaction', N'mentor, mentee')
INSERT [dbo].[AuthorizeMap] ([id], [path], [user]) VALUES (24, N'/admin/transaction', N'admin, manager')
INSERT [dbo].[AuthorizeMap] ([id], [path], [user]) VALUES (25, N'/admin/withdraw', N'admin, manager')
INSERT [dbo].[AuthorizeMap] ([id], [path], [user]) VALUES (26, N'/chat', N'all user')
SET IDENTITY_INSERT [dbo].[AuthorizeMap] OFF
GO
SET IDENTITY_INSERT [dbo].[Conversation] ON 

INSERT [dbo].[Conversation] ([conversationID], [MentorID], [MenteeID]) VALUES (1, 6, 3)
SET IDENTITY_INSERT [dbo].[Conversation] OFF
GO
SET IDENTITY_INSERT [dbo].[CV] ON 

INSERT [dbo].[CV] ([CvID], [ProfessionIntroduction], [ServiceDescription], [CashPerSlot]) VALUES (1, N'Có kinh nghiệm 5 năm trong việc dạy học tại trường đại học X.', N'Vui vẻ nhiệt tình giải đáp mọi câu hỏi của bạn.', 500000)
INSERT [dbo].[CV] ([CvID], [ProfessionIntroduction], [ServiceDescription], [CashPerSlot]) VALUES (4, N'Tôi là một Mentor và chuyên gia trong lĩnh vực ngôn ngữ lập trình, với sự chú tâm đặc biệt đến việc phát triển kỹ năng và hiểu biết của học viên.', N'Hỗ trợ cá nhân cho học viên với nhiều cấp độ kỹ năng, từ người mới học đến những người muốn nâng cao.', 50000)
INSERT [dbo].[CV] ([CvID], [ProfessionIntroduction], [ServiceDescription], [CashPerSlot]) VALUES (5, N'Lập trình viên chuyên nghiệp với khả năng giải quyết vấn đề và sáng tạo trong việc phát triển ứng dụng.', N'Hướng Dẫn Cá Nhân:  Hỗ trợ cá nhân cho học viên ở mọi cấp độ, từ người mới học đến những người muốn nâng cao.', 50000)
INSERT [dbo].[CV] ([CvID], [ProfessionIntroduction], [ServiceDescription], [CashPerSlot]) VALUES (6, N'Freelancer tập trung vào xây dựng giao diện người dùng đẹp và chức năng hiệu quả.', N'Đưa ra sự hỗ trợ đặc biệt cho nhóm và dự án, giúp họ áp dụng kiến thức vào tình huống thực tế.', 50000)
INSERT [dbo].[CV] ([CvID], [ProfessionIntroduction], [ServiceDescription], [CashPerSlot]) VALUES (7, N'Chuyên gia tối ưu hóa công cụ tìm kiếm, tăng cường hiệu suất trang web.', N'Khóa học đặc biệt về ReactJS, giúp học viên xây dựng ứng dụng web hiệu quả.', 50000)
INSERT [dbo].[CV] ([CvID], [ProfessionIntroduction], [ServiceDescription], [CashPerSlot]) VALUES (8, N'Chuyên gia bảo mật mạng nắm vững kỹ thuật bảo mật để bảo vệ thông tin.', N'Cung cấp dịch vụ tư vấn SEO để cải thiện thứ hạng trang web và tăng lượng truy cập.', 50000)
INSERT [dbo].[CV] ([CvID], [ProfessionIntroduction], [ServiceDescription], [CashPerSlot]) VALUES (9, N'Chuyên gia tập trung vào việc tối ưu hóa quy trình phát triển và triển khai liên tục.', N'Cung cấp hướng dẫn cá nhân cho việc phát triển ứng dụng web sử dụng các công nghệ mới nhất.', 50000)
INSERT [dbo].[CV] ([CvID], [ProfessionIntroduction], [ServiceDescription], [CashPerSlot]) VALUES (11, N'Chủ doanh nghiệp trong lĩnh vực trò chơi điện tử, chú trọng vào sáng tạo và trải nghiệm người chơi.', N'Hỗ trợ tổ chức triển khai liên tục và tối ưu hóa quy trình DevOps.', 50000)
INSERT [dbo].[CV] ([CvID], [ProfessionIntroduction], [ServiceDescription], [CashPerSlot]) VALUES (12, N'Chuyên gia tạo ra trải nghiệm người dùng tốt nhất thông qua thiết kế giao diện và trải nghiệm người dùng.', N'Tư vấn về thiết kế giao diện và trải nghiệm người dùng để tối ưu hóa sản phẩm.', 50000)
INSERT [dbo].[CV] ([CvID], [ProfessionIntroduction], [ServiceDescription], [CashPerSlot]) VALUES (13, N'Lập trình viên chuyên nghiệp với kinh nghiệm sâu rộng về phát triển ứng dụng doanh nghiệp.', N'Giảng dạy về phát triển ứng dụng Java Enterprise và quản lý dự án.', 50000)
INSERT [dbo].[CV] ([CvID], [ProfessionIntroduction], [ServiceDescription], [CashPerSlot]) VALUES (14, N'Chủ doanh nghiệp sử dụng chiến lược kỹ thuật số để phát triển kinh doanh trực tuyến.', N'Cung cấp tư vấn về thiết kế trò chơi và phát triển trải nghiệm người chơi.', 50000)
INSERT [dbo].[CV] ([CvID], [ProfessionIntroduction], [ServiceDescription], [CashPerSlot]) VALUES (15, N'Chuyên viên phân tích dữ liệu với khả năng nắm vững SQL và BI, hỗ trợ quyết định dựa trên số liệu.', N'Hỗ trợ việc tự động hóa công việc thông qua việc sử dụng Python.', 50000)
INSERT [dbo].[CV] ([CvID], [ProfessionIntroduction], [ServiceDescription], [CashPerSlot]) VALUES (16, N'Sinh viên nghiên cứu về an toàn thông tin, tập trung vào bảo mật mạng và phần mềm.', N'Tư vấn về biện pháp an toàn thông tin để bảo vệ dữ liệu và hệ thống.', 50000)
SET IDENTITY_INSERT [dbo].[CV] OFF
GO
SET IDENTITY_INSERT [dbo].[Follow] ON 

INSERT [dbo].[Follow] ([FollowID], [MentorID], [MenteeID]) VALUES (1, 5, 3)
SET IDENTITY_INSERT [dbo].[Follow] OFF
GO
INSERT [dbo].[Mentee] ([UserID], [MenteeStatus]) VALUES (3, N'Active')
INSERT [dbo].[Mentee] ([UserID], [MenteeStatus]) VALUES (4, N'Active')
GO
INSERT [dbo].[Mentor] ([UserID], [Description], [CvID], [Achivement], [MentorStatus]) VALUES (5, N'Đẹp trai nhiều tiền', 1, N'Đã hỗ trợ học tập được 15 học viên.', N'Accepted')
INSERT [dbo].[Mentor] ([UserID], [Description], [CvID], [Achivement], [MentorStatus]) VALUES (6, N'Tôi là một chuyên gia về ngôn ngữ lập trình với hơn 5 năm kinh nghiệm trong việc phát triển và giảng dạy. Sự đam mê của tôi nằm ở việc chia sẻ kiến thức và giúp đỡ người khác phát triển kỹ năng lập trình của họ. ', 4, N'Chứng chỉ và Bằng cấp:  Bằng Cử nhân Khoa học Máy tính tại Đại học ABC. Chứng chỉ Java Developer từ Trung tâm Đào tạo CNTT XYZ.', N'Accepted')
INSERT [dbo].[Mentor] ([UserID], [Description], [CvID], [Achivement], [MentorStatus]) VALUES (7, N'Chuyên gia lập trình với niềm đam mê về sự sáng tạo và giải quyết vấn đề.', 5, N'Phát triển và triển khai thành công trang web cá nhân với tính năng blog và portfolio.', N'Accepted')
INSERT [dbo].[Mentor] ([UserID], [Description], [CvID], [Achivement], [MentorStatus]) VALUES (8, N'Sinh viên Công nghệ Thông tin yêu thích khám phá các công nghệ mới và có tinh thần học hỏi.', 6, N'Đạt giải Nhất tại cuộc thi Hackathon với ứng dụng giải quyết vấn đề xã hội.', N'Accepted')
INSERT [dbo].[Mentor] ([UserID], [Description], [CvID], [Achivement], [MentorStatus]) VALUES (9, N'Freelancer chuyên về phát triển web, tập trung vào việc xây dựng giao diện người dùng thân thiện.', 7, N'Hoàn thành khóa học ReactJS và đạt chứng chỉ từ một trung tâm đào tạo nổi tiếng.', N'Accepted')
INSERT [dbo].[Mentor] ([UserID], [Description], [CvID], [Achivement], [MentorStatus]) VALUES (10, N'Người sáng tạo ứng dụng di động, tập trung vào trải nghiệm người dùng và hiệu suất ứng dụng.', 8, N'Phát triển ứng dụng di động đầu tiên trên cửa hàng Google Play với hàng nghìn tải xuống.', N'Accepted')
INSERT [dbo].[Mentor] ([UserID], [Description], [CvID], [Achivement], [MentorStatus]) VALUES (12, N'Sinh viên năm cuối Công nghệ Thông tin, chuyên sâu về phát triển ứng dụng di động và có đam mê về trí tuệ nhân tạo.', 9, N'Phát triển thành công trang web thương mại điện tử với tính năng thanh toán an toàn và giao diện thân thiện.', N'Accepted')
INSERT [dbo].[Mentor] ([UserID], [Description], [CvID], [Achivement], [MentorStatus]) VALUES (17, N'Người sáng tạo trò chơi điện tử, chuyên về phát triển trò chơi di động và trải nghiệm người chơi.', 15, N'Phát triển ứng dụng di động giúp theo dõi sức khỏe cá nhân, nhận được sự đánh giá cao từ người dùng.', N'Accepted')
INSERT [dbo].[Mentor] ([UserID], [Description], [CvID], [Achivement], [MentorStatus]) VALUES (13, N'Chuyên gia DevOps, tập trung vào việc tối ưu hóa quy trình phát triển và triển khai liên tục.', 11, N'Đóng góp vào dự án mã nguồn mở về phần mềm quản lý dự án, được đánh giá cao về đóng góp.', N'Accepted')
INSERT [dbo].[Mentor] ([UserID], [Description], [CvID], [Achivement], [MentorStatus]) VALUES (14, N'Lập trình viên Python đam mê giải quyết vấn đề, có kinh nghiệm xây dựng ứng dụng web và tự động hóa công việc.', 12, N'Giành giải Nhì tại cuộc thi Hackathon với ứng dụng sử dụng trí tuệ nhân tạo giúp giải quyết vấn đề xã hội.', N'Accepted')
INSERT [dbo].[Mentor] ([UserID], [Description], [CvID], [Achivement], [MentorStatus]) VALUES (18, N'Chuyên viên UX/UI Design, tập trung vào việc tạo ra trải nghiệm người dùng tốt nhất.', 16, N'Thực tập tại bộ phận thiết kế của Google, có cơ hội làm việc với các chuyên gia thiết kế hàng đầu.', N'Accepted')
INSERT [dbo].[Mentor] ([UserID], [Description], [CvID], [Achivement], [MentorStatus]) VALUES (15, N'Học viên nghiên cứu khoa học máy tính, chuyên về học máy và xử lý ngôn ngữ tự nhiên.', 13, N'Đạt giải Nhất tại cuộc thi CodeJam với giải thuật hiệu quả và mã nguồn sáng tạo.', N'Accepted')
INSERT [dbo].[Mentor] ([UserID], [Description], [CvID], [Achivement], [MentorStatus]) VALUES (16, N'Chủ doanh nghiệp về thương mại điện tử, sử dụng chiến lược kỹ thuật số để phát triển kinh doanh.', 14, N'Tình nguyện giảng dạy lập trình cho học sinh trung học, tạo cơ hội cho họ khám phá lập trình.', N'Accepted')
GO
INSERT [dbo].[MentorSkills] ([SkillID], [MentorID]) VALUES (1, 5)
INSERT [dbo].[MentorSkills] ([SkillID], [MentorID]) VALUES (2, 5)
INSERT [dbo].[MentorSkills] ([SkillID], [MentorID]) VALUES (2, 6)
INSERT [dbo].[MentorSkills] ([SkillID], [MentorID]) VALUES (3, 6)
INSERT [dbo].[MentorSkills] ([SkillID], [MentorID]) VALUES (5, 6)
INSERT [dbo].[MentorSkills] ([SkillID], [MentorID]) VALUES (11, 8)
INSERT [dbo].[MentorSkills] ([SkillID], [MentorID]) VALUES (12, 8)
INSERT [dbo].[MentorSkills] ([SkillID], [MentorID]) VALUES (13, 8)
INSERT [dbo].[MentorSkills] ([SkillID], [MentorID]) VALUES (8, 9)
INSERT [dbo].[MentorSkills] ([SkillID], [MentorID]) VALUES (9, 9)
INSERT [dbo].[MentorSkills] ([SkillID], [MentorID]) VALUES (10, 9)
INSERT [dbo].[MentorSkills] ([SkillID], [MentorID]) VALUES (7, 14)
INSERT [dbo].[MentorSkills] ([SkillID], [MentorID]) VALUES (8, 14)
INSERT [dbo].[MentorSkills] ([SkillID], [MentorID]) VALUES (9, 14)
INSERT [dbo].[MentorSkills] ([SkillID], [MentorID]) VALUES (12, 15)
INSERT [dbo].[MentorSkills] ([SkillID], [MentorID]) VALUES (13, 15)
INSERT [dbo].[MentorSkills] ([SkillID], [MentorID]) VALUES (14, 15)
INSERT [dbo].[MentorSkills] ([SkillID], [MentorID]) VALUES (9, 16)
INSERT [dbo].[MentorSkills] ([SkillID], [MentorID]) VALUES (11, 16)
INSERT [dbo].[MentorSkills] ([SkillID], [MentorID]) VALUES (12, 16)
INSERT [dbo].[MentorSkills] ([SkillID], [MentorID]) VALUES (6, 18)
INSERT [dbo].[MentorSkills] ([SkillID], [MentorID]) VALUES (7, 18)
INSERT [dbo].[MentorSkills] ([SkillID], [MentorID]) VALUES (8, 18)
INSERT [dbo].[MentorSkills] ([SkillID], [MentorID]) VALUES (9, 18)
INSERT [dbo].[MentorSkills] ([SkillID], [MentorID]) VALUES (1, 7)
INSERT [dbo].[MentorSkills] ([SkillID], [MentorID]) VALUES (5, 7)
INSERT [dbo].[MentorSkills] ([SkillID], [MentorID]) VALUES (14, 7)
INSERT [dbo].[MentorSkills] ([SkillID], [MentorID]) VALUES (15, 7)
INSERT [dbo].[MentorSkills] ([SkillID], [MentorID]) VALUES (2, 10)
INSERT [dbo].[MentorSkills] ([SkillID], [MentorID]) VALUES (7, 10)
INSERT [dbo].[MentorSkills] ([SkillID], [MentorID]) VALUES (9, 10)
INSERT [dbo].[MentorSkills] ([SkillID], [MentorID]) VALUES (10, 10)
INSERT [dbo].[MentorSkills] ([SkillID], [MentorID]) VALUES (4, 12)
INSERT [dbo].[MentorSkills] ([SkillID], [MentorID]) VALUES (5, 12)
INSERT [dbo].[MentorSkills] ([SkillID], [MentorID]) VALUES (6, 12)
INSERT [dbo].[MentorSkills] ([SkillID], [MentorID]) VALUES (6, 13)
INSERT [dbo].[MentorSkills] ([SkillID], [MentorID]) VALUES (7, 13)
INSERT [dbo].[MentorSkills] ([SkillID], [MentorID]) VALUES (11, 13)
INSERT [dbo].[MentorSkills] ([SkillID], [MentorID]) VALUES (12, 13)
INSERT [dbo].[MentorSkills] ([SkillID], [MentorID]) VALUES (1, 17)
INSERT [dbo].[MentorSkills] ([SkillID], [MentorID]) VALUES (3, 17)
INSERT [dbo].[MentorSkills] ([SkillID], [MentorID]) VALUES (14, 17)
INSERT [dbo].[MentorSkills] ([SkillID], [MentorID]) VALUES (15, 17)
GO
SET IDENTITY_INSERT [dbo].[Message] ON 

INSERT [dbo].[Message] ([MessageID], [conversationID], [SenderID], [sentAt], [msgContent]) VALUES (1, 1, 3, CAST(N'2024-01-01T01:02:39.063' AS DateTime), N'hello anh, anh dạy được ngôn ngữ C không ạ?')
INSERT [dbo].[Message] ([MessageID], [conversationID], [SenderID], [sentAt], [msgContent]) VALUES (2, 1, 6, CAST(N'2024-01-01T01:03:35.703' AS DateTime), N'Có đó em, em tạo request rồi chọn thời gian học nhé.')
SET IDENTITY_INSERT [dbo].[Message] OFF
GO
SET IDENTITY_INSERT [dbo].[Payment] ON 

INSERT [dbo].[Payment] ([ID], [Status], [Balance], [UserID], [ReceiverID], [Time], [RequestID]) VALUES (1, N'Received', 150000, 3, 6, CAST(N'2024-03-28T15:13:48.410' AS DateTime), 1)
INSERT [dbo].[Payment] ([ID], [Status], [Balance], [UserID], [ReceiverID], [Time], [RequestID]) VALUES (2, N'Received', 100000, 4, 6, CAST(N'2024-02-12T15:37:19.647' AS DateTime), 2)
INSERT [dbo].[Payment] ([ID], [Status], [Balance], [UserID], [ReceiverID], [Time], [RequestID]) VALUES (3, N'Received', 150000, 3, 15, CAST(N'2024-01-03T21:50:03.077' AS DateTime), 3)
SET IDENTITY_INSERT [dbo].[Payment] OFF
GO
INSERT [dbo].[Rating] ([MentorID], [MenteeID], [noStar], [ratingComment], [rateTime], [RequestID]) VALUES (6, 3, 5, N'Rất bổ ích', CAST(N'2024-03-28T15:18:48.563' AS DateTime), 1)
INSERT [dbo].[Rating] ([MentorID], [MenteeID], [noStar], [ratingComment], [rateTime], [RequestID]) VALUES (15, 3, 5, N'Tuyệt vời, chị này 10/10', CAST(N'2024-01-19T21:52:27.503' AS DateTime), 3)
GO
SET IDENTITY_INSERT [dbo].[Request] ON 

INSERT [dbo].[Request] ([RequestID], [SenderID], [UserID], [RequestReason], [RequestStatus], [RequestTime], [DeadlineTime], [RequestSubject], [SkillID]) VALUES (1, 3, 6, N'Em là Hồng, em muốn đăng kí học ngôn ngữ C', N'Done', CAST(N'2024-01-01T01:04:51.617' AS DateTime), CAST(N'2024-01-08T01:04:00.000' AS DateTime), N'học C', 3)
INSERT [dbo].[Request] ([RequestID], [SenderID], [UserID], [RequestReason], [RequestStatus], [RequestTime], [DeadlineTime], [RequestSubject], [SkillID]) VALUES (2, 4, 6, N'Anh cho em đăng kí học java với', N'Done', CAST(N'2024-02-17T13:29:53.180' AS DateTime), CAST(N'2024-02-20T13:29:00.000' AS DateTime), N'học Java', 2)
INSERT [dbo].[Request] ([RequestID], [SenderID], [UserID], [RequestReason], [RequestStatus], [RequestTime], [DeadlineTime], [RequestSubject], [SkillID]) VALUES (3, 3, 15, N'Em cần tìm gia sư hỏi đáp về MySQL', N'Done', CAST(N'2024-01-03T21:49:24.890' AS DateTime), CAST(N'2024-01-04T21:48:00.000' AS DateTime), N'Thuê gia sư', 12)
SET IDENTITY_INSERT [dbo].[Request] OFF
GO
INSERT [dbo].[RequestSlot] ([RequestID], [SlotID]) VALUES (1, 1)
INSERT [dbo].[RequestSlot] ([RequestID], [SlotID]) VALUES (1, 2)
INSERT [dbo].[RequestSlot] ([RequestID], [SlotID]) VALUES (1, 3)
INSERT [dbo].[RequestSlot] ([RequestID], [SlotID]) VALUES (2, 4)
INSERT [dbo].[RequestSlot] ([RequestID], [SlotID]) VALUES (2, 5)
INSERT [dbo].[RequestSlot] ([RequestID], [SlotID]) VALUES (3, 37)
INSERT [dbo].[RequestSlot] ([RequestID], [SlotID]) VALUES (3, 38)
INSERT [dbo].[RequestSlot] ([RequestID], [SlotID]) VALUES (3, 39)
GO
SET IDENTITY_INSERT [dbo].[RequestStatus] ON 

INSERT [dbo].[RequestStatus] ([id], [status]) VALUES (1, N'Open')
INSERT [dbo].[RequestStatus] ([id], [status]) VALUES (2, N'Close')
INSERT [dbo].[RequestStatus] ([id], [status]) VALUES (3, N'Processing')
INSERT [dbo].[RequestStatus] ([id], [status]) VALUES (4, N'Done')
INSERT [dbo].[RequestStatus] ([id], [status]) VALUES (5, N'Reject')
INSERT [dbo].[RequestStatus] ([id], [status]) VALUES (6, N'Accept')
INSERT [dbo].[RequestStatus] ([id], [status]) VALUES (11, N'Reopen')
SET IDENTITY_INSERT [dbo].[RequestStatus] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([RoleID], [roleName]) VALUES (1, N'Admin')
INSERT [dbo].[Role] ([RoleID], [roleName]) VALUES (2, N'Manager')
INSERT [dbo].[Role] ([RoleID], [roleName]) VALUES (3, N'Mentor')
INSERT [dbo].[Role] ([RoleID], [roleName]) VALUES (4, N'Mentee')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Schedule] ON 

INSERT [dbo].[Schedule] ([MentorID], [Year], [Week], [ScheduleID]) VALUES (6, 2024, 2, 1)
INSERT [dbo].[Schedule] ([MentorID], [Year], [Week], [ScheduleID]) VALUES (6, 2024, 8, 2)
INSERT [dbo].[Schedule] ([MentorID], [Year], [Week], [ScheduleID]) VALUES (5, 2024, 13, 3)
INSERT [dbo].[Schedule] ([MentorID], [Year], [Week], [ScheduleID]) VALUES (6, 2024, 13, 4)
INSERT [dbo].[Schedule] ([MentorID], [Year], [Week], [ScheduleID]) VALUES (6, 2024, 14, 5)
INSERT [dbo].[Schedule] ([MentorID], [Year], [Week], [ScheduleID]) VALUES (7, 2024, 13, 6)
INSERT [dbo].[Schedule] ([MentorID], [Year], [Week], [ScheduleID]) VALUES (7, 2024, 14, 7)
INSERT [dbo].[Schedule] ([MentorID], [Year], [Week], [ScheduleID]) VALUES (8, 2024, 14, 8)
INSERT [dbo].[Schedule] ([MentorID], [Year], [Week], [ScheduleID]) VALUES (9, 2024, 13, 9)
INSERT [dbo].[Schedule] ([MentorID], [Year], [Week], [ScheduleID]) VALUES (10, 2024, 13, 10)
INSERT [dbo].[Schedule] ([MentorID], [Year], [Week], [ScheduleID]) VALUES (12, 2024, 14, 11)
INSERT [dbo].[Schedule] ([MentorID], [Year], [Week], [ScheduleID]) VALUES (13, 2024, 13, 12)
INSERT [dbo].[Schedule] ([MentorID], [Year], [Week], [ScheduleID]) VALUES (14, 2024, 13, 13)
INSERT [dbo].[Schedule] ([MentorID], [Year], [Week], [ScheduleID]) VALUES (15, 2024, 2, 14)
INSERT [dbo].[Schedule] ([MentorID], [Year], [Week], [ScheduleID]) VALUES (15, 2024, 3, 15)
INSERT [dbo].[Schedule] ([MentorID], [Year], [Week], [ScheduleID]) VALUES (16, 2024, 4, 16)
INSERT [dbo].[Schedule] ([MentorID], [Year], [Week], [ScheduleID]) VALUES (16, 2024, 5, 17)
INSERT [dbo].[Schedule] ([MentorID], [Year], [Week], [ScheduleID]) VALUES (16, 2024, 18, 18)
INSERT [dbo].[Schedule] ([MentorID], [Year], [Week], [ScheduleID]) VALUES (17, 2024, 12, 19)
INSERT [dbo].[Schedule] ([MentorID], [Year], [Week], [ScheduleID]) VALUES (17, 2024, 13, 20)
INSERT [dbo].[Schedule] ([MentorID], [Year], [Week], [ScheduleID]) VALUES (18, 2024, 13, 21)
INSERT [dbo].[Schedule] ([MentorID], [Year], [Week], [ScheduleID]) VALUES (18, 2024, 14, 22)
SET IDENTITY_INSERT [dbo].[Schedule] OFF
GO
SET IDENTITY_INSERT [dbo].[Skills] ON 

INSERT [dbo].[Skills] ([SkillID], [SkillName], [enable], [Skilldescription], [Imageskill]) VALUES (1, N'Lập trình Python', 1, N'Python là ngôn ngữ lập trình đa năng, nhẹ nhàng và dễ đọc. Mentor sẽ hướng dẫn mentee cách sử dụng Python trong phân tích dữ liệu, trí tuệ nhân tạo và phát triển web, giúp họ xây dựng ứng dụng hiệu quả và linh hoạt.', N'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c3/Python-logo-notext.svg/1869px-Python-logo-notext.svg.png')
INSERT [dbo].[Skills] ([SkillID], [SkillName], [enable], [Skilldescription], [Imageskill]) VALUES (2, N'Lập trình Java', 1, N'Java là ngôn ngữ mạnh mẽ, chủ yếu sử dụng trong phát triển ứng dụng đa nền tảng. Mentor sẽ hỗ trợ mentee trong việc nắm vững Java để xây dựng các ứng dụng lớn, an toàn và hiệu quả.', N'https://tuyendung.kfcvietnam.com.vn/Data/Sites/1/media/blog/java-la-gi.jpg')
INSERT [dbo].[Skills] ([SkillID], [SkillName], [enable], [Skilldescription], [Imageskill]) VALUES (3, N'Lập trình C', 1, N'Ngôn ngữ C là cơ sở của nhiều hệ điều hành và ứng dụng nhúng. Mentor sẽ giúp mentee hiểu sâu về C, từ cơ bản đến nâng cao, để họ có khả năng xây dựng các hệ thống nhúng và ứng dụng hiệu quả.', N'https://webimages.mongodb.com/_com_assets/cms/l3etz1z9tduxvdoni-c.svg?auto=format%252Ccompress')
INSERT [dbo].[Skills] ([SkillID], [SkillName], [enable], [Skilldescription], [Imageskill]) VALUES (4, N'Lập trình Ruby', 1, N'Ruby là ngôn ngữ linh hoạt và dễ đọc, thường được sử dụng trong phát triển web. Mentor sẽ hướng dẫn mentee về Ruby để họ có thể xây dựng các ứng dụng web động và mạnh mẽ.', N'https://media.geeksforgeeks.org/wp-content/cdn-uploads/20190902124355/ruby-programming-language.png')
INSERT [dbo].[Skills] ([SkillID], [SkillName], [enable], [Skilldescription], [Imageskill]) VALUES (5, N'Lập trình PHP', 1, N'PHP là ngôn ngữ lập trình phổ biến cho phát triển web. Mentor sẽ hỗ trợ mentee trong việc hiểu sâu về PHP, giúp họ xây dựng các trang web động và ứng dụng mạnh mẽ.', N'https://upload.wikimedia.org/wikipedia/commons/thumb/2/27/PHP-logo.svg/1200px-PHP-logo.svg.png')
INSERT [dbo].[Skills] ([SkillID], [SkillName], [enable], [Skilldescription], [Imageskill]) VALUES (6, N'HTML', 1, N'HTML là ngôn ngữ đánh dấu cơ bản cho phát triển web. Mentor sẽ giúp mentee hiểu cách sử dụng HTML để tạo ra cấu trúc cơ bản của trang web, là bước quan trọng trong việc xây dựng giao diện người dùng.', N'https://play-lh.googleusercontent.com/RslBy1o2NEBYUdRjQtUqLbN-ZM2hpks1mHPMiHMrpAuLqxeBPcFSAjo65nQHbTA53YYn')
INSERT [dbo].[Skills] ([SkillID], [SkillName], [enable], [Skilldescription], [Imageskill]) VALUES (7, N'CSS', 1, N'CSS là ngôn ngữ kiểu trang cho phát triển web. Mentor sẽ hướng dẫn mentee về CSS để họ có khả năng thiết kế và tùy chỉnh giao diện người dùng của trang web một cách chuyên nghiệp.', N'https://funix.edu.vn/wp-content/uploads/2021/12/m%C6%B0%CC%81c-%C4%91%C3%B4%CC%A3-%C6%B0u-ti%C3%AAn-khi-a%CC%81p-du%CC%A3ng-nhi%C3%AA%CC%80u-CSS-1.jpg')
INSERT [dbo].[Skills] ([SkillID], [SkillName], [enable], [Skilldescription], [Imageskill]) VALUES (8, N'React', 1, N'React là thư viện JavaScript phổ biến cho phát triển giao diện người dùng. Mentor sẽ giúp mentee hiểu cách sử dụng React để xây dựng ứng dụng web động và linh hoạt.', N'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a7/React-icon.svg/1200px-React-icon.svg.png')
INSERT [dbo].[Skills] ([SkillID], [SkillName], [enable], [Skilldescription], [Imageskill]) VALUES (9, N'Bootstrap', 1, N'Bootstrap là một framework CSS phổ biến giúp tạo giao diện web một cách nhanh chóng và dễ dàng. Mentor sẽ hướng dẫn mentee cách sử dụng Bootstrap để tối ưu hóa quá trình phát triển.', N'https://vinadesigndanang.vn/uploads/image/images/bootstrap.png')
INSERT [dbo].[Skills] ([SkillID], [SkillName], [enable], [Skilldescription], [Imageskill]) VALUES (10, N'Node.js', 1, N'Node.js là một môi trường thực thi JavaScript ở phía máy chủ. Mentor sẽ giúp mentee hiểu cách sử dụng Node.js để xây dựng ứng dụng máy chủ hiệu quả và có khả năng mở rộng.', N'https://cdn-clekk.nitrocdn.com/tkvYXMZryjYrSVhxKeFTeXElceKUYHeV/assets/images/optimized/rev-49e2c5e/litslink.com/wp-content/uploads/2020/12/node.js-logo-image.png')
INSERT [dbo].[Skills] ([SkillID], [SkillName], [enable], [Skilldescription], [Imageskill]) VALUES (11, N'Spring Boot', 1, N'Spring Boot là một framework phổ biến cho phát triển ứng dụng Java. Mentor sẽ hỗ trợ mentee trong việc xây dựng ứng dụng Java hiệu quả với Spring Boot', N'https://akdemy.net/wp-content/uploads/2023/04/Spring-Boot-Framework.png')
INSERT [dbo].[Skills] ([SkillID], [SkillName], [enable], [Skilldescription], [Imageskill]) VALUES (12, N'MySQL', 1, N'MySQL là hệ quản trị cơ sở dữ liệu quan hệ mạnh mẽ. Mentor sẽ giúp mentee hiểu cách sử dụng MySQL để quản lý và tối ưu hóa cơ sở dữ liệu của họ.', N'https://techvccloud.mediacdn.vn/2020/9/17/mysql-1-1600340047538868003500-crop-160034079526453914971.png')
INSERT [dbo].[Skills] ([SkillID], [SkillName], [enable], [Skilldescription], [Imageskill]) VALUES (13, N'Lập trình JavaScript', 1, N'JavaScript là ngôn ngữ lập trình chạy ở phía client, thường được sử dụng trong phát triển web. Mentor sẽ hướng dẫn mentee cách sử dụng JavaScript để tạo ra trang web động và tương tác.', N'https://logos-world.net/wp-content/uploads/2023/02/JavaScript-Logo.png')
INSERT [dbo].[Skills] ([SkillID], [SkillName], [enable], [Skilldescription], [Imageskill]) VALUES (14, N'Lập trình C#', 1, N'C# là ngôn ngữ lập trình đa nền tảng của Microsoft. Mentor sẽ giúp mentee hiểu cách sử dụng C# để xây dựng ứng dụng Windows và ứng dụng web ASP.NET.', N'https://lotusacademy.edu.vn/api/media/download/547/c-sharp.jpg')
INSERT [dbo].[Skills] ([SkillID], [SkillName], [enable], [Skilldescription], [Imageskill]) VALUES (15, N'Lập trình C++', 1, N'C++ là ngôn ngữ lập trình mạnh mẽ, thường được sử dụng trong phát triển phần mềm và game. Mentor sẽ hỗ trợ mentee hiểu cách sử dụng C++ để xây dựng ứng dụng hiệu quả và có khả năng mở rộng.', N'https://upload.wikimedia.org/wikipedia/commons/thumb/1/18/ISO_C%2B%2B_Logo.svg/150px-ISO_C%2B%2B_Logo.svg.png')
SET IDENTITY_INSERT [dbo].[Skills] OFF
GO
SET IDENTITY_INSERT [dbo].[Slot] ON 

INSERT [dbo].[Slot] ([SlotID], [Time], [startAt], [Link], [ScheduleID], [SkillID], [MenteeID], [Status]) VALUES (1, 1.3333333730697632, CAST(N'2024-01-08T07:30:00.000' AS DateTime), N'https://meet.google.com/dam-hjrj-ozc              ', 1, 3, 3, N'Done                ')
INSERT [dbo].[Slot] ([SlotID], [Time], [startAt], [Link], [ScheduleID], [SkillID], [MenteeID], [Status]) VALUES (2, 1.3333333730697632, CAST(N'2024-01-10T07:30:00.000' AS DateTime), N'https://meet.google.com/dam-hjrj-ozc              ', 1, 3, 3, N'Done                ')
INSERT [dbo].[Slot] ([SlotID], [Time], [startAt], [Link], [ScheduleID], [SkillID], [MenteeID], [Status]) VALUES (3, 1.3333333730697632, CAST(N'2024-01-12T07:30:00.000' AS DateTime), N'https://meet.google.com/dam-hjrj-ozc              ', 1, 3, 3, N'Done                ')
INSERT [dbo].[Slot] ([SlotID], [Time], [startAt], [Link], [ScheduleID], [SkillID], [MenteeID], [Status]) VALUES (4, 1.3333333730697632, CAST(N'2024-02-20T12:50:00.000' AS DateTime), N'https://meet.google.com/dam-hjrj-ozc              ', 2, 2, 4, N'Done                ')
INSERT [dbo].[Slot] ([SlotID], [Time], [startAt], [Link], [ScheduleID], [SkillID], [MenteeID], [Status]) VALUES (5, 1.3333333730697632, CAST(N'2024-02-22T12:50:00.000' AS DateTime), N'https://meet.google.com/dam-hjrj-ozc              ', 2, 2, 4, N'Done                ')
INSERT [dbo].[Slot] ([SlotID], [Time], [startAt], [Link], [ScheduleID], [SkillID], [MenteeID], [Status]) VALUES (6, 1.3333333730697632, CAST(N'2024-03-29T07:30:00.000' AS DateTime), N'https://meet.google.com/dam-hjrj-ozc              ', 3, NULL, NULL, N'Not Confirm         ')
INSERT [dbo].[Slot] ([SlotID], [Time], [startAt], [Link], [ScheduleID], [SkillID], [MenteeID], [Status]) VALUES (7, 1.3333333730697632, CAST(N'2024-03-30T07:30:00.000' AS DateTime), N'https://meet.google.com/dam-hjrj-ozc              ', 3, NULL, NULL, N'Not Confirm         ')
INSERT [dbo].[Slot] ([SlotID], [Time], [startAt], [Link], [ScheduleID], [SkillID], [MenteeID], [Status]) VALUES (8, 1.3333333730697632, CAST(N'2024-03-25T17:50:00.000' AS DateTime), N'https://meet.google.com/dam-hjrj-ozc              ', 4, NULL, NULL, N'Not Confirm         ')
INSERT [dbo].[Slot] ([SlotID], [Time], [startAt], [Link], [ScheduleID], [SkillID], [MenteeID], [Status]) VALUES (9, 1.3333333730697632, CAST(N'2024-03-27T17:50:00.000' AS DateTime), N'https://meet.google.com/dam-hjrj-ozc              ', 4, NULL, NULL, N'Not Confirm         ')
INSERT [dbo].[Slot] ([SlotID], [Time], [startAt], [Link], [ScheduleID], [SkillID], [MenteeID], [Status]) VALUES (10, 1.3333333730697632, CAST(N'2024-03-29T17:50:00.000' AS DateTime), N'https://meet.google.com/dam-hjrj-ozc              ', 4, NULL, NULL, N'Not Confirm         ')
INSERT [dbo].[Slot] ([SlotID], [Time], [startAt], [Link], [ScheduleID], [SkillID], [MenteeID], [Status]) VALUES (11, 1.3333333730697632, CAST(N'2024-03-31T17:50:00.000' AS DateTime), N'https://meet.google.com/dam-hjrj-ozc              ', 4, NULL, NULL, N'Not Confirm         ')
INSERT [dbo].[Slot] ([SlotID], [Time], [startAt], [Link], [ScheduleID], [SkillID], [MenteeID], [Status]) VALUES (12, 1.3333333730697632, CAST(N'2024-04-01T17:50:00.000' AS DateTime), N'https://meet.google.com/dam-hjrj-ozc              ', 5, NULL, NULL, N'Not Confirm         ')
INSERT [dbo].[Slot] ([SlotID], [Time], [startAt], [Link], [ScheduleID], [SkillID], [MenteeID], [Status]) VALUES (13, 1.3333333730697632, CAST(N'2024-03-26T20:30:00.000' AS DateTime), N'https://meet.google.com/dam-hjrj-ozc              ', 6, NULL, NULL, N'Not Confirm         ')
INSERT [dbo].[Slot] ([SlotID], [Time], [startAt], [Link], [ScheduleID], [SkillID], [MenteeID], [Status]) VALUES (14, 1.3333333730697632, CAST(N'2024-03-28T20:30:00.000' AS DateTime), N'https://meet.google.com/dam-hjrj-ozc              ', 6, NULL, NULL, N'Not Confirm         ')
INSERT [dbo].[Slot] ([SlotID], [Time], [startAt], [Link], [ScheduleID], [SkillID], [MenteeID], [Status]) VALUES (15, 1.3333333730697632, CAST(N'2024-03-30T20:30:00.000' AS DateTime), N'https://meet.google.com/dam-hjrj-ozc              ', 6, NULL, NULL, N'Not Confirm         ')
INSERT [dbo].[Slot] ([SlotID], [Time], [startAt], [Link], [ScheduleID], [SkillID], [MenteeID], [Status]) VALUES (16, 1.3333333730697632, CAST(N'2024-04-02T20:30:00.000' AS DateTime), N'https://meet.google.com/dam-hjrj-ozc              ', 7, NULL, NULL, N'Not Confirm         ')
INSERT [dbo].[Slot] ([SlotID], [Time], [startAt], [Link], [ScheduleID], [SkillID], [MenteeID], [Status]) VALUES (17, 1.3333333730697632, CAST(N'2024-04-04T20:30:00.000' AS DateTime), N'https://meet.google.com/dam-hjrj-ozc              ', 7, NULL, NULL, N'Not Confirm         ')
INSERT [dbo].[Slot] ([SlotID], [Time], [startAt], [Link], [ScheduleID], [SkillID], [MenteeID], [Status]) VALUES (18, 1.3333333730697632, CAST(N'2024-04-01T05:00:00.000' AS DateTime), N'https://meet.google.com/dam-hjrj-ozc              ', 8, NULL, NULL, N'Not Confirm         ')
INSERT [dbo].[Slot] ([SlotID], [Time], [startAt], [Link], [ScheduleID], [SkillID], [MenteeID], [Status]) VALUES (19, 1.3333333730697632, CAST(N'2024-04-02T05:00:00.000' AS DateTime), N'https://meet.google.com/dam-hjrj-ozc              ', 8, NULL, NULL, N'Not Confirm         ')
INSERT [dbo].[Slot] ([SlotID], [Time], [startAt], [Link], [ScheduleID], [SkillID], [MenteeID], [Status]) VALUES (20, 1.3333333730697632, CAST(N'2024-04-03T05:00:00.000' AS DateTime), N'https://meet.google.com/dam-hjrj-ozc              ', 8, NULL, NULL, N'Not Confirm         ')
INSERT [dbo].[Slot] ([SlotID], [Time], [startAt], [Link], [ScheduleID], [SkillID], [MenteeID], [Status]) VALUES (21, 1.3333333730697632, CAST(N'2024-04-04T05:00:00.000' AS DateTime), N'https://meet.google.com/dam-hjrj-ozc              ', 8, NULL, NULL, N'Not Confirm         ')
INSERT [dbo].[Slot] ([SlotID], [Time], [startAt], [Link], [ScheduleID], [SkillID], [MenteeID], [Status]) VALUES (22, 1.3333333730697632, CAST(N'2024-04-05T05:00:00.000' AS DateTime), N'https://meet.google.com/dam-hjrj-ozc              ', 8, NULL, NULL, N'Not Confirm         ')
INSERT [dbo].[Slot] ([SlotID], [Time], [startAt], [Link], [ScheduleID], [SkillID], [MenteeID], [Status]) VALUES (23, 1.3333333730697632, CAST(N'2024-03-29T12:50:00.000' AS DateTime), N'https://meet.google.com/dam-hjrj-ozc              ', 9, NULL, NULL, N'Not Confirm         ')
INSERT [dbo].[Slot] ([SlotID], [Time], [startAt], [Link], [ScheduleID], [SkillID], [MenteeID], [Status]) VALUES (24, 1.3333333730697632, CAST(N'2024-03-30T12:50:00.000' AS DateTime), N'https://meet.google.com/dam-hjrj-ozc              ', 9, NULL, NULL, N'Not Confirm         ')
INSERT [dbo].[Slot] ([SlotID], [Time], [startAt], [Link], [ScheduleID], [SkillID], [MenteeID], [Status]) VALUES (25, 1.3333333730697632, CAST(N'2024-03-31T12:50:00.000' AS DateTime), N'https://meet.google.com/dam-hjrj-ozc              ', 9, NULL, NULL, N'Not Confirm         ')
INSERT [dbo].[Slot] ([SlotID], [Time], [startAt], [Link], [ScheduleID], [SkillID], [MenteeID], [Status]) VALUES (26, 1.3333333730697632, CAST(N'2024-03-29T12:50:00.000' AS DateTime), N'https://meet.google.com/dam-hjrj-ozc              ', 10, NULL, NULL, N'Not Confirm         ')
INSERT [dbo].[Slot] ([SlotID], [Time], [startAt], [Link], [ScheduleID], [SkillID], [MenteeID], [Status]) VALUES (27, 1.3333333730697632, CAST(N'2024-04-03T07:30:00.000' AS DateTime), N'https://meet.google.com/dam-hjrj-ozc              ', 11, NULL, NULL, N'Not Confirm         ')
INSERT [dbo].[Slot] ([SlotID], [Time], [startAt], [Link], [ScheduleID], [SkillID], [MenteeID], [Status]) VALUES (28, 1.3333333730697632, CAST(N'2024-04-04T07:30:00.000' AS DateTime), N'https://meet.google.com/dam-hjrj-ozc              ', 11, NULL, NULL, N'Not Confirm         ')
INSERT [dbo].[Slot] ([SlotID], [Time], [startAt], [Link], [ScheduleID], [SkillID], [MenteeID], [Status]) VALUES (29, 1.3333333730697632, CAST(N'2024-04-05T07:30:00.000' AS DateTime), N'https://meet.google.com/dam-hjrj-ozc              ', 11, NULL, NULL, N'Not Confirm         ')
INSERT [dbo].[Slot] ([SlotID], [Time], [startAt], [Link], [ScheduleID], [SkillID], [MenteeID], [Status]) VALUES (30, 1.3333333730697632, CAST(N'2024-03-28T05:00:00.000' AS DateTime), N'https://meet.google.com/dam-hjrj-ozc              ', 12, NULL, NULL, N'Not Confirm         ')
INSERT [dbo].[Slot] ([SlotID], [Time], [startAt], [Link], [ScheduleID], [SkillID], [MenteeID], [Status]) VALUES (31, 1.3333333730697632, CAST(N'2024-03-29T05:00:00.000' AS DateTime), N'https://meet.google.com/dam-hjrj-ozc              ', 12, NULL, NULL, N'Not Confirm         ')
INSERT [dbo].[Slot] ([SlotID], [Time], [startAt], [Link], [ScheduleID], [SkillID], [MenteeID], [Status]) VALUES (32, 1.3333333730697632, CAST(N'2024-03-30T05:00:00.000' AS DateTime), N'https://meet.google.com/dam-hjrj-ozc              ', 12, NULL, NULL, N'Not Confirm         ')
INSERT [dbo].[Slot] ([SlotID], [Time], [startAt], [Link], [ScheduleID], [SkillID], [MenteeID], [Status]) VALUES (33, 1.3333333730697632, CAST(N'2024-03-31T05:00:00.000' AS DateTime), N'https://meet.google.com/dam-hjrj-ozc              ', 12, NULL, NULL, N'Not Confirm         ')
INSERT [dbo].[Slot] ([SlotID], [Time], [startAt], [Link], [ScheduleID], [SkillID], [MenteeID], [Status]) VALUES (34, 1.3333333730697632, CAST(N'2024-03-29T10:00:00.000' AS DateTime), N'https://meet.google.com/dam-hjrj-ozc              ', 13, NULL, NULL, N'Not Confirm         ')
INSERT [dbo].[Slot] ([SlotID], [Time], [startAt], [Link], [ScheduleID], [SkillID], [MenteeID], [Status]) VALUES (35, 1.3333333730697632, CAST(N'2024-03-30T10:00:00.000' AS DateTime), N'https://meet.google.com/dam-hjrj-ozc              ', 13, NULL, NULL, N'Not Confirm         ')
INSERT [dbo].[Slot] ([SlotID], [Time], [startAt], [Link], [ScheduleID], [SkillID], [MenteeID], [Status]) VALUES (36, 1.3333333730697632, CAST(N'2024-03-31T10:00:00.000' AS DateTime), N'https://meet.google.com/dam-hjrj-ozc              ', 13, NULL, NULL, N'Not Confirm         ')
INSERT [dbo].[Slot] ([SlotID], [Time], [startAt], [Link], [ScheduleID], [SkillID], [MenteeID], [Status]) VALUES (37, 1.3333333730697632, CAST(N'2024-01-11T10:00:00.000' AS DateTime), N'https://meet.google.com/dam-hjrj-ozc              ', 14, 12, 3, N'Done                ')
INSERT [dbo].[Slot] ([SlotID], [Time], [startAt], [Link], [ScheduleID], [SkillID], [MenteeID], [Status]) VALUES (38, 1.3333333730697632, CAST(N'2024-01-13T10:00:00.000' AS DateTime), N'https://meet.google.com/dam-hjrj-ozc              ', 14, 12, 3, N'Done                ')
INSERT [dbo].[Slot] ([SlotID], [Time], [startAt], [Link], [ScheduleID], [SkillID], [MenteeID], [Status]) VALUES (39, 1.3333333730697632, CAST(N'2024-01-16T10:00:00.000' AS DateTime), N'https://meet.google.com/dam-hjrj-ozc              ', 15, 12, 3, N'Done                ')
INSERT [dbo].[Slot] ([SlotID], [Time], [startAt], [Link], [ScheduleID], [SkillID], [MenteeID], [Status]) VALUES (40, 1.3333333730697632, CAST(N'2024-01-26T10:00:00.000' AS DateTime), N'https://meet.google.com/dam-hjrj-ozc              ', 16, NULL, NULL, N'Not Confirm         ')
INSERT [dbo].[Slot] ([SlotID], [Time], [startAt], [Link], [ScheduleID], [SkillID], [MenteeID], [Status]) VALUES (41, 1.3333333730697632, CAST(N'2024-01-29T10:00:00.000' AS DateTime), N'https://meet.google.com/dam-hjrj-ozc              ', 17, NULL, NULL, N'Not Confirm         ')
INSERT [dbo].[Slot] ([SlotID], [Time], [startAt], [Link], [ScheduleID], [SkillID], [MenteeID], [Status]) VALUES (42, 1.3333333730697632, CAST(N'2024-01-30T10:00:00.000' AS DateTime), N'https://meet.google.com/dam-hjrj-ozc              ', 17, NULL, NULL, N'Not Confirm         ')
INSERT [dbo].[Slot] ([SlotID], [Time], [startAt], [Link], [ScheduleID], [SkillID], [MenteeID], [Status]) VALUES (43, 1.3333333730697632, CAST(N'2024-01-31T10:00:00.000' AS DateTime), N'https://meet.google.com/dam-hjrj-ozc              ', 17, NULL, NULL, N'Not Confirm         ')
INSERT [dbo].[Slot] ([SlotID], [Time], [startAt], [Link], [ScheduleID], [SkillID], [MenteeID], [Status]) VALUES (44, 1.3333333730697632, CAST(N'2024-02-01T10:00:00.000' AS DateTime), N'https://meet.google.com/dam-hjrj-ozc              ', 17, NULL, NULL, N'Not Confirm         ')
INSERT [dbo].[Slot] ([SlotID], [Time], [startAt], [Link], [ScheduleID], [SkillID], [MenteeID], [Status]) VALUES (45, 1.3333333730697632, CAST(N'2024-04-30T17:50:00.000' AS DateTime), N'https://meet.google.com/dam-hjrj-ozc              ', 18, NULL, NULL, N'Not Confirm         ')
INSERT [dbo].[Slot] ([SlotID], [Time], [startAt], [Link], [ScheduleID], [SkillID], [MenteeID], [Status]) VALUES (46, 1.3333333730697632, CAST(N'2024-05-02T17:50:00.000' AS DateTime), N'https://meet.google.com/dam-hjrj-ozc              ', 18, NULL, NULL, N'Not Confirm         ')
INSERT [dbo].[Slot] ([SlotID], [Time], [startAt], [Link], [ScheduleID], [SkillID], [MenteeID], [Status]) VALUES (47, 1.3333333730697632, CAST(N'2024-05-04T17:50:00.000' AS DateTime), N'https://meet.google.com/dam-hjrj-ozc              ', 18, NULL, NULL, N'Not Confirm         ')
INSERT [dbo].[Slot] ([SlotID], [Time], [startAt], [Link], [ScheduleID], [SkillID], [MenteeID], [Status]) VALUES (48, 1.3333333730697632, CAST(N'2024-03-24T10:00:00.000' AS DateTime), N'https://meet.google.com/dam-hjrj-ozc              ', 19, NULL, NULL, N'Not Confirm         ')
INSERT [dbo].[Slot] ([SlotID], [Time], [startAt], [Link], [ScheduleID], [SkillID], [MenteeID], [Status]) VALUES (49, 1.3333333730697632, CAST(N'2024-03-29T10:00:00.000' AS DateTime), N'https://meet.google.com/dam-hjrj-ozc              ', 20, NULL, NULL, N'Not Confirm         ')
INSERT [dbo].[Slot] ([SlotID], [Time], [startAt], [Link], [ScheduleID], [SkillID], [MenteeID], [Status]) VALUES (50, 1.3333333730697632, CAST(N'2024-03-30T10:00:00.000' AS DateTime), N'https://meet.google.com/dam-hjrj-ozc              ', 20, NULL, NULL, N'Not Confirm         ')
INSERT [dbo].[Slot] ([SlotID], [Time], [startAt], [Link], [ScheduleID], [SkillID], [MenteeID], [Status]) VALUES (51, 1.3333333730697632, CAST(N'2024-03-27T15:20:00.000' AS DateTime), N'https://meet.google.com/dam-hjrj-ozc              ', 21, NULL, NULL, N'Not Confirm         ')
INSERT [dbo].[Slot] ([SlotID], [Time], [startAt], [Link], [ScheduleID], [SkillID], [MenteeID], [Status]) VALUES (52, 1.3333333730697632, CAST(N'2024-03-28T15:20:00.000' AS DateTime), N'https://meet.google.com/dam-hjrj-ozc              ', 21, NULL, NULL, N'Not Confirm         ')
INSERT [dbo].[Slot] ([SlotID], [Time], [startAt], [Link], [ScheduleID], [SkillID], [MenteeID], [Status]) VALUES (53, 1.3333333730697632, CAST(N'2024-03-29T15:20:00.000' AS DateTime), N'https://meet.google.com/dam-hjrj-ozc              ', 21, NULL, NULL, N'Not Confirm         ')
INSERT [dbo].[Slot] ([SlotID], [Time], [startAt], [Link], [ScheduleID], [SkillID], [MenteeID], [Status]) VALUES (54, 1.3333333730697632, CAST(N'2024-04-02T15:20:00.000' AS DateTime), N'https://meet.google.com/dam-hjrj-ozc              ', 22, NULL, NULL, N'Not Confirm         ')
SET IDENTITY_INSERT [dbo].[Slot] OFF
GO
SET IDENTITY_INSERT [dbo].[Transaction] ON 

INSERT [dbo].[Transaction] ([ID], [UserID], [Balance], [Type], [Content], [Time], [Status], [TransCode]) VALUES (1, 3, 200000, N'+', N'Thanh toan don hang:49104421', CAST(N'2024-02-06' AS Date), N'Pending', 49104421)
INSERT [dbo].[Transaction] ([ID], [UserID], [Balance], [Type], [Content], [Time], [Status], [TransCode]) VALUES (2, 3, 300000, N'+', N'Thanh toan don hang:80833131', CAST(N'2024-03-28' AS Date), N'Pending', 80833131)
INSERT [dbo].[Transaction] ([ID], [UserID], [Balance], [Type], [Content], [Time], [Status], [TransCode]) VALUES (3, 3, 300000, N'+', N'Thanh toan don hang:80010974', CAST(N'2024-03-28' AS Date), N'Success', 80010974)
INSERT [dbo].[Transaction] ([ID], [UserID], [Balance], [Type], [Content], [Time], [Status], [TransCode]) VALUES (4, 3, 150000, N'-', N'Nộp tiền request id 1', CAST(N'2024-03-28' AS Date), N'Success', NULL)
INSERT [dbo].[Transaction] ([ID], [UserID], [Balance], [Type], [Content], [Time], [Status], [TransCode]) VALUES (5, 4, 400000, N'+', N'Thanh toan don hang:11204253', CAST(N'2024-02-17' AS Date), N'Pending', 11204253)
INSERT [dbo].[Transaction] ([ID], [UserID], [Balance], [Type], [Content], [Time], [Status], [TransCode]) VALUES (6, 4, 400000, N'+', N'Thanh toan don hang:79638128', CAST(N'2024-03-28' AS Date), N'Pending', 79638128)
INSERT [dbo].[Transaction] ([ID], [UserID], [Balance], [Type], [Content], [Time], [Status], [TransCode]) VALUES (7, 4, 500000, N'+', N'Thanh toan don hang:56500801', CAST(N'2024-03-28' AS Date), N'Pending', 56500801)
INSERT [dbo].[Transaction] ([ID], [UserID], [Balance], [Type], [Content], [Time], [Status], [TransCode]) VALUES (8, 4, 300000, N'+', N'Thanh toan don hang:07129439', CAST(N'2024-03-28' AS Date), N'Pending', 7129439)
INSERT [dbo].[Transaction] ([ID], [UserID], [Balance], [Type], [Content], [Time], [Status], [TransCode]) VALUES (9, 4, 300000, N'+', N'Thanh toan don hang:45291188', CAST(N'2024-03-28' AS Date), N'Success', 45291188)
INSERT [dbo].[Transaction] ([ID], [UserID], [Balance], [Type], [Content], [Time], [Status], [TransCode]) VALUES (10, 4, 100000, N'-', N'Nộp tiền request id 2', CAST(N'2024-02-12' AS Date), N'Success', NULL)
INSERT [dbo].[Transaction] ([ID], [UserID], [Balance], [Type], [Content], [Time], [Status], [TransCode]) VALUES (11, 3, 150000, N'-', N'Nộp tiền request id 3', CAST(N'2024-01-03' AS Date), N'Success', NULL)
SET IDENTITY_INSERT [dbo].[Transaction] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([UserID], [sex], [activeStatus], [username], [password], [dob], [email], [phoneNumber], [wallet], [address], [RoleID], [isValidate], [Avatar], [fullname]) VALUES (1, 0, 1, N'admin', N'123', CAST(N'1984-11-14' AS Date), N'anhlong123@gmail.com', N'0123456789', 0, N'Hà Nội', 1, 0, NULL, NULL)
INSERT [dbo].[User] ([UserID], [sex], [activeStatus], [username], [password], [dob], [email], [phoneNumber], [wallet], [address], [RoleID], [isValidate], [Avatar], [fullname]) VALUES (2, 1, 1, N'manager', N'123', CAST(N'1999-05-03' AS Date), NULL, N'0923874567', 0, N'Hà Nội', 2, 0, NULL, NULL)
INSERT [dbo].[User] ([UserID], [sex], [activeStatus], [username], [password], [dob], [email], [phoneNumber], [wallet], [address], [RoleID], [isValidate], [Avatar], [fullname]) VALUES (3, 1, 1, N'thihong', N'123', CAST(N'2005-06-09' AS Date), N'thihong@gmail.com', N'0823476854', 0, N'Cà Mau', 4, 1, N'avatar/coco_3.png', N'Nguyễn Thị Hồng')
INSERT [dbo].[User] ([UserID], [sex], [activeStatus], [username], [password], [dob], [email], [phoneNumber], [wallet], [address], [RoleID], [isValidate], [Avatar], [fullname]) VALUES (4, 0, 1, N'vanqua', N'123', CAST(N'2007-12-04' AS Date), N'vanqua@gmail.com', N'0128749365', 200000, N'Hà Giang', 4, 0, N'avatar/kiemto_4.png', N'Nguyễn Văn Quá')
INSERT [dbo].[User] ([UserID], [sex], [activeStatus], [username], [password], [dob], [email], [phoneNumber], [wallet], [address], [RoleID], [isValidate], [Avatar], [fullname]) VALUES (5, 0, 1, N'doandaihiep', N'123', CAST(N'2000-09-07' AS Date), N'doandaihiep@gmail.com', N'0912873406', 0, N'Bắc Cạn', 3, 0, N'avatar/doandaihiep_5.png', N'Chân Chí Bình')
INSERT [dbo].[User] ([UserID], [sex], [activeStatus], [username], [password], [dob], [email], [phoneNumber], [wallet], [address], [RoleID], [isValidate], [Avatar], [fullname]) VALUES (6, 0, 1, N'tulong', N'123', CAST(N'1990-10-17' AS Date), N'tulong@gmail.com', N'0934985467', 250000, N'Bắc Cạn, Việt Nam', 3, 0, N'avatar/trieuvan_6.png', N'Trần Tử Long')
INSERT [dbo].[User] ([UserID], [sex], [activeStatus], [username], [password], [dob], [email], [phoneNumber], [wallet], [address], [RoleID], [isValidate], [Avatar], [fullname]) VALUES (7, 0, 1, N'vanvu', N'123', CAST(N'2001-06-06' AS Date), N'vanvu@gmail.com', N'0987143564', 0, N'Lào Cai, Việt Nam', 3, 0, N'avatar/quanvu_7.png', N'Phạm Văn Vũ')
INSERT [dbo].[User] ([UserID], [sex], [activeStatus], [username], [password], [dob], [email], [phoneNumber], [wallet], [address], [RoleID], [isValidate], [Avatar], [fullname]) VALUES (8, 0, 1, N'thoigiang', N'123', CAST(N'1983-10-13' AS Date), N'thoigiang@gmail.com', N'0981287345', 0, N'London, England', 3, 0, N'avatar/tonggiang_8.png', N'Nguyễn Thời Giang')
INSERT [dbo].[User] ([UserID], [sex], [activeStatus], [username], [password], [dob], [email], [phoneNumber], [wallet], [address], [RoleID], [isValidate], [Avatar], [fullname]) VALUES (9, 1, 1, N'thanhanh', N'123', CAST(N'1999-06-17' AS Date), N'thanhanh@gmail.com', N'0937584983', 0, N'Đà Nẵng, Việt Nam', 3, 0, N'avatar/nhuy_9.png', N'Nguyễn Thanh Anh')
INSERT [dbo].[User] ([UserID], [sex], [activeStatus], [username], [password], [dob], [email], [phoneNumber], [wallet], [address], [RoleID], [isValidate], [Avatar], [fullname]) VALUES (10, 1, 1, N'dungam', N'123', CAST(N'1997-10-10' AS Date), N'dungam@gmail.com', N'0329874583', 0, N'Điện Biên, Việt Nam', 3, 0, N'avatar/dungam_10.png', N'Phú Sát Dung Âm')
INSERT [dbo].[User] ([UserID], [sex], [activeStatus], [username], [password], [dob], [email], [phoneNumber], [wallet], [address], [RoleID], [isValidate], [Avatar], [fullname]) VALUES (12, 0, 1, N'vanquyet', N'123', CAST(N'1979-10-24' AS Date), N'vanquyet@gmail.com', N'0923498654', 0, N'Hà Nội', 3, 0, N'avatar/vanquyet_12.png', N'Trịnh Văn Quyết')
INSERT [dbo].[User] ([UserID], [sex], [activeStatus], [username], [password], [dob], [email], [phoneNumber], [wallet], [address], [RoleID], [isValidate], [Avatar], [fullname]) VALUES (13, 0, 1, N'bacthay', N'123', CAST(N'1996-10-16' AS Date), N'bacthay@gmail.com', N'0239875487', 0, N'TP. Hồ Chí Minh', 3, 0, N'avatar/bacthay_13.png', N'Bậc Thầy Flick')
INSERT [dbo].[User] ([UserID], [sex], [activeStatus], [username], [password], [dob], [email], [phoneNumber], [wallet], [address], [RoleID], [isValidate], [Avatar], [fullname]) VALUES (14, 0, 1, N'saccuong', N'123', CAST(N'1997-10-15' AS Date), N'saccuong@gmail.com', N'0984736586', 0, N'Indonesia', 3, 0, N'avatar/saccuong_14.png', N'Phó Sắc Cường')
INSERT [dbo].[User] ([UserID], [sex], [activeStatus], [username], [password], [dob], [email], [phoneNumber], [wallet], [address], [RoleID], [isValidate], [Avatar], [fullname]) VALUES (15, 1, 1, N'khanhlinh', N'123', CAST(N'2002-11-14' AS Date), N'khanhlinh@gmail.com', N'0987548376', 150000, N'Tokyo, Japan', 3, 0, N'avatar/kaguya_15.png', N'Phan Khánh Linh')
INSERT [dbo].[User] ([UserID], [sex], [activeStatus], [username], [password], [dob], [email], [phoneNumber], [wallet], [address], [RoleID], [isValidate], [Avatar], [fullname]) VALUES (16, 0, 1, N'sontung', N'123', CAST(N'1990-10-25' AS Date), N'sontung@gmail.com', N'0938754983', 0, N'Hà Nội', 3, 0, N'avatar/sontung_16.png', N'Sơn Tùng')
INSERT [dbo].[User] ([UserID], [sex], [activeStatus], [username], [password], [dob], [email], [phoneNumber], [wallet], [address], [RoleID], [isValidate], [Avatar], [fullname]) VALUES (17, 0, 1, N'quangsang', N'123', CAST(N'1994-11-24' AS Date), N'huynthe176170@fpt.edu.vn', N'0974587356', 0, N'Hà Nội', 3, 0, N'avatar/truonghuy_17.png', N'Nguyễn Quang Sáng')
INSERT [dbo].[User] ([UserID], [sex], [activeStatus], [username], [password], [dob], [email], [phoneNumber], [wallet], [address], [RoleID], [isValidate], [Avatar], [fullname]) VALUES (18, 0, 1, N'tonystark', N'123', CAST(N'1997-12-12' AS Date), N'tonystark@gmail.com', N'0948573427', 0, N'US', 3, 0, N'avatar/tonystark_18.png', N'Tony Stark')
SET IDENTITY_INSERT [dbo].[User] OFF
GO
INSERT [dbo].[UserBank] ([UserID], [BankName], [BankType], [BankNo]) VALUES (3, N'Nguyễn Thị Hồng', N'Vietcombank', N'0987564654')
INSERT [dbo].[UserBank] ([UserID], [BankName], [BankType], [BankNo]) VALUES (4, N'Văn Quá', N'Vietinbank', N'0928743654')
GO
ALTER TABLE [dbo].[CV] ADD  CONSTRAINT [DF_CV_CashPerSlot]  DEFAULT ((50000)) FOR [CashPerSlot]
GO
ALTER TABLE [dbo].[FollowRequest] ADD  DEFAULT (getdate()) FOR [RequestTime]
GO
ALTER TABLE [dbo].[FollowRequest] ADD  DEFAULT (dateadd(day,(7),getdate())) FOR [DeadLineTime]
GO
ALTER TABLE [dbo].[Mentee] ADD  CONSTRAINT [DF_Mentee_MenteeStatus]  DEFAULT (N'Active') FOR [MenteeStatus]
GO
ALTER TABLE [dbo].[Mentor] ADD  CONSTRAINT [DF_Mentor_MentorStatus]  DEFAULT (N'Active') FOR [MentorStatus]
GO
ALTER TABLE [dbo].[Payment] ADD  CONSTRAINT [DF_Payment_Time]  DEFAULT (getdate()) FOR [Time]
GO
ALTER TABLE [dbo].[Rating] ADD  CONSTRAINT [DF_Rating_rateTime]  DEFAULT (getdate()) FOR [rateTime]
GO
ALTER TABLE [dbo].[Report] ADD  CONSTRAINT [DF_Report_reportTime]  DEFAULT (getdate()) FOR [reportTime]
GO
ALTER TABLE [dbo].[Report] ADD  CONSTRAINT [DF_Report_Status]  DEFAULT (N'Pending') FOR [Status]
GO
ALTER TABLE [dbo].[Request] ADD  DEFAULT (getdate()) FOR [RequestTime]
GO
ALTER TABLE [dbo].[Skills] ADD  DEFAULT ((1)) FOR [enable]
GO
ALTER TABLE [dbo].[Slot] ADD  CONSTRAINT [DF_Slot_Status]  DEFAULT (N'Not Confirm') FOR [Status]
GO
ALTER TABLE [dbo].[Transaction] ADD  DEFAULT (getdate()) FOR [Time]
GO
ALTER TABLE [dbo].[User] ADD  DEFAULT ((0)) FOR [isValidate]
GO
ALTER TABLE [dbo].[Conversation]  WITH CHECK ADD FOREIGN KEY([MenteeID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Conversation]  WITH CHECK ADD FOREIGN KEY([MentorID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Follow]  WITH CHECK ADD FOREIGN KEY([MenteeID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Follow]  WITH CHECK ADD FOREIGN KEY([MentorID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[FollowRequest]  WITH CHECK ADD FOREIGN KEY([MentorID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[FollowRequest]  WITH CHECK ADD FOREIGN KEY([SenderID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Mentee]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Mentor]  WITH CHECK ADD FOREIGN KEY([CvID])
REFERENCES [dbo].[CV] ([CvID])
GO
ALTER TABLE [dbo].[Mentor]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[MentorSkills]  WITH CHECK ADD FOREIGN KEY([MentorID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[MentorSkills]  WITH CHECK ADD FOREIGN KEY([SkillID])
REFERENCES [dbo].[Skills] ([SkillID])
GO
ALTER TABLE [dbo].[Message]  WITH CHECK ADD FOREIGN KEY([conversationID])
REFERENCES [dbo].[Conversation] ([conversationID])
GO
ALTER TABLE [dbo].[Message]  WITH CHECK ADD FOREIGN KEY([SenderID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD FOREIGN KEY([ReceiverID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD FOREIGN KEY([RequestID])
REFERENCES [dbo].[Request] ([RequestID])
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Rating]  WITH CHECK ADD FOREIGN KEY([MenteeID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Rating]  WITH CHECK ADD FOREIGN KEY([MentorID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Rating]  WITH CHECK ADD FOREIGN KEY([RequestID])
REFERENCES [dbo].[Request] ([RequestID])
GO
ALTER TABLE [dbo].[RejectRequest]  WITH CHECK ADD FOREIGN KEY([RequestID])
REFERENCES [dbo].[Request] ([RequestID])
GO
ALTER TABLE [dbo].[Report]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD FOREIGN KEY([SenderID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD FOREIGN KEY([SkillID])
REFERENCES [dbo].[Skills] ([SkillID])
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[RequestSlot]  WITH CHECK ADD FOREIGN KEY([RequestID])
REFERENCES [dbo].[Request] ([RequestID])
GO
ALTER TABLE [dbo].[RequestSlot]  WITH CHECK ADD FOREIGN KEY([SlotID])
REFERENCES [dbo].[Slot] ([SlotID])
GO
ALTER TABLE [dbo].[Schedule]  WITH CHECK ADD FOREIGN KEY([MentorID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Slot]  WITH CHECK ADD FOREIGN KEY([MenteeID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Slot]  WITH CHECK ADD  CONSTRAINT [FK__Slot__ScheduleID__797309D9] FOREIGN KEY([ScheduleID])
REFERENCES [dbo].[Schedule] ([ScheduleID])
GO
ALTER TABLE [dbo].[Slot] CHECK CONSTRAINT [FK__Slot__ScheduleID__797309D9]
GO
ALTER TABLE [dbo].[Slot]  WITH CHECK ADD FOREIGN KEY([SkillID])
REFERENCES [dbo].[Skills] ([SkillID])
GO
ALTER TABLE [dbo].[Transaction]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD FOREIGN KEY([RoleID])
REFERENCES [dbo].[Role] ([RoleID])
GO
ALTER TABLE [dbo].[UserBank]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
USE [master]
GO
ALTER DATABASE [SWP_Project] SET  READ_WRITE 
GO
