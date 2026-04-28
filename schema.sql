-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: hackday
-- ------------------------------------------------------
-- Server version	8.0.42

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `alert`
--

DROP TABLE IF EXISTS `alert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alert` (
  `alert_id` int NOT NULL AUTO_INCREMENT,
  `alert_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `username` varchar(100) NOT NULL,
  `alert_description` text NOT NULL,
  `ALERT_TITLE` text,
  PRIMARY KEY (`alert_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alert`
--

LOCK TABLES `alert` WRITE;
/*!40000 ALTER TABLE `alert` DISABLE KEYS */;
INSERT INTO `alert` VALUES (1,'2025-12-04 19:16:17','IT_Admin','The student portal server will be offline for planned maintenance on Saturday, 2025-12-06, from 2:00 AM to 5:00 AM IST. Please save all work.','Server Maintenance Scheduled'),(2,'2025-12-04 19:16:17','Principal','All teaching staff must attend a mandatory meeting regarding the new curriculum on Monday, 2025-12-08, at 3:30 PM in the Main Auditorium.','Mandatory Staff Meeting'),(3,'2025-12-04 19:16:17','Registrar','The deadline for all late undergraduate application submissions is being strictly enforced this Friday, 2025-12-05. No exceptions will be made after 5:00 PM.','Admissions Deadline Alert'),(4,'2025-12-04 19:16:17','Library_Staff','A lost backpack containing textbooks and a key fob was turned in at the main library desk. The owner can claim it with proper ID.','Lost Property Found'),(5,'2025-12-04 19:16:17','Security','A campus-wide fire drill will be conducted at 11:00 AM today. Please follow all evacuation procedures and instructions from floor wardens.','Emergency Drill Today');
/*!40000 ALTER TABLE `alert` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class`
--

DROP TABLE IF EXISTS `class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class` (
  `CLASSNAME` varchar(50) DEFAULT NULL,
  `TOTALSTUDENTS` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class`
--

LOCK TABLES `class` WRITE;
/*!40000 ALTER TABLE `class` DISABLE KEYS */;
INSERT INTO `class` VALUES ('DATA SCIENCE',NULL),('COMPUTER SCIENCE',200),('IT',150),('AIML',170),('AIDS',130),('AI',98);
/*!40000 ALTER TABLE `class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `director`
--

DROP TABLE IF EXISTS `director`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `director` (
  `EMAIL` varchar(50) DEFAULT NULL,
  `NAME` varchar(50) DEFAULT NULL,
  `PASSWORD` varchar(50) DEFAULT NULL,
  `MOBILE` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `director`
--

LOCK TABLES `director` WRITE;
/*!40000 ALTER TABLE `director` DISABLE KEYS */;
INSERT INTO `director` VALUES ('arjun.mehta@gmail.com','Arjun Mehta','Arjun@123',9876543210),('priya.sharma@yahoo.com','Priya Sharma','Priya#456',9123456789),('rahul.verma@outlook.com','Rahul Verma','Rahul$789',9988776655),('sneha.kapoor@gmail.com','Sneha Kapoor','Sneha@321',9765432109),('vikas.jain@hotmail.com','Vikas Jain','Vikas#654',9345678901),('anita.singh@gmail.com','Anita Singh','Anita$987',9456123789),('rohan.patel@yahoo.com','Rohan Patel','Rohan@111',9234567890),('neha.gupta@outlook.com','Neha Gupta','Neha#222',9321654789),('amit.kumar@gmail.com','Amit Kumar','Amit$333',9876123450),('kavita.menon@hotmail.com','Kavita Menon','Kavita@444',9567890123);
/*!40000 ALTER TABLE `director` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mcq_questions`
--

DROP TABLE IF EXISTS `mcq_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mcq_questions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `test_id` int DEFAULT NULL,
  `question` text,
  `option_a` text,
  `option_b` text,
  `option_c` text,
  `option_d` text,
  `correct_answer` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mcq_questions`
--

LOCK TABLES `mcq_questions` WRITE;
/*!40000 ALTER TABLE `mcq_questions` DISABLE KEYS */;
INSERT INTO `mcq_questions` VALUES (1,1,'Which of this is not a ML algorithm ','Binary searcch','linear regression','decision Tree','XGboost','A');
/*!40000 ALTER TABLE `mcq_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parent`
--

DROP TABLE IF EXISTS `parent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parent` (
  `EMAIL` varchar(50) DEFAULT NULL,
  `NAME` varchar(50) DEFAULT NULL,
  `PASSWORD` varchar(50) DEFAULT NULL,
  `MOBILE` bigint DEFAULT NULL,
  `CHILDROLL` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parent`
--

LOCK TABLES `parent` WRITE;
/*!40000 ALTER TABLE `parent` DISABLE KEYS */;
INSERT INTO `parent` VALUES ('rahul.sharma@gmail.com','Rahul Sharma','rahul123',9876543210,'C101'),('anita.verma@yahoo.com','Anita Verma','anita@2024',9123456780,'C102'),('vikas.patel@hotmail.com','Vikas Patel','vikas_pass',9988776655,'C103'),('meena.kapoor@gmail.com','Meena Kapoor','meena@pwd',9765432109,'C104'),('arjun.singh@yahoo.com','Arjun Singh','arjun@321',9345678901,'C105'),('pooja.mishra@gmail.com','Pooja Mishra','pooja@pass',9456123789,'C106'),('suresh.kumar@hotmail.com','Suresh Kumar','suresh@pwd',9321456789,'C107'),('neha.jain@gmail.com','Neha Jain','neha@2025',9876123450,'C108'),('amit.bhatt@yahoo.com','Amit Bhatt','amit@pass',9234567890,'C109'),('sunita.rao@gmail.com','Sunita Rao','sunita@pwd',9356789012,'C110'),('deepak.gupta@hotmail.com','Deepak Gupta','deepak@123',9876543201,'C111'),('rekha.shah@gmail.com','Rekha Shah','rekha@pwd',9123456701,'C112'),('manoj.yadav@yahoo.com','Manoj Yadav','manoj@pass',9345678123,'C113'),('kavita.mehta@gmail.com','Kavita Mehta','kavita@pwd',9456789012,'C114'),('rohit.kapoor@hotmail.com','Rohit Kapoor','rohit@2025',9765432190,'C115'),('swati.bose@gmail.com','Swati Bose','swati@pwd',9321456790,'C116'),('alok.sen@yahoo.com','Alok Sen','alok@pass',9876123490,'C117'),('geeta.nair@gmail.com','Geeta Nair','geeta@pwd',9234567810,'C118'),('pradeep.malhotra@hotmail.com','Pradeep Malhotra','pradeep@123',9356789021,'C119'),('shilpa.kulkarni@gmail.com','Shilpa Kulkarni','shilpa@pwd',9876543219,'C120');
/*!40000 ALTER TABLE `parent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `test_id` int DEFAULT NULL,
  `question` text,
  `option_a` text,
  `option_b` text,
  `option_c` text,
  `option_d` text,
  `correct_option` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `test_id` (`test_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `results`
--

DROP TABLE IF EXISTS `results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `results` (
  `id` int NOT NULL AUTO_INCREMENT,
  `student_id` int DEFAULT NULL,
  `test_id` int DEFAULT NULL,
  `score` int DEFAULT NULL,
  `total` int DEFAULT NULL,
  `percentage` decimal(5,2) DEFAULT NULL,
  `taken_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `student_id` (`student_id`),
  KEY `test_id` (`test_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `results`
--

LOCK TABLES `results` WRITE;
/*!40000 ALTER TABLE `results` DISABLE KEYS */;
/*!40000 ALTER TABLE `results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stuatt`
--

DROP TABLE IF EXISTS `stuatt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stuatt` (
  `roll` int DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `STATUS` enum('Present','Absent') DEFAULT 'Absent',
  `date` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stuatt`
--

LOCK TABLES `stuatt` WRITE;
/*!40000 ALTER TABLE `stuatt` DISABLE KEYS */;
INSERT INTO `stuatt` VALUES (1001,'AADARSH MALVIYA',NULL,NULL),(1002,'AASHI PATEL',NULL,NULL),(1003,'ABHAY TIWARI',NULL,NULL),(1004,'ADARSH DUBEY',NULL,NULL),(1111,'ROHIT',NULL,NULL);
/*!40000 ALTER TABLE `stuatt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `NAME` varchar(100) NOT NULL,
  `ROLL` int NOT NULL,
  `CLASS` varchar(50) DEFAULT NULL,
  `PARENT_EMAIL` varchar(50) DEFAULT NULL,
  `PARENT_NAME` varchar(50) DEFAULT NULL,
  `STUDENT_MOBILE` bigint DEFAULT NULL,
  PRIMARY KEY (`ROLL`),
  UNIQUE KEY `ROLL` (`ROLL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES ('AADARSH MALVIYA',1001,NULL,NULL,NULL,NULL),('AASHI PATEL',1002,NULL,NULL,NULL,NULL),('ABHAY TIWARI',1003,NULL,NULL,NULL,NULL),('ADARSH DUBEY',1004,NULL,NULL,NULL,NULL),('ROHIT',1111,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_answers`
--

DROP TABLE IF EXISTS `student_answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_answers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `student_id` int DEFAULT NULL,
  `test_id` int DEFAULT NULL,
  `question_id` int DEFAULT NULL,
  `selected_option` varchar(1) DEFAULT NULL,
  `is_correct` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `student_id` (`student_id`),
  KEY `test_id` (`test_id`),
  KEY `question_id` (`question_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_answers`
--

LOCK TABLES `student_answers` WRITE;
/*!40000 ALTER TABLE `student_answers` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject`
--

DROP TABLE IF EXISTS `subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subject` (
  `SUBID` varchar(50) NOT NULL,
  `SUBJECT_NAME` varchar(50) DEFAULT NULL,
  `COURSE` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`SUBID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject`
--

LOCK TABLES `subject` WRITE;
/*!40000 ALTER TABLE `subject` DISABLE KEYS */;
/*!40000 ALTER TABLE `subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teacher` (
  `EMAIL` varchar(50) DEFAULT NULL,
  `NAME` varchar(50) DEFAULT NULL,
  `PASSWORD` varchar(50) DEFAULT NULL,
  `TEACHERID` int NOT NULL,
  PRIMARY KEY (`TEACHERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher`
--

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` VALUES ('alice.smith@example.com','Alice Smith','pass123',1),('bob.jones@example.com','Bob Jones','secure456',2),('carol.wilson@example.com','Carol Wilson','mypwd789',3),('david.brown@example.com','David Brown','brown2025',4),('emma.davis@example.com','Emma Davis','emmaPass',5),('frank.miller@example.com','Frank Miller','frankPwd',6),('grace.moore@example.com','Grace Moore','graceKey',7),('henry.taylor@example.com','Henry Taylor','henryLock',8),('isabel.anderson@example.com','Isabel Anderson','isaPwd',9),('jack.thomas@example.com','Jack Thomas','jackSecure',10),('kate.jackson@example.com','Kate Jackson','katePass',11),('liam.white@example.com','Liam White','liamPwd',12),('mia.harris@example.com','Mia Harris','miaKey',13),('noah.martin@example.com','Noah Martin','noahLock',14),('olivia.thompson@example.com','Olivia Thompson','oliviaPwd',15),('paul.garcia@example.com','Paul Garcia','paulPass',16),('quinn.clark@example.com','Quinn Clark','quinnPwd',17),('ruby.lewis@example.com','Ruby Lewis','rubyKey',18),('samuel.walker@example.com','Samuel Walker','samPwd',19),('tina.hall@example.com','Tina Hall','tinaPass',20),('aarav.kulkarni@gmail.com','Aarav Kulkarni','Aarav@123',201),('isha.ramachandran@yahoo.com','Isha Ramachandran','Isha#456',202),('kabir.malhotra@outlook.com','Kabir Malhotra','Kabir$789',203),('tanvi.desai@gmail.com','Tanvi Desai','Tanvi@321',204),('advait.iyer@hotmail.com','Advait Iyer','Advait#654',205),('riya.chatterjee@gmail.com','Riya Chatterjee','Riya$987',206),('veer.shetty@yahoo.com','Veer Shetty','Veer@111',207),('simran.bose@outlook.com','Simran Bose','Simran#222',208),('arvind.nair@gmail.com','Arvind Nair','Arvind$333',209),('lavanya.reddy@hotmail.com','Lavanya Reddy','Lavanya@444',210),('nishant.ghosh@gmail.com','Nishant Ghosh','Nishant@555',211),('aanya.pillai@yahoo.com','Aanya Pillai','Aanya#666',212),('yash.mehta@outlook.com','Yash Mehta','Yash$777',213),('sanya.rao@gmail.com','Sanya Rao','Sanya@888',214),('parth.banerjee@hotmail.com','Parth Banerjee','Parth#999',215),('mira.joshi@gmail.com','Mira Joshi','Mira@000',216),('devansh.singhania@yahoo.com','Devansh Singhania','Devansh#123',217),('anaya.trivedi@outlook.com','Anaya Trivedi','Anaya$456',218),('krishna.das@gmail.com','Krishna Das','Krishna@789',219),('megha.kashyap@hotmail.com','Megha Kashyap','Megha#321',220);
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher_subject`
--

DROP TABLE IF EXISTS `teacher_subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teacher_subject` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `TEACHERID` int DEFAULT NULL,
  `SUBID` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `TEACHERID` (`TEACHERID`),
  KEY `SUBID` (`SUBID`),
  CONSTRAINT `teacher_subject_ibfk_1` FOREIGN KEY (`TEACHERID`) REFERENCES `teacher` (`TEACHERID`),
  CONSTRAINT `teacher_subject_ibfk_2` FOREIGN KEY (`SUBID`) REFERENCES `subject` (`SUBID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher_subject`
--

LOCK TABLES `teacher_subject` WRITE;
/*!40000 ALTER TABLE `teacher_subject` DISABLE KEYS */;
/*!40000 ALTER TABLE `teacher_subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tests`
--

DROP TABLE IF EXISTS `tests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tests` (
  `id` int NOT NULL AUTO_INCREMENT,
  `test_name` varchar(100) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tests`
--

LOCK TABLES `tests` WRITE;
/*!40000 ALTER TABLE `tests` DISABLE KEYS */;
INSERT INTO `tests` VALUES (1,'ML','Mid sem test'),(2,'ML','MId sem test');
/*!40000 ALTER TABLE `tests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `USEREMAIL` varchar(50) DEFAULT NULL,
  `PASSWORD` varchar(50) DEFAULT NULL,
  `ROLE` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `written_questions`
--

DROP TABLE IF EXISTS `written_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `written_questions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `test_id` int DEFAULT NULL,
  `question` text,
  PRIMARY KEY (`id`),
  KEY `test_id` (`test_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `written_questions`
--

LOCK TABLES `written_questions` WRITE;
/*!40000 ALTER TABLE `written_questions` DISABLE KEYS */;
/*!40000 ALTER TABLE `written_questions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-07 20:18:42
