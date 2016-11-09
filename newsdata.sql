-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2016-11-09 04:51:51
-- 服务器版本： 10.1.13-MariaDB
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newsdata`
--

-- --------------------------------------------------------

--
-- 表的结构 `news`
--

CREATE TABLE `news` (
  `newsid` int(99) NOT NULL COMMENT 'AUTO_INCREMENT',
  `newsname` text NOT NULL,
  `newstitle` varchar(100) CHARACTER SET utf8 NOT NULL,
  `newsimg` varchar(200) NOT NULL,
  `newscontent` text NOT NULL,
  `newstime` date NOT NULL,
  `newstype` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `news`
--

INSERT INTO `news` (`newsid`, `newsname`, `newstitle`, `newsimg`, `newscontent`, `newstime`, `newstype`) VALUES
(1, 'name1', '大同市公安局破获诈骗在校大学生特大系列案', '01', '', '2016-11-09', '01'),
(2, 'name1', '雷军和乐视互撕，你从中看到了什么？', '02', '', '2016-11-09', '01'),
(3, 'name1', '双十一期间，在淘宝、京东买东西真的比平时便宜很多吗？', '03', '', '2016-11-09', '02'),
(4, 'name1', '比尔盖茨和巴菲特让马云捐出所有钱做慈善，马云的回答我给满分！', '04', '', '2016-11-09', '02'),
(5, 'name1', '不生产手机 只做技术的搬运工 ：酷派', '05', '', '2016-11-09', '01'),
(6, 'name1', 'CEO们拿一元年薪？认真你就输了', '06', '', '2016-11-09', '01'),
(7, 'name1', '靠卖辣椒酱起价，如今身价数十亿，一块车牌就能顶马云座驾', '07', '', '2016-11-09', '02'),
(8, 'name1', '低利率时代，百度理财做了个双十一好榜样', '08', '', '2016-11-09', '01'),
(9, 'name1', '娱乐圈至今无人敢潜的四大女星分别是谁？', '09', '', '2016-11-09', '02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`newsid`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `news`
--
ALTER TABLE `news`
  MODIFY `newsid` int(99) NOT NULL AUTO_INCREMENT COMMENT 'AUTO_INCREMENT', AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
