-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.31 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table multilanguage.m_lang
DROP TABLE IF EXISTS `m_lang`;
CREATE TABLE IF NOT EXISTS `m_lang` (
  `m_lang_id` int NOT NULL AUTO_INCREMENT,
  `language_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `title_of_the_content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `select_language` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `created_by` int unsigned NOT NULL DEFAULT '0',
  `created_on` datetime NOT NULL DEFAULT (now()),
  `updated_by` int DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`m_lang_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table multilanguage.m_lang: ~15 rows (approximately)
INSERT INTO `m_lang` (`m_lang_id`, `language_code`, `title_of_the_content`, `select_language`, `created_by`, `created_on`, `updated_by`, `updated_on`, `is_deleted`) VALUES
	(1, 'en', 'title', 'Welcome My Dear Friends', 0, '2024-11-26 13:27:13', NULL, NULL, 0),
	(2, 'en', 'greeting', 'Hello, how are you?', 0, '2024-11-26 13:27:13', NULL, NULL, 0),
	(3, 'en', 'select_language', 'Select Language', 0, '2024-11-26 13:27:13', NULL, NULL, 0),
	(4, 'ta', 'title', 'என் அன்பு நண்பர்களே வரவேற்கிறேன்', 0, '2024-11-26 13:27:13', NULL, NULL, 0),
	(5, 'ta', 'greeting', 'வணக்கம், நீங்கள் எப்படி இருக்கிறீர்கள்?', 0, '2024-11-26 13:27:13', NULL, NULL, 0),
	(6, 'ta', 'select_language', 'மொழி தேர்ந்தெடு', 0, '2024-11-26 13:27:13', NULL, NULL, 0),
	(7, 'kn', 'title', 'ನನ್ನ ಪ್ರಿಯ ಸ್ನೇಹಿತರೆ, ಸ್ವಾಗತ', 0, '2024-11-26 13:27:13', NULL, NULL, 0),
	(8, 'kn', 'greeting', 'ಹೇ, ನೀವು ಹೇಗಿದ್ದೀರಿ?', 0, '2024-11-26 13:27:13', NULL, NULL, 0),
	(9, 'kn', 'select_language', 'ಭಾಷೆ ಆಯ್ಕೆಮಾಡಿ', 0, '2024-11-26 13:27:13', NULL, NULL, 0),
	(10, 'ml', 'title', 'എന്റെ പ്രിയപ്പെട്ട സുഹൃത്തുക്കളെ സ്വാഗതം', 0, '2024-11-26 13:27:13', NULL, NULL, 0),
	(11, 'ml', 'greeting', 'ഹലോ, നിങ്ങള് എങ്ങനെയാണ്?', 0, '2024-11-26 13:27:13', NULL, NULL, 0),
	(12, 'ml', 'select_language', 'ഭാഷ തിരഞ്ഞെടുക്കുക', 0, '2024-11-26 13:27:13', NULL, NULL, 0),
	(13, 'te', 'title', 'నా ప్రియమైన స్నేహితులారా, స్వాగతం', 0, '2024-11-26 13:27:13', NULL, NULL, 0),
	(14, 'te', 'greeting', 'హలో, మీరు ఎలా ఉన్నారు?', 0, '2024-11-26 13:27:13', NULL, NULL, 0),
	(15, 'te', 'select_language', 'భాష ఎంచుకోండి', 0, '2024-11-26 13:27:13', NULL, NULL, 0);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
