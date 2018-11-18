/*
 Navicat Premium Data Transfer

 Source Server         : 音乐库
 Source Server Type    : MySQL
 Source Server Version : 80012
 Source Host           : localhost:3306
 Source Schema         : music_database

 Target Server Type    : MySQL
 Target Server Version : 80012
 File Encoding         : 65001

 Date: 08/11/2018 12:22:56
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for music_info
-- ----------------------------
DROP TABLE IF EXISTS `music_info`;
CREATE TABLE `music_info`  (
  `music_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `music_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `music_artist` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `songer_id` bigint(255) NOT NULL,
  `music_url` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `music_cover` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `music_lrc` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  PRIMARY KEY (`music_id`) USING BTREE,
  UNIQUE INDEX `OnlyOne`(`music_name`, `music_artist`) USING BTREE,
  INDEX `music_artist`(`music_artist`) USING BTREE,
  CONSTRAINT `fk` FOREIGN KEY (`music_artist`) REFERENCES `songer` (`songer_name`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 84 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of music_info
-- ----------------------------
INSERT INTO `music_info` VALUES (1, '遥远的她', '张学友', 1, 'http://music.163.com/song/media/outer/url?id=191232', 'https://p1.music.126.net/rxyLRMZdqzHdxyP5cl8qQA==/43980465112095.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info` VALUES (2, '慢慢', '张学友', 1, 'http://music.163.com/song/media/outer/url?id=189315', 'https://p2.music.126.net/KkEfoix3ZrxIvJlEcLziow==/84662395339598.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info` VALUES (3, '如果这都不算爱', '张学友', 1, 'http://music.163.com/song/media/outer/url?id=188432', 'https://p2.music.126.net/blZlhdVmYSUwgqSUxFs88Q==/19047939439853431.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info` VALUES (4, '吻别', '张学友', 1, 'http://music.163.com/song/media/outer/url?id=190449', 'https://p1.music.126.net/636SSPpKW0avAqkK1QgzgQ==/43980465112096.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info` VALUES (5, '饿狼传说', '张学友', 1, 'http://music.163.com/song/media/outer/url?id=190270', 'https://p1.music.126.net/CDrwZuKT_D_m8nwnfBGx8Q==/19146895486205137.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info` VALUES (6, '她来听我的演唱会', '张学友', 1, 'http://music.163.com/song/media/outer/url?id=188647', 'https://p1.music.126.net/4ldLVxAApqF56jP_09Lo8Q==/19072128695663955.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info` VALUES (7, '离人', '张学友', 1, 'http://music.163.com/song/media/outer/url?id=109729', 'https://p2.music.126.net/rIZ80-WZ4CadphARCsBPQA==/82463372084040.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info` VALUES (8, '你最珍贵', '张学友', 1, 'http://music.163.com/song/media/outer/url?id=188657', 'https://p1.music.126.net/4EKzVVjcVOwq_QamSKLR5w==/65970697682613.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info` VALUES (9, '一千个伤心的理由', '张学友', 1, 'http://music.163.com/song/media/outer/url?id=189396', 'https://p2.music.126.net/Usn6HdzsooN9USXzVSfXpw==/41781441856579.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info` VALUES (10, '我真的受伤了', '张学友', 1, 'http://music.163.com/song/media/outer/url?id=188429', 'https://p2.music.126.net/blZlhdVmYSUwgqSUxFs88Q==/19047939439853431.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info` VALUES (11, '情书', '张学友', 1, 'http://music.163.com/song/media/outer/url?id=188674', 'https://p2.music.126.net/4EKzVVjcVOwq_QamSKLR5w==/65970697682613.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info` VALUES (12, '秋意浓', '张学友', 1, 'http://music.163.com/song/media/outer/url?id=190473', 'https://p2.music.126.net/636SSPpKW0avAqkK1QgzgQ==/43980465112096.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info` VALUES (13, '情已逝', '张学友', 1, 'http://music.163.com/song/media/outer/url?id=191299', 'https://p2.music.126.net/0Xt_-rA6FR9EpaurwqX9zQ==/19087521858465852.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info` VALUES (14, '心如刀割', '张学友', 1, 'http://music.163.com/song/media/outer/url?id=188671', 'https://p1.music.126.net/4EKzVVjcVOwq_QamSKLR5w==/65970697682613.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info` VALUES (15, '每天爱你多一些', '张学友', 1, 'http://music.163.com/song/media/outer/url?id=190563', 'https://p2.music.126.net/G-C-qam5WcATpN_7zkhxWA==/34084860473101.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info` VALUES (16, '只想一生跟你走', '张学友', 1, 'http://music.163.com/song/media/outer/url?id=189987', 'https://p2.music.126.net/DjxxlvRWV_or_pDjoGuf2w==/109951163402041945.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info` VALUES (17, '夕阳醉了', '张学友', 1, 'http://music.163.com/song/media/outer/url?id=190808', 'https://p1.music.126.net/m28317YZdkHLisb6WXd2Fg==/47279000006622.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info` VALUES (18, '一路上有你', '张学友', 1, 'http://music.163.com/song/media/outer/url?id=188071', 'https://p1.music.126.net/gZ9DY4FX0ON0ayACb0jfSg==/18929192184051580.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info` VALUES (19, '你的名字 我的姓氏', '张学友', 1, 'http://music.163.com/song/media/outer/url?id=110805', 'https://p1.music.126.net/iFpDdS3BUi-imQw6LeL_Zg==/117647744178605.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info` VALUES (20, '祝福', '张学友', 1, 'http://music.163.com/song/media/outer/url?id=190328', 'https://p2.music.126.net/8Dl7OXUOQ1wyJRn-jbVJKw==/109951163413161412.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info` VALUES (21, '等你等到我心痛', '张学友', 1, 'http://music.163.com/song/media/outer/url?id=190360', 'https://p1.music.126.net/4ldLVxAApqF56jP_09Lo8Q==/19072128695663955.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info` VALUES (22, '回头太难', '张学友', 1, 'http://music.163.com/song/media/outer/url?id=189072', 'https://p2.music.126.net/bnqzSQo8kpZseaFO8ERplw==/111050674406320.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info` VALUES (23, '旧情绵绵', '张学友', 1, 'http://music.163.com/song/media/outer/url?id=189714', 'https://p2.music.126.net/8VXjgbrubTdmKqmQdcdK2Q==/79164837212619.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info` VALUES (24, '还是觉得你最好', '张学友', 1, 'http://music.163.com/song/media/outer/url?id=190380', 'https://p2.music.126.net/4ldLVxAApqF56jP_09Lo8Q==/19072128695663955.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info` VALUES (25, '情网', '张学友', 1, 'http://music.163.com/song/media/outer/url?id=190452', 'https://p1.music.126.net/636SSPpKW0avAqkK1QgzgQ==/43980465112096.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info` VALUES (26, '忘情冷雨夜', '张学友', 1, 'http://music.163.com/song/media/outer/url?id=190807', 'https://p1.music.126.net/m28317YZdkHLisb6WXd2Fg==/47279000006622.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info` VALUES (27, '我等到花儿也谢了', '张学友', 1, 'http://music.163.com/song/media/outer/url?id=189873', 'https://p2.music.126.net/KzbFreTvh_rMe1Tco0deZA==/18526770930026108.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info` VALUES (28, '分手总要在雨天', '张学友', 1, 'http://music.163.com/song/media/outer/url?id=190372', 'https://p2.music.126.net/4ldLVxAApqF56jP_09Lo8Q==/19072128695663955.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info` VALUES (29, '想和你去吹吹风', '张学友', 1, 'http://music.163.com/song/media/outer/url?id=189212', 'https://p1.music.126.net/IgjB0oqZmwORYSagqVoJzA==/113249697661874.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info` VALUES (30, '爱我别走', '张学友', 1, 'http://music.163.com/song/media/outer/url?id=185919', 'https://p1.music.126.net/ouTRvQM_RwU5uBtuWrXO7A==/112150186034075.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info` VALUES (31, '春夏秋冬', '张国荣', 2, 'http://music.163.com/song/media/outer/url?id=186453', 'https://p2.music.126.net/2YIpNoCzXfYgz4zIw3s0Vg==/73667279073787.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info` VALUES (32, '当爱已成往事', '张国荣', 2, 'http://music.163.com/song/media/outer/url?id=26620756', 'https://p1.music.126.net/AtMpiqgluHefLF6nD_Pcug==/4417837720418086.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info` VALUES (33, '怪你过份美丽', '张国荣', 2, 'http://music.163.com/song/media/outer/url?id=29343374', 'https://p2.music.126.net/1odRfg3HXWmYw02EMXKRKQ==/116548232557498.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info` VALUES (34, '风继续吹', '张国荣', 2, 'http://music.163.com/song/media/outer/url?id=188489', 'https://p1.music.126.net/FEgl2i8gDkOdppr5Ko3kEA==/69269232562640.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info` VALUES (35, '我', '张国荣', 2, 'http://music.163.com/song/media/outer/url?id=187374', 'https://p2.music.126.net/Sbhanu6TSPEOq655lj34Gg==/98956046505532.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info` VALUES (36, '风再起时', '张国荣', 2, 'http://music.163.com/song/media/outer/url?id=186760', 'https://p1.music.126.net/UI_5fJZa9AHRfJ1AywjSog==/78065325577772.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info` VALUES (37, '但愿人长久', '张国荣', 2, 'http://music.163.com/song/media/outer/url?id=299714', 'https://p2.music.126.net/cPvHx6I7N_lhNry0_5s_fg==/24189255823154.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info` VALUES (38, '沉默是金', '张国荣', 2, 'http://music.163.com/song/media/outer/url?id=188204', 'https://p2.music.126.net/cmvsHFnVKXO409hZdrbacA==/102254581395221.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info` VALUES (39, 'Good Time', 'Owl City', 3, 'http://music.163.com/song/media/outer/url?id=19182328', 'https://p2.music.126.net/c5NVKUIAUcyN4BQUDbGnEg==/109951163221157827.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info` VALUES (40, 'Unbelievable ', 'Owl City', 3, 'http://music.163.com/song/media/outer/url?id=19182328', 'https://p1.music.126.net/7GuSnLBJ2n_9kiqgwStkyg==/7959364674173316.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info` VALUES (41, 'Sailboats', 'Owl City', 3, 'http://music.163.com/song/media/outer/url?id=19182328', 'https://p2.music.126.net/tb8tSgoGi86U53UEfN94cA==/6659741930301805.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info` VALUES (42, 'All About Us', 'Owl City', 3, 'http://music.163.com/song/media/outer/url?id=19182328', 'https://p2.music.126.net/rNnkiesuC2CMV-XAWLwIng==/6667438511891821.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info` VALUES (43, 'Enchanted', 'Owl City', 3, 'http://music.163.com/song/media/outer/url?id=19182328', 'https://p2.music.126.net/sVldYNK2p2Bj3cBU9tkTdQ==/1781208836997917.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info` VALUES (44, 'My Everything', 'Owl City', 3, 'http://music.163.com/song/media/outer/url?id=19182328', 'https://p2.music.126.net/sG7tOqmIdRqY_k5QBveEHA==/16625715324045352.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info` VALUES (45, 'Silhouette', 'Owl City', 3, 'http://music.163.com/song/media/outer/url?id=19182328', 'https://p2.music.126.net/U-gtYs8cHgZU0ZMIxaI2lQ==/6672936069987027.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info` VALUES (46, 'That\'s My Jam', 'Owl City', 3, 'http://music.163.com/song/media/outer/url?id=19182328', 'https://p1.music.126.net/Y1SUpYJBKVRKcmp9KvVNWA==/109951163360034634.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info` VALUES (47, 'Tennis Elbow', 'Owl City', 3, 'http://music.163.com/song/media/outer/url?id=19182328', 'https://p2.music.126.net/tb8tSgoGi86U53UEfN94cA==/6659741930301805.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info` VALUES (48, 'Fireflies', 'Owl City', 3, 'http://music.163.com/song/media/outer/url?id=19182328', 'https://p1.music.126.net/26L9YNhKZmpgne2ep02d0g==/6623458045929678.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info` VALUES (49, 'Shooting Star', 'Owl City', 3, 'http://music.163.com/song/media/outer/url?id=19182328', 'https://p2.music.126.net/U-gtYs8cHgZU0ZMIxaI2lQ==/6672936069987027.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info` VALUES (50, 'Verge', 'Owl City', 3, 'http://music.163.com/song/media/outer/url?id=19182328', 'https://p1.music.126.net/Cgg3ffZiboziAsqPA5xOew==/7974757836885789.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info` VALUES (51, 'Captains Of The Sky', 'Owl City', 3, 'http://music.163.com/song/media/outer/url?id=19182328', 'https://p1.music.126.net/tb8tSgoGi86U53UEfN94cA==/6659741930301805.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info` VALUES (52, 'To the Sky', 'Owl City', 3, 'http://music.163.com/song/media/outer/url?id=19182328', 'https://p1.music.126.net/XXu2KFretdrPamedBr_5Nw==/842225906928516.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info` VALUES (53, 'Cloud Nine', 'Owl City', 3, 'http://music.163.com/song/media/outer/url?id=19182328', 'https://p1.music.126.net/q5EzMf28yROOtdsUQZUXZA==/109951163193149818.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info` VALUES (54, 'Beautiful Times', 'Owl City', 3, 'http://music.163.com/song/media/outer/url?id=19182328', 'https://p1.music.126.net/fx4v-Rop1maKjnXFI_3uFA==/6044015418094279.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info` VALUES (55, 'Fiji Water', 'Owl City', 3, 'http://music.163.com/song/media/outer/url?id=19182328', 'https://p1.music.126.net/T3b4Tob29TUgff2EGFQdVQ==/109951163328000725.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info` VALUES (56, 'Thunderstruck', 'Owl City', 3, 'http://music.163.com/song/media/outer/url?id=19182328', 'https://p1.music.126.net/91VrqTL8imc03lUrSyeyJQ==/7703178465823309.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info` VALUES (57, 'Shine Your Way', 'Owl City', 3, 'http://music.163.com/song/media/outer/url?id=19182328', 'https://p2.music.126.net/c3EiVdcicHCVddlREA0VSA==/109951163440601283.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info` VALUES (58, 'Back Home', 'Owl City', 3, 'http://music.163.com/song/media/outer/url?id=19182328', 'https://p2.music.126.net/91VrqTL8imc03lUrSyeyJQ==/7703178465823309.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info` VALUES (59, 'Ready to Fly', 'Owl City', 3, 'http://music.163.com/song/media/outer/url?id=19182328', 'https://p2.music.126.net/V33SwTy4ccZcoOtUkXxl-Q==/109951163311536993.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info` VALUES (60, 'Hello Seattle', 'Owl City', 3, 'http://music.163.com/song/media/outer/url?id=19182328', 'https://p2.music.126.net/26L9YNhKZmpgne2ep02d0g==/6623458045929678.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info` VALUES (61, 'Vanilla Twilight', 'Owl City', 3, 'http://music.163.com/song/media/outer/url?id=19182328', 'https://p2.music.126.net/26L9YNhKZmpgne2ep02d0g==/6623458045929678.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info` VALUES (62, 'This Isn\'t the End', 'Owl City', 3, 'http://music.163.com/song/media/outer/url?id=19182328', 'https://p1.music.126.net/oMMmPCc101gmVMqxjQ-z6Q==/5820814557666053.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info` VALUES (63, 'All My Friends', 'Owl City', 3, 'http://music.163.com/song/media/outer/url?id=19182328', 'https://p1.music.126.net/dF-G1IloTP5tecFhoB5xCQ==/18213410114683352.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info` VALUES (64, 'Humbug', 'Owl City', 3, 'http://music.163.com/song/media/outer/url?id=19182328', 'https://p2.music.126.net/BhWExknfaH7Tj0GWn4-_rw==/3412884134100030.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info` VALUES (65, 'Rainbow Veins', 'Owl City', 3, 'http://music.163.com/song/media/outer/url?id=19182328', 'https://p2.music.126.net/M6UjnhRpL7SYT7x1q5Xx7g==/6667438511838692.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info` VALUES (66, 'Up All Night', 'Owl City', 3, 'http://music.163.com/song/media/outer/url?id=19182328', 'https://p2.music.126.net/91VrqTL8imc03lUrSyeyJQ==/7703178465823309.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info` VALUES (67, 'New York City', 'Owl City', 3, 'http://music.163.com/song/media/outer/url?id=19182328', 'https://p2.music.126.net/UiT1TRZL6g1OHDqlmqB1QA==/109951163152254454.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info` VALUES (68, 'Embers', 'Owl City', 3, 'http://music.163.com/song/media/outer/url?id=19182328', 'https://p2.music.126.net/U-gtYs8cHgZU0ZMIxaI2lQ==/6672936069987027.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info` VALUES (69, 'Owl', 'Owl City', 3, 'http://music.163.com/song/media/outer/url?id=19182328', 'https://p1.music.126.net/rbgvJahiRhptVoowDzLZPA==/1656964023068724.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info` VALUES (70, 'Tokyo', 'Owl City', 3, 'http://music.163.com/song/media/outer/url?id=19182328', 'https://p1.music.126.net/a5HArF8L_CSxNWM0GRy2Mw==/109951163455967114.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info` VALUES (83, '旗开得胜', '刘德华', 0, 'http://music.163.com/song/media/outer/url?id=5240551', 'https://p2.music.126.net/KrsyMeB_mTNyWcmLHMq9nA==/49478023262281.jpg?param=130y130', 'http://music.163.com/song/media/outer/lrc?id=5240551');

-- ----------------------------
-- Table structure for music_info_copy1
-- ----------------------------
DROP TABLE IF EXISTS `music_info_copy1`;
CREATE TABLE `music_info_copy1`  (
  `music_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `music_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `music_artist` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `songer_id` bigint(255) NOT NULL,
  `music_url` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `music_cover` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `music_lrc` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  PRIMARY KEY (`music_id`) USING BTREE,
  UNIQUE INDEX `OnlyOne`(`music_name`, `music_artist`) USING BTREE,
  INDEX `music_artist`(`music_artist`) USING BTREE,
  CONSTRAINT `music_info_copy1_ibfk_1` FOREIGN KEY (`music_artist`) REFERENCES `songer` (`songer_name`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 83 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of music_info_copy1
-- ----------------------------
INSERT INTO `music_info_copy1` VALUES (1, '遥远的她', '张学友', 1, 'http://music.163.com/song/media/outer/url?id=191232', 'https://p1.music.126.net/rxyLRMZdqzHdxyP5cl8qQA==/43980465112095.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info_copy1` VALUES (2, '慢慢', '张学友', 1, 'http://music.163.com/song/media/outer/url?id=189315', 'https://p2.music.126.net/KkEfoix3ZrxIvJlEcLziow==/84662395339598.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info_copy1` VALUES (3, '如果这都不算爱', '张学友', 1, 'http://music.163.com/song/media/outer/url?id=188432', 'https://p2.music.126.net/blZlhdVmYSUwgqSUxFs88Q==/19047939439853431.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info_copy1` VALUES (4, '吻别', '张学友', 1, 'http://music.163.com/song/media/outer/url?id=190449', 'https://p1.music.126.net/636SSPpKW0avAqkK1QgzgQ==/43980465112096.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info_copy1` VALUES (5, '饿狼传说', '张学友', 1, 'http://music.163.com/song/media/outer/url?id=190270', 'https://p1.music.126.net/CDrwZuKT_D_m8nwnfBGx8Q==/19146895486205137.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info_copy1` VALUES (6, '她来听我的演唱会', '张学友', 1, 'http://music.163.com/song/media/outer/url?song?id=188647', 'https://p1.music.126.net/4ldLVxAApqF56jP_09Lo8Q==/19072128695663955.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info_copy1` VALUES (7, '离人', '张学友', 1, 'http://music.163.com/song/media/outer/url?song?id=109729', 'https://p2.music.126.net/rIZ80-WZ4CadphARCsBPQA==/82463372084040.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info_copy1` VALUES (8, '你最珍贵', '张学友', 1, 'http://music.163.com/song/media/outer/url?id=188657', 'https://p1.music.126.net/4EKzVVjcVOwq_QamSKLR5w==/65970697682613.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info_copy1` VALUES (9, '一千个伤心的理由', '张学友', 1, 'http://music.163.com/song/media/outer/url?id=189396', 'https://p2.music.126.net/Usn6HdzsooN9USXzVSfXpw==/41781441856579.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info_copy1` VALUES (10, '我真的受伤了', '张学友', 1, 'http://music.163.com/song/media/outer/url?id=191232', 'https://p2.music.126.net/blZlhdVmYSUwgqSUxFs88Q==/19047939439853431.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info_copy1` VALUES (11, '情书', '张学友', 1, 'http://music.163.com/song/media/outer/url?id=188674', 'https://p2.music.126.net/4EKzVVjcVOwq_QamSKLR5w==/65970697682613.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info_copy1` VALUES (12, '秋意浓', '张学友', 1, 'http://music.163.com/song/media/outer/url?id=190473', 'https://p2.music.126.net/636SSPpKW0avAqkK1QgzgQ==/43980465112096.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info_copy1` VALUES (13, '情已逝', '张学友', 1, 'http://music.163.com/song/media/outer/url?id=191299', 'https://p2.music.126.net/0Xt_-rA6FR9EpaurwqX9zQ==/19087521858465852.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info_copy1` VALUES (14, '心如刀割', '张学友', 1, 'http://music.163.com/song/media/outer/url?id=188671', 'https://p1.music.126.net/4EKzVVjcVOwq_QamSKLR5w==/65970697682613.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info_copy1` VALUES (15, '每天爱你多一些', '张学友', 1, 'http://music.163.com/song/media/outer/url?id=191232', 'https://p2.music.126.net/G-C-qam5WcATpN_7zkhxWA==/34084860473101.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info_copy1` VALUES (16, '只想一生跟你走', '张学友', 1, 'http://music.163.com/song/media/outer/url?id=189987', 'https://p2.music.126.net/DjxxlvRWV_or_pDjoGuf2w==/109951163402041945.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info_copy1` VALUES (17, '夕阳醉了', '张学友', 1, 'http://music.163.com/song/media/outer/url?id=191232', 'https://p1.music.126.net/m28317YZdkHLisb6WXd2Fg==/47279000006622.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info_copy1` VALUES (18, '一路上有你', '张学友', 1, 'http://music.163.com/song/media/outer/url?id=191232', 'https://p1.music.126.net/gZ9DY4FX0ON0ayACb0jfSg==/18929192184051580.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info_copy1` VALUES (19, '你的名字 我的姓氏', '张学友', 1, 'http://music.163.com/song/media/outer/url?id=191232', 'https://p1.music.126.net/iFpDdS3BUi-imQw6LeL_Zg==/117647744178605.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info_copy1` VALUES (20, '祝福', '张学友', 1, 'http://music.163.com/song/media/outer/url?id=191232', 'https://p2.music.126.net/8Dl7OXUOQ1wyJRn-jbVJKw==/109951163413161412.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info_copy1` VALUES (21, '等你等到我心痛', '张学友', 1, 'http://music.163.com/song/media/outer/url?id=191232', 'https://p1.music.126.net/4ldLVxAApqF56jP_09Lo8Q==/19072128695663955.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info_copy1` VALUES (22, '回头太难', '张学友', 1, 'http://music.163.com/song/media/outer/url?id=191232', 'https://p2.music.126.net/bnqzSQo8kpZseaFO8ERplw==/111050674406320.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info_copy1` VALUES (23, '旧情绵绵', '张学友', 1, 'http://music.163.com/song/media/outer/url?id=191232', 'https://p2.music.126.net/8VXjgbrubTdmKqmQdcdK2Q==/79164837212619.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info_copy1` VALUES (24, '还是觉得你最好', '张学友', 1, 'http://music.163.com/song/media/outer/url?id=191232', 'https://p2.music.126.net/4ldLVxAApqF56jP_09Lo8Q==/19072128695663955.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info_copy1` VALUES (25, '情网', '张学友', 1, 'http://music.163.com/song/media/outer/url?id=191232', 'https://p1.music.126.net/636SSPpKW0avAqkK1QgzgQ==/43980465112096.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info_copy1` VALUES (26, '忘情冷雨夜', '张学友', 1, 'http://music.163.com/song/media/outer/url?id=191232', 'https://p1.music.126.net/m28317YZdkHLisb6WXd2Fg==/47279000006622.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info_copy1` VALUES (27, '我等到花儿也谢了', '张学友', 1, 'http://music.163.com/song/media/outer/url?id=191232', 'https://p2.music.126.net/KzbFreTvh_rMe1Tco0deZA==/18526770930026108.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info_copy1` VALUES (28, '分手总要在雨天', '张学友', 1, 'http://music.163.com/song/media/outer/url?id=191232', 'https://p2.music.126.net/4ldLVxAApqF56jP_09Lo8Q==/19072128695663955.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info_copy1` VALUES (29, '想和你去吹吹风', '张学友', 1, 'http://music.163.com/song/media/outer/url?id=191232', 'https://p1.music.126.net/IgjB0oqZmwORYSagqVoJzA==/113249697661874.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info_copy1` VALUES (30, '爱我别走', '张学友', 1, 'http://music.163.com/song/media/outer/url?id=191232', 'https://p1.music.126.net/ouTRvQM_RwU5uBtuWrXO7A==/112150186034075.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info_copy1` VALUES (31, '春夏秋冬', '张国荣', 2, 'http://music.163.com/song/media/outer/url?id=191232', 'https://p2.music.126.net/2YIpNoCzXfYgz4zIw3s0Vg==/73667279073787.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info_copy1` VALUES (32, '当爱已成往事', '张国荣', 2, 'http://music.163.com/song/media/outer/url?id=191232', 'https://p1.music.126.net/AtMpiqgluHefLF6nD_Pcug==/4417837720418086.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info_copy1` VALUES (33, '怪你过份美丽', '张国荣', 2, 'http://music.163.com/song/media/outer/url?id=191232', 'https://p2.music.126.net/1odRfg3HXWmYw02EMXKRKQ==/116548232557498.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info_copy1` VALUES (34, '风继续吹', '张国荣', 2, 'http://music.163.com/song/media/outer/url?id=191232', 'https://p1.music.126.net/FEgl2i8gDkOdppr5Ko3kEA==/69269232562640.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info_copy1` VALUES (35, '我', '张国荣', 2, 'http://music.163.com/song/media/outer/url?id=191232', 'https://p2.music.126.net/Sbhanu6TSPEOq655lj34Gg==/98956046505532.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info_copy1` VALUES (36, '风再起时', '张国荣', 2, 'http://music.163.com/song/media/outer/url?id=191232', 'https://p1.music.126.net/UI_5fJZa9AHRfJ1AywjSog==/78065325577772.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info_copy1` VALUES (37, '但愿人长久', '张国荣', 2, 'http://music.163.com/song/media/outer/url?id=191232', 'https://p2.music.126.net/cPvHx6I7N_lhNry0_5s_fg==/24189255823154.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info_copy1` VALUES (38, '沉默是金', '张国荣', 2, 'http://music.163.com/song/media/outer/url?id=191232', 'https://p2.music.126.net/cmvsHFnVKXO409hZdrbacA==/102254581395221.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info_copy1` VALUES (39, 'Good Time', 'Owl City', 3, 'http://music.163.com/song/media/outer/url?id=191232', 'https://p2.music.126.net/c5NVKUIAUcyN4BQUDbGnEg==/109951163221157827.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info_copy1` VALUES (40, 'Unbelievable ', 'Owl City', 3, 'http://music.163.com/song/media/outer/url?id=191232', 'https://p1.music.126.net/7GuSnLBJ2n_9kiqgwStkyg==/7959364674173316.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info_copy1` VALUES (41, 'Sailboats', 'Owl City', 3, 'http://music.163.com/song/media/outer/url?id=191232', 'https://p2.music.126.net/tb8tSgoGi86U53UEfN94cA==/6659741930301805.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info_copy1` VALUES (42, 'All About Us', 'Owl City', 3, 'http://music.163.com/song/media/outer/url?id=191232', 'https://p2.music.126.net/rNnkiesuC2CMV-XAWLwIng==/6667438511891821.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info_copy1` VALUES (43, 'Enchanted', 'Owl City', 3, 'http://music.163.com/song/media/outer/url?id=191232', 'https://p2.music.126.net/sVldYNK2p2Bj3cBU9tkTdQ==/1781208836997917.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info_copy1` VALUES (44, 'My Everything', 'Owl City', 3, 'http://music.163.com/song/media/outer/url?id=191232', 'https://p2.music.126.net/sG7tOqmIdRqY_k5QBveEHA==/16625715324045352.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info_copy1` VALUES (45, 'Silhouette', 'Owl City', 3, 'http://music.163.com/song/media/outer/url?id=191232', 'https://p2.music.126.net/U-gtYs8cHgZU0ZMIxaI2lQ==/6672936069987027.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info_copy1` VALUES (46, 'That\'s My Jam', 'Owl City', 3, 'http://music.163.com/song/media/outer/url?id=191232', 'https://p1.music.126.net/Y1SUpYJBKVRKcmp9KvVNWA==/109951163360034634.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info_copy1` VALUES (47, 'Tennis Elbow', 'Owl City', 3, 'http://music.163.com/song/media/outer/url?id=191232', 'https://p2.music.126.net/tb8tSgoGi86U53UEfN94cA==/6659741930301805.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info_copy1` VALUES (48, 'Fireflies', 'Owl City', 3, 'http://music.163.com/song/media/outer/url?id=191232', 'https://p1.music.126.net/26L9YNhKZmpgne2ep02d0g==/6623458045929678.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info_copy1` VALUES (49, 'Shooting Star', 'Owl City', 3, 'http://music.163.com/song/media/outer/url?id=191232', 'https://p2.music.126.net/U-gtYs8cHgZU0ZMIxaI2lQ==/6672936069987027.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info_copy1` VALUES (50, 'Verge', 'Owl City', 3, 'http://music.163.com/song/media/outer/url?id=191232', 'https://p1.music.126.net/Cgg3ffZiboziAsqPA5xOew==/7974757836885789.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info_copy1` VALUES (51, 'Captains Of The Sky', 'Owl City', 3, 'http://music.163.com/song/media/outer/url?id=191232', 'https://p1.music.126.net/tb8tSgoGi86U53UEfN94cA==/6659741930301805.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info_copy1` VALUES (52, 'To the Sky', 'Owl City', 3, 'http://music.163.com/song/media/outer/url?id=191232', 'https://p1.music.126.net/XXu2KFretdrPamedBr_5Nw==/842225906928516.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info_copy1` VALUES (53, 'Cloud Nine', 'Owl City', 3, 'http://music.163.com/song/media/outer/url?id=191232', 'https://p1.music.126.net/q5EzMf28yROOtdsUQZUXZA==/109951163193149818.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info_copy1` VALUES (54, 'Beautiful Times', 'Owl City', 3, 'http://music.163.com/song/media/outer/url?id=191232', 'https://p1.music.126.net/fx4v-Rop1maKjnXFI_3uFA==/6044015418094279.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info_copy1` VALUES (55, 'Fiji Water', 'Owl City', 3, 'http://music.163.com/song/media/outer/url?id=191232', 'https://p1.music.126.net/T3b4Tob29TUgff2EGFQdVQ==/109951163328000725.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info_copy1` VALUES (56, 'Thunderstruck', 'Owl City', 3, 'http://music.163.com/song/media/outer/url?id=191232', 'https://p1.music.126.net/91VrqTL8imc03lUrSyeyJQ==/7703178465823309.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info_copy1` VALUES (57, 'Shine Your Way', 'Owl City', 3, 'http://music.163.com/song/media/outer/url?id=191232', 'https://p2.music.126.net/c3EiVdcicHCVddlREA0VSA==/109951163440601283.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info_copy1` VALUES (58, 'Back Home', 'Owl City', 3, 'http://music.163.com/song/media/outer/url?id=191232', 'https://p2.music.126.net/91VrqTL8imc03lUrSyeyJQ==/7703178465823309.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info_copy1` VALUES (59, 'Ready to Fly', 'Owl City', 3, 'http://music.163.com/song/media/outer/url?id=191232', 'https://p2.music.126.net/V33SwTy4ccZcoOtUkXxl-Q==/109951163311536993.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info_copy1` VALUES (60, 'Hello Seattle', 'Owl City', 3, 'http://music.163.com/song/media/outer/url?id=191232', 'https://p2.music.126.net/26L9YNhKZmpgne2ep02d0g==/6623458045929678.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info_copy1` VALUES (61, 'Vanilla Twilight', 'Owl City', 3, 'http://music.163.com/song/media/outer/url?id=191232', 'https://p2.music.126.net/26L9YNhKZmpgne2ep02d0g==/6623458045929678.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info_copy1` VALUES (62, 'This Isn\'t the End', 'Owl City', 3, 'http://music.163.com/song/media/outer/url?id=191232', 'https://p1.music.126.net/oMMmPCc101gmVMqxjQ-z6Q==/5820814557666053.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info_copy1` VALUES (63, 'All My Friends', 'Owl City', 3, 'http://music.163.com/song/media/outer/url?id=191232', 'https://p1.music.126.net/dF-G1IloTP5tecFhoB5xCQ==/18213410114683352.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info_copy1` VALUES (64, 'Humbug', 'Owl City', 3, 'http://music.163.com/song/media/outer/url?id=191232', 'https://p2.music.126.net/BhWExknfaH7Tj0GWn4-_rw==/3412884134100030.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info_copy1` VALUES (65, 'Rainbow Veins', 'Owl City', 3, 'http://music.163.com/song/media/outer/url?id=191232', 'https://p2.music.126.net/M6UjnhRpL7SYT7x1q5Xx7g==/6667438511838692.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info_copy1` VALUES (66, 'Up All Night', 'Owl City', 3, 'http://music.163.com/song/media/outer/url?id=191232', 'https://p2.music.126.net/91VrqTL8imc03lUrSyeyJQ==/7703178465823309.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info_copy1` VALUES (67, 'New York City', 'Owl City', 3, 'http://music.163.com/song/media/outer/url?id=191232', 'https://p2.music.126.net/UiT1TRZL6g1OHDqlmqB1QA==/109951163152254454.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info_copy1` VALUES (68, 'Embers', 'Owl City', 3, 'http://music.163.com/song/media/outer/url?id=191232', 'https://p2.music.126.net/U-gtYs8cHgZU0ZMIxaI2lQ==/6672936069987027.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info_copy1` VALUES (69, 'Owl', 'Owl City', 3, 'http://music.163.com/song/media/outer/url?id=191232', 'https://p1.music.126.net/rbgvJahiRhptVoowDzLZPA==/1656964023068724.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `music_info_copy1` VALUES (70, 'Tokyo', 'Owl City', 3, 'http://music.163.com/song/media/outer/url?id=191232', 'https://p1.music.126.net/a5HArF8L_CSxNWM0GRy2Mw==/109951163455967114.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');

-- ----------------------------
-- Table structure for songer
-- ----------------------------
DROP TABLE IF EXISTS `songer`;
CREATE TABLE `songer`  (
  `songer_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `songer_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`songer_id`) USING BTREE,
  UNIQUE INDEX `songer_name`(`songer_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of songer
-- ----------------------------
INSERT INTO `songer` VALUES (7, 'Owl City');
INSERT INTO `songer` VALUES (23, '刘德华');
INSERT INTO `songer` VALUES (6, '张国荣');
INSERT INTO `songer` VALUES (5, '张学友');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `user_id` int(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE,
  UNIQUE INDEX `OnlyOne`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (2, '123', 'wocao@gmail.com', '123', '2018-10-27');
INSERT INTO `user` VALUES (5, '123', '53325789@qq.com', '123', '2018-10-27');
INSERT INTO `user` VALUES (6, '123', '15608227823@qq.com', '123', '2018-10-27');
INSERT INTO `user` VALUES (11, '测试', '1234567@qq.com', '123456789', '2018-10-29');
INSERT INTO `user` VALUES (12, '测试2', '1614917448@qq.com', '123', '2018-10-30');
INSERT INTO `user` VALUES (17, 'pubg', '12378979@qq.com', '123', '2018-10-30');
INSERT INTO `user` VALUES (23, 'pubg', '123abc@qq.com', '123456789', '2018-11-01');

-- ----------------------------
-- Table structure for user_collection
-- ----------------------------
DROP TABLE IF EXISTS `user_collection`;
CREATE TABLE `user_collection`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_email` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `music_id` bigint(20) DEFAULT NULL,
  `music_url` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `music_artist` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `music_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `music_cover` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `music_lrc` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `OnlyOne`(`user_email`, `music_artist`, `music_name`) USING BTREE,
  INDEX `user_email`(`user_email`) USING BTREE,
  INDEX `music_name`(`music_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 63 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_collection
-- ----------------------------
INSERT INTO `user_collection` VALUES (60, 'wocao@gmail.com', 1, 'http://music.163.com/song/media/outer/url?id=191232', '张学友', '遥远的她', 'https://p1.music.126.net/rxyLRMZdqzHdxyP5cl8qQA==/43980465112095.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');
INSERT INTO `user_collection` VALUES (61, '123abc@qq.com', 3, 'http://music.163.com/song/media/outer/url?id=188432', '张学友', '如果这都不算爱', 'https://p2.music.126.net/blZlhdVmYSUwgqSUxFs88Q==/19047939439853431.jpg?param=130y130', 'http://music.163.com/api/song/media?id=191232');

SET FOREIGN_KEY_CHECKS = 1;
