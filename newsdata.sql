-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2016-11-08 03:55:39
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
  `newsid` int(10) UNSIGNED NOT NULL,
  `newstype` text NOT NULL,
  `newstitle` varchar(100) NOT NULL,
  `newsimg` varchar(200) NOT NULL,
  `newscontent` text NOT NULL,
  `newstime` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `news`
--

INSERT INTO `news` (`newsid`, `newstype`, `newstitle`, `newsimg`, `newscontent`, `newstime`) VALUES
(11, 'type2', '未来，人类食物供应或掌握在人工智能手中', 'http://d.hiphotos.baidu.com/news/crop%3D0%2C82%2C583%2C350%3Bw%3D638/sign=c0e359bb7ff0f736ccb1164137659f21/c9fcc3cec3fdfc03f9c28c7cd33f8794a5c226bf.jpg', '可以自动探测干旱图样的卫星，识别并杀死感染疾病的植物的拖拉机，告诉农民哪种疾病感染作物的人工智...', '2016-03-09'),
(12, 'type2', '造就| 造价十亿美元的人工智能计划', 'http://c.hiphotos.baidu.com/news/crop%3D0%2C23%2C601%2C360%3Bw%3D638/sign=8d87774a1830e924dbebc67171384234/d01373f082025aaf2e801489fcedab64024f1ac5.jpg', '这就是马斯克和阿尔特曼传递出来的信息。', '2016-03-07'),
(13, 'type2', '智能机比例仅39%：国产手机为何攻不下日本市场？', 'http://e.hiphotos.baidu.com/news/crop%3D0%2C0%2C620%2C372%3Bw%3D638/sign=5e559f7cd33f8794c7b0126eef2b22c4/29381f30e924b899651105fc69061d950b7bf6c1.jpg', '日本智能机占比低，这意味着日本功能机占有很大的比例，按常理来说，功能机手机占比高，意味着日本智...', '2016-03-02'),
(14, 'type3', '10亿美元的银行大劫案败在一个拼写错误上', 'http://c.hiphotos.baidu.com/news/w%3D638/sign=225b958736adcbef01347d0594ae2e0e/fcfaaf51f3deb48f7ead0d9df71f3a292cf578a9.jpg', '黑客还是设法盗走了8100万美元，这是目前已知的最大银行盗窃案。', '0000-00-00'),
(18, 'type1', '阿尔法完胜，人类怎么办？', 'http://g.hiphotos.baidu.com/news/crop%3D0%2C1%2C366%2C219%3Bw%3D638/sign=dbc1f8a2962397ddc236c24464b29e86/314e251f95cad1c8197f3d62783e6709c83d51ab.jpg', '我们都知道人工智能迟早赶上人类，只是不愿意也没有料到超越来的怎么快，以致还来不及做好防止下一步...', '2016-03-08'),
(20, 'type1', '猪食金融战：一周斩获三亿利润的背后故事', 'http://b.hiphotos.baidu.com/news/w%3D638/sign=92aaf734560fd9f9a017566a1d2cd42b/902397dda144ad3420d05fcfd7a20cf431ad850f.jpg', '造就：线下剧院式的演讲平台，发现最有创造力的思想。', '2016-03-16');

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
  MODIFY `newsid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
