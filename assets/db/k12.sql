SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";
CREATE TABLE IF NOT EXISTS `tbl_schoolinfo` (`id` varchar(50) NOT NULL,`schoolName` varchar(100) NOT NULL,`region` varchar(50) NOT NULL,`division` varchar(50) NOT NULL,`schoolYear` varchar(20) NOT NULL,`details` varchar(500) NOT NULL COMMENT 'optional detials: picture;banner;description',PRIMARY KEY (`id`)) ENGINE=InnoDB DEFAULT CHARSET=latin1;
CREATE TABLE IF NOT EXISTS `tbl_student` (`id` varchar(50) NOT NULL,`student_id` varchar(20) NOT NULL,`year` varchar(20) NOT NULL,`section` varchar(20) NOT NULL,`date` varchar(20) NOT NULL) ENGINE=InnoDB DEFAULT CHARSET=latin1;
CREATE TABLE IF NOT EXISTS `tbl_studentinfo` (`id` varchar(50) NOT NULL,`family_name` varchar(50) NOT NULL,`given_name` varchar(50) NOT NULL,`middle_name` varchar(50) NOT NULL,`age` varchar(2) NOT NULL,`gender` varchar(10) NOT NULL,`date_of_birth` varchar(10) NOT NULL,`place_of_birth` varchar(100) NOT NULL,`permanent_address` varchar(100) NOT NULL,`citizenship` varchar(20) NOT NULL,`height` varchar(2) NOT NULL,`weight` varchar(2) NOT NULL,`mother_name` varchar(100) NOT NULL,`father_name` varchar(100) NOT NULL,`brother_count` varchar(2) NOT NULL,`sister_count` varchar(2) NOT NULL,`elementary_graduated` varchar(100) NOT NULL,`elementary_yeargraduated` varchar(20) NOT NULL,`picture` varchar(100) NOT NULL,`date` varchar(20) NOT NULL,PRIMARY KEY (`id`)) ENGINE=InnoDB DEFAULT CHARSET=latin1;
CREATE TABLE IF NOT EXISTS `tbl_subject` (`id` varchar(50) NOT NULL,`parent_id` varchar(100) NOT NULL,`subject_code` varchar(20) NOT NULL,`subject_title` varchar(1000) NOT NULL,`subject_discription` varchar(250) NOT NULL,`subject_sort` varchar(2) NOT NULL,PRIMARY KEY (`id`)) ENGINE=InnoDB DEFAULT CHARSET=latin1;
CREATE TABLE IF NOT EXISTS `tbl_user` (`id` varchar(50) NOT NULL,`name` varchar(100) NOT NULL,`username` varchar(50) NOT NULL,`password` varchar(50) NOT NULL,`picture` varchar(60) NOT NULL,`status` int(1) NOT NULL COMMENT 'user level: 1 for admin',PRIMARY KEY (`id`)) ENGINE=InnoDB DEFAULT CHARSET=latin1;
CREATE TABLE IF NOT EXISTS `tbl_yearlevel` (`id` varchar(50) NOT NULL,`title` varchar(250) NOT NULL,`chronological` varchar(2) NOT NULL,PRIMARY KEY (`id`)) ENGINE=InnoDB DEFAULT CHARSET=latin1;
CREATE TABLE IF NOT EXISTS `tbl_grades` (`id` varchar(50) NOT NULL,`scores` text NOT NULL,`highSchore` int(2) NOT NULL,`details` varchar(100) NOT NULL COMMENT 'year,section,subject',`component` varchar(100) NOT NULL COMMENT 'ps,ws,exam') ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO `tbl_user` (`id`, `name`, `username`, `password`, `picture`, `status`) VALUES('01b307acba4f54f55aafc33bb06bbbf6ca803e9a', 'teacher awesome', 'admin', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'avatar.png', 1);