-- MariaDB dump 10.19  Distrib 10.4.18-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: aps1
-- ------------------------------------------------------
-- Server version	10.4.18-MariaDB-1:10.4.18+maria~focal

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ALUNO`
--

DROP TABLE IF EXISTS `ALUNO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ALUNO` (
  `ID` char(36) NOT NULL,
  `USUARIO_FK` char(36) NOT NULL,
  `CURSO_FK` char(36) NOT NULL,
  `CRIACAO` timestamp NOT NULL DEFAULT current_timestamp(),
  `ATUALIZACAO` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`ID`),
  KEY `ALUNO_CURSO_FK` (`CURSO_FK`),
  KEY `ALUNO_USUARIO_FK` (`USUARIO_FK`),
  CONSTRAINT `ALUNO_CURSO_FK` FOREIGN KEY (`CURSO_FK`) REFERENCES `CURSO` (`ID`),
  CONSTRAINT `ALUNO_USUARIO_FK` FOREIGN KEY (`USUARIO_FK`) REFERENCES `USUARIO` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ALUNO`
--

LOCK TABLES `ALUNO` WRITE;
/*!40000 ALTER TABLE `ALUNO` DISABLE KEYS */;
INSERT INTO `ALUNO` VALUES ('02b49250-febc-5f30-936d-6ce00a7419d3','cf40ac61-c109-5a32-ad2b-5f5aa45b8ce1','198d616f-b2c9-56de-87a1-867bd13cf787','2021-04-13 00:57:23','2021-04-13 00:57:23'),('05c77d45-fe40-57cd-993e-821402718577','17abea00-1822-5f4e-b21d-cdd9abd791ac','dc8c081b-4370-5a9e-9662-48a96a0e3ccc','2021-04-13 00:57:23','2021-04-13 00:57:23'),('06026820-c062-55e8-b983-f25e98260b54','53737df1-2122-5187-a971-f86acbee1311','1bf25ec1-6567-5e7d-b562-f9266741bbee','2021-04-13 00:57:23','2021-04-13 00:57:23'),('0ea360b9-5d51-5be5-9859-e909a28bfa5c','52caf2bf-2542-5e96-9e6a-c2c2d32b7a2b','dc8c081b-4370-5a9e-9662-48a96a0e3ccc','2021-04-13 00:57:23','2021-04-13 00:57:23'),('10b18e6e-b12d-5c28-983b-bad5495f42b6','de1253f7-6b34-5c1b-ab4d-387953625c23','198d616f-b2c9-56de-87a1-867bd13cf787','2021-04-13 00:57:23','2021-04-13 00:57:23'),('12192438-15c5-56f2-8bd3-4998d7f5985c','79e9f588-fa56-55df-89d8-d50881b5973e','198d616f-b2c9-56de-87a1-867bd13cf787','2021-04-13 00:57:23','2021-04-13 00:57:23'),('1d5c2550-117a-5c9f-b503-72332c476ad5','49024905-b657-5b52-9246-444bfafd382a','e92954be-4477-5a85-b83d-7cbf6d1a90cc','2021-04-13 00:57:23','2021-04-13 00:57:23'),('210b71ed-6336-54ae-a004-e4319f69b075','c8f09c22-8cdd-56fc-bacc-41b5000a4df5','198d616f-b2c9-56de-87a1-867bd13cf787','2021-04-13 00:57:23','2021-04-13 00:57:23'),('213694a7-098b-5b78-81fa-ff41cc7bfb63','1c798fd1-7d79-5bdd-b72e-f4710114d06c','198d616f-b2c9-56de-87a1-867bd13cf787','2021-04-13 00:57:23','2021-04-13 00:57:23'),('24c695e9-2be5-5125-9f78-95911d048596','9b7f50e9-8392-57a0-921e-16313273e224','1bf25ec1-6567-5e7d-b562-f9266741bbee','2021-04-13 00:57:23','2021-04-13 00:57:23'),('2621a606-8ae5-56dd-a014-a240c04641f7','791e93b9-fdd9-5b1c-a635-8cdfc57f9a32','198d616f-b2c9-56de-87a1-867bd13cf787','2021-04-13 00:57:23','2021-04-13 00:57:23'),('262eaaac-ed08-50a0-9144-3c3a8ed5516f','79cf4b96-179b-579f-b09a-498322032d2d','1bf25ec1-6567-5e7d-b562-f9266741bbee','2021-04-13 00:57:23','2021-04-13 00:57:23'),('281b7a21-1c63-5e31-b688-386460132a37','bf9cdc6c-970d-5eb3-bb53-584fc1ab5764','dc8c081b-4370-5a9e-9662-48a96a0e3ccc','2021-04-13 00:57:23','2021-04-13 00:57:23'),('2fab5999-14b3-5a7d-a243-b4206c78053d','44e7b080-3cec-586d-8a1d-91dad89e5655','1bf25ec1-6567-5e7d-b562-f9266741bbee','2021-04-13 00:57:23','2021-04-13 00:57:23'),('30e550b8-9f7f-5b48-98a6-14a0fd859104','28f8a368-f8e4-5229-8994-8fdd35ed9e28','1bf25ec1-6567-5e7d-b562-f9266741bbee','2021-04-13 00:57:23','2021-04-13 00:57:23'),('33f066cb-c99a-5e70-a946-113dde0b86f5','e25e2158-0d6a-505b-bc0a-b56911a20ba2','e92954be-4477-5a85-b83d-7cbf6d1a90cc','2021-04-13 00:57:23','2021-04-13 00:57:23'),('352c971c-9cd5-5dbe-98a9-39dc8e3b425e','9792704b-f181-5b47-a625-36b7f3a40c8c','dc8c081b-4370-5a9e-9662-48a96a0e3ccc','2021-04-13 00:57:23','2021-04-13 00:57:23'),('368e1790-dc1b-5d3e-9835-5cbd4e792ae2','224bea20-c20e-55e5-8187-769741bbe16f','1bf25ec1-6567-5e7d-b562-f9266741bbee','2021-04-13 00:57:23','2021-04-13 00:57:23'),('37efc318-ea14-5abc-a832-053881f1c75d','7d87ba8e-02a1-5d2b-a880-814407a7dfc9','1bf25ec1-6567-5e7d-b562-f9266741bbee','2021-04-13 00:57:23','2021-04-13 00:57:23'),('3c0f2a3f-9506-5288-9814-ba2e0aadd7db','51241cba-9f27-547e-ae01-af170330e3b5','198d616f-b2c9-56de-87a1-867bd13cf787','2021-04-13 00:57:23','2021-04-13 00:57:23'),('42ab0dca-856e-50f2-b916-662be677e6d4','9bf5d965-f349-5cef-ba28-67bd9a2216ce','1bf25ec1-6567-5e7d-b562-f9266741bbee','2021-04-13 00:57:23','2021-04-13 00:57:23'),('4409bd33-1939-5121-943e-ecf66ca25583','dbe07f56-3ac3-5685-87f7-9fbf2c00627b','198d616f-b2c9-56de-87a1-867bd13cf787','2021-04-13 00:57:23','2021-04-13 00:57:23'),('46c708c8-5463-5bff-95a1-c0e0c41cdc4c','d8d536fe-0beb-52a8-a6bb-89dadb93651b','e92954be-4477-5a85-b83d-7cbf6d1a90cc','2021-04-13 00:57:23','2021-04-13 00:57:23'),('475807d7-e6b9-5162-a58e-12f4d3d197a2','171fbbb6-b613-5b1c-909e-6136da1b56be','1bf25ec1-6567-5e7d-b562-f9266741bbee','2021-04-13 00:57:23','2021-04-13 00:57:23'),('495504b2-7ff9-5a00-8951-836db5f3fa97','4627e2ae-9fc7-5a16-84d6-340efc8b542d','198d616f-b2c9-56de-87a1-867bd13cf787','2021-04-13 00:57:23','2021-04-13 00:57:23'),('4985f8f5-7b9f-5cb7-95d5-412b53bd6c7c','bc8c90cf-76c7-5ea3-846c-dd1864c908cb','e92954be-4477-5a85-b83d-7cbf6d1a90cc','2021-04-13 00:57:23','2021-04-13 00:57:23'),('516920aa-8778-5ca6-9b94-d0f6e7947263','5a2aa51c-685b-5948-bcd3-f75f4b53ebc0','198d616f-b2c9-56de-87a1-867bd13cf787','2021-04-13 00:57:23','2021-04-13 00:57:23'),('54d871c7-8dd3-5ef8-b17c-399c0d50ccd4','bd85fd9e-ed04-5eb2-b52a-d5104252ffda','dc8c081b-4370-5a9e-9662-48a96a0e3ccc','2021-04-13 00:57:23','2021-04-13 00:57:23'),('5a42f24a-f8b6-58ed-89f4-3746b31386a1','4c522bba-9507-5df6-b0c7-53e875084602','1bf25ec1-6567-5e7d-b562-f9266741bbee','2021-04-13 00:57:23','2021-04-13 00:57:23'),('5c092e3e-f2e1-5489-a520-f4a5a5199f94','2227fdf3-195c-5e4f-a48e-f9a85ddc9a8c','198d616f-b2c9-56de-87a1-867bd13cf787','2021-04-13 00:57:23','2021-04-13 00:57:23'),('65382dd3-5dc9-5558-9c85-bd4e679817fa','0e5a1385-ed92-5307-978e-18fc9cdf8e5d','e92954be-4477-5a85-b83d-7cbf6d1a90cc','2021-04-13 00:57:23','2021-04-13 00:57:23'),('6f13fd07-a8a8-52d4-8aa5-201617f56c6b','529398d1-2a2b-5d7d-a789-586cf3db90f6','198d616f-b2c9-56de-87a1-867bd13cf787','2021-04-13 00:57:23','2021-04-13 00:57:23'),('7443bf96-6d58-52c3-9d53-52cc90ba66be','35751f92-f885-519b-a6a4-4115b9eec41f','1bf25ec1-6567-5e7d-b562-f9266741bbee','2021-04-13 00:57:23','2021-04-13 00:57:23'),('762bf295-08dc-5540-98d2-7de7a2278375','b50ee465-bd8d-5b99-8754-d5d65270c66d','198d616f-b2c9-56de-87a1-867bd13cf787','2021-04-13 00:57:23','2021-04-13 00:57:23'),('7b9442d3-ce13-5216-8e2c-92aa2a2de832','f5a0cde2-5f99-55e8-9697-a89721b413ea','1bf25ec1-6567-5e7d-b562-f9266741bbee','2021-04-13 00:57:23','2021-04-13 00:57:23'),('83382e64-2680-51bc-bc43-0251c0b7a6d7','7feb404b-c78c-508b-9753-b5f6d88d3c11','dc8c081b-4370-5a9e-9662-48a96a0e3ccc','2021-04-13 00:57:23','2021-04-13 00:57:23'),('83caef16-1d29-57b9-96aa-689fd3539598','49eaa6df-b5e3-5631-ba22-b2f9dc85baa2','dc8c081b-4370-5a9e-9662-48a96a0e3ccc','2021-04-13 00:57:23','2021-04-13 00:57:23'),('876b5217-9b0c-5fb9-871f-0acf28ac3c39','2d02150c-91ef-5117-9546-0771e982048f','e92954be-4477-5a85-b83d-7cbf6d1a90cc','2021-04-13 00:57:23','2021-04-13 00:57:23'),('87dc5003-d00e-5ea9-ae03-5038d6a0d5df','d61c659b-a930-5776-8ff3-99152b6664ff','e92954be-4477-5a85-b83d-7cbf6d1a90cc','2021-04-13 00:57:23','2021-04-13 00:57:23'),('880fc01c-c41a-5bf0-896f-4232e4d54357','3613b8d1-92d4-5d93-8d22-8c568eeaa859','e92954be-4477-5a85-b83d-7cbf6d1a90cc','2021-04-13 00:57:23','2021-04-13 00:57:23'),('882142c7-3403-5bd2-87bb-a5473de60f40','164e5597-8f67-505b-afda-c5fc990fc223','dc8c081b-4370-5a9e-9662-48a96a0e3ccc','2021-04-13 00:57:23','2021-04-13 00:57:23'),('8cb4031d-2a18-5edd-944a-15cecd5cfa95','602cf1b5-668a-5a44-b52a-986ad78707d1','1bf25ec1-6567-5e7d-b562-f9266741bbee','2021-04-13 00:57:23','2021-04-13 00:57:23'),('8d1bde68-a90c-50f9-b3bb-8f1b4ebd2e23','f59580f0-402b-59b3-b5d6-66cf544fcfd5','198d616f-b2c9-56de-87a1-867bd13cf787','2021-04-13 00:57:23','2021-04-13 00:57:23'),('8d57ac44-5e3a-5df2-b8cc-3ed31b6ec70e','99627b55-aa92-59ba-a766-d64f67e7a53f','198d616f-b2c9-56de-87a1-867bd13cf787','2021-04-13 00:57:23','2021-04-13 00:57:23'),('90e770fa-e1ea-536d-a3b9-17dd33b5c853','7a1315fd-40ff-539f-ba37-9638440a6060','1bf25ec1-6567-5e7d-b562-f9266741bbee','2021-04-13 00:57:23','2021-04-13 00:57:23'),('940d4e04-198f-56f6-be07-7dcabff9c6fe','b750376e-1898-5014-b7e0-c020f4c92e6a','198d616f-b2c9-56de-87a1-867bd13cf787','2021-04-13 00:57:23','2021-04-13 00:57:23'),('95526273-4bfd-57fe-be78-9d9a2ecb07e9','6c725876-225a-51fa-ab14-85da17ebf5fe','1bf25ec1-6567-5e7d-b562-f9266741bbee','2021-04-13 00:57:23','2021-04-13 00:57:23'),('9a0f5de9-cad6-528f-bf36-77a21a23f4c8','439ea939-0d35-5353-8df8-5e0f4a179e37','1bf25ec1-6567-5e7d-b562-f9266741bbee','2021-04-13 00:57:23','2021-04-13 00:57:23'),('9af2bd6f-ebc4-5781-a7db-9c2f6310afeb','ebdb0553-eaea-520f-9a99-86b34fec04c4','dc8c081b-4370-5a9e-9662-48a96a0e3ccc','2021-04-13 00:57:23','2021-04-13 00:57:23'),('9b453500-fa10-5dd0-9b35-eba314d1b5e4','10b59982-9d75-5b2d-aa75-eb21542b618e','dc8c081b-4370-5a9e-9662-48a96a0e3ccc','2021-04-13 00:57:23','2021-04-13 00:57:23'),('9d7e965a-41e2-5c8b-bcbb-85872f9ec478','84ad80be-00d1-52fe-b050-6a87e5f180a5','1bf25ec1-6567-5e7d-b562-f9266741bbee','2021-04-13 00:57:23','2021-04-13 00:57:23'),('a599a10f-56d5-5439-9bf6-9854397f2130','d22a83e4-4d37-57e5-91f5-16400584e256','e92954be-4477-5a85-b83d-7cbf6d1a90cc','2021-04-13 00:57:23','2021-04-13 00:57:23'),('a62366a9-8987-5f6a-a11a-e25ed19e6796','58e484fb-10c3-5b63-8a2f-51ed34209cfa','e92954be-4477-5a85-b83d-7cbf6d1a90cc','2021-04-13 00:57:23','2021-04-13 00:57:23'),('a8234a68-99b2-5951-8977-b1014a523abe','2db14516-d894-5c88-bb4f-2c29c19944c8','dc8c081b-4370-5a9e-9662-48a96a0e3ccc','2021-04-13 00:57:23','2021-04-13 00:57:23'),('acb58fce-5e76-58db-85c6-0d84ee0f8c77','170d3e4d-6015-53e9-b550-664128e478f2','198d616f-b2c9-56de-87a1-867bd13cf787','2021-04-13 00:57:23','2021-04-13 00:57:23'),('b19428a1-798b-5f1b-a91d-b35036f75dc5','c980fe61-e95b-57c8-9d4f-f2d6d761a802','dc8c081b-4370-5a9e-9662-48a96a0e3ccc','2021-04-13 00:57:23','2021-04-13 00:57:23'),('b318b71e-b837-5358-9985-a3cdd5113fc0','a9af1f5b-2a74-5253-a0f6-5c83248a6d05','dc8c081b-4370-5a9e-9662-48a96a0e3ccc','2021-04-13 00:57:23','2021-04-13 00:57:23'),('b39a90d3-efa4-5711-9406-1dbb794c2b4f','a05302f2-ed1f-5012-85a6-3a6b922c2549','dc8c081b-4370-5a9e-9662-48a96a0e3ccc','2021-04-13 00:57:23','2021-04-13 00:57:23'),('b3e324e2-b79a-5614-9bbb-8af49695c6af','3a8b6395-13cb-580a-8095-929c8d1a41d4','1bf25ec1-6567-5e7d-b562-f9266741bbee','2021-04-13 00:57:23','2021-04-13 00:57:23'),('ba1f80de-7a7f-58ba-a011-feca056026b2','a9263dbb-e0d2-595f-aacb-db09d7be364c','198d616f-b2c9-56de-87a1-867bd13cf787','2021-04-13 00:57:23','2021-04-13 00:57:23'),('bf04dfca-7c1e-568c-8ab2-4817b7e81eb9','86b525ec-9ed2-530a-ae74-6541c0d23a28','dc8c081b-4370-5a9e-9662-48a96a0e3ccc','2021-04-13 00:57:23','2021-04-13 00:57:23'),('cdc8255e-f4eb-5f37-a506-ea9eb07d5101','dd116d1f-0bc4-5c2d-bc38-08cc8750a4af','1bf25ec1-6567-5e7d-b562-f9266741bbee','2021-04-13 00:57:23','2021-04-13 00:57:23'),('ce5c973c-9cdf-5aca-9853-0d5f6b2fc285','9ec813bb-3369-5cfd-a403-acaa62b75fb6','dc8c081b-4370-5a9e-9662-48a96a0e3ccc','2021-04-13 00:57:23','2021-04-13 00:57:23'),('d042a48d-a51f-515a-96a9-8869254fb813','0a142a20-7d23-5ba9-a2c6-cefe29168007','dc8c081b-4370-5a9e-9662-48a96a0e3ccc','2021-04-13 00:57:23','2021-04-13 00:57:23'),('d1b5c247-fe83-5264-bc87-0c84ca7b2e15','a4d542cb-be13-50e9-b8a1-91ba9dfa9cce','1bf25ec1-6567-5e7d-b562-f9266741bbee','2021-04-13 00:57:23','2021-04-13 00:57:23'),('d35df6c0-365f-539b-97b5-bc809424b032','66078552-5dcc-5d60-9cfd-4012012bbe3b','1bf25ec1-6567-5e7d-b562-f9266741bbee','2021-04-13 00:57:23','2021-04-13 00:57:23'),('d384ba36-86f8-56e0-840c-953236455956','852b89e5-5a83-5c77-9ef1-57c7e5027ce0','1bf25ec1-6567-5e7d-b562-f9266741bbee','2021-04-13 00:57:23','2021-04-13 00:57:23'),('df9a8a93-612d-54fa-9db7-e5ea0fbb97d7','5a38687b-e9a7-51a0-9657-0131be535010','dc8c081b-4370-5a9e-9662-48a96a0e3ccc','2021-04-13 00:57:23','2021-04-13 00:57:23'),('e050ed1c-3919-5b09-bbe9-e2b418feabbe','2b66135f-722e-59ca-b9b1-3bc404547afc','1bf25ec1-6567-5e7d-b562-f9266741bbee','2021-04-13 00:57:23','2021-04-13 00:57:23'),('e1ad35c2-fcf3-5c98-9c23-945791d003f6','53b61057-71e6-54c2-8fcb-124b82ddab86','1bf25ec1-6567-5e7d-b562-f9266741bbee','2021-04-13 00:57:23','2021-04-13 00:57:23'),('e448d918-1426-5041-b815-5de405f5caa3','5a855512-fd17-5755-b349-ea85b742dd17','1bf25ec1-6567-5e7d-b562-f9266741bbee','2021-04-13 00:57:23','2021-04-13 00:57:23'),('e7dac9ac-1c79-5a1a-985a-2a3372c0bec3','95ffb383-45dc-5bbe-9e40-da60fccdf27f','1bf25ec1-6567-5e7d-b562-f9266741bbee','2021-04-13 00:57:23','2021-04-13 00:57:23'),('e845a25d-ae9a-520b-9476-d766eaaae0cd','1b07abd3-6342-59df-bceb-082996d09bf9','dc8c081b-4370-5a9e-9662-48a96a0e3ccc','2021-04-13 00:57:23','2021-04-13 00:57:23'),('e8a499be-1252-5bb7-8e83-41413e6b476b','099cf69e-6d67-5ec0-8cdf-e9e8677b85a6','1bf25ec1-6567-5e7d-b562-f9266741bbee','2021-04-13 00:57:23','2021-04-13 00:57:23'),('e9019906-e4ce-5f8d-b795-7b5d3bbbb2bb','00172b10-6c36-5276-a170-35537f7c5406','dc8c081b-4370-5a9e-9662-48a96a0e3ccc','2021-04-13 00:57:23','2021-04-13 00:57:23'),('eed290ac-1032-5507-9aae-1f3567edfb61','1c8b53c3-fd51-5ff2-8fba-6a2caed12c95','1bf25ec1-6567-5e7d-b562-f9266741bbee','2021-04-13 00:57:23','2021-04-13 00:57:23'),('ef7b543b-ae95-527d-ae43-c1b6cb89ee3e','dd637390-e3be-5302-a1c7-4a0177c293a5','1bf25ec1-6567-5e7d-b562-f9266741bbee','2021-04-13 00:57:23','2021-04-13 00:57:23'),('f170016d-a984-5342-b524-d523c6e633dc','aed13b6d-dd40-51c2-8520-881994db2940','e92954be-4477-5a85-b83d-7cbf6d1a90cc','2021-04-13 00:57:23','2021-04-13 00:57:23'),('f1deaf55-11d1-55d3-ac25-23b17755f21c','20de194b-d52a-5634-be7e-1f68a0e343ca','198d616f-b2c9-56de-87a1-867bd13cf787','2021-04-13 00:57:23','2021-04-13 00:57:23'),('f3853089-db0f-54c9-a538-dc0b48586bb6','9b3d6866-d633-54d0-840e-17a3e7ebd031','1bf25ec1-6567-5e7d-b562-f9266741bbee','2021-04-13 00:57:23','2021-04-13 00:57:23'),('f7e33b57-8167-57a0-9644-8afd00d54c2e','a47d9702-b9d3-5faf-be18-86b4b635cf1b','e92954be-4477-5a85-b83d-7cbf6d1a90cc','2021-04-13 00:57:23','2021-04-13 00:57:23'),('fb1dcdc2-cf75-5778-beb6-2c3dba55131b','acf3dbb5-ce53-5280-ae27-65d154379a02','dc8c081b-4370-5a9e-9662-48a96a0e3ccc','2021-04-13 00:57:23','2021-04-13 00:57:23'),('fb2ea95f-1474-5fff-b102-a2b431850f78','649851ce-2daf-52ca-b8ad-29c555a412b0','dc8c081b-4370-5a9e-9662-48a96a0e3ccc','2021-04-13 00:57:23','2021-04-13 00:57:23'),('fd098edd-ed47-5414-8864-e6ebf2a386e7','985208c2-fef2-502c-a91f-b949c3c8366c','198d616f-b2c9-56de-87a1-867bd13cf787','2021-04-13 00:57:23','2021-04-13 00:57:23');
/*!40000 ALTER TABLE `ALUNO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ATIVIDADE_AVALIATIVA`
--

DROP TABLE IF EXISTS `ATIVIDADE_AVALIATIVA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ATIVIDADE_AVALIATIVA` (
  `ID` char(36) NOT NULL,
  `NOME` varchar(32) NOT NULL,
  `DESCRICAO` varchar(256) DEFAULT NULL,
  `TURMA_FK` char(36) NOT NULL,
  `CRIACAO` timestamp NOT NULL DEFAULT current_timestamp(),
  `ATUALIZACAO` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`ID`),
  KEY `ATIVIDADE_AVALIATIVA_TURMA_FK` (`TURMA_FK`),
  CONSTRAINT `ATIVIDADE_AVALIATIVA_TURMA_FK` FOREIGN KEY (`TURMA_FK`) REFERENCES `TURMA` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ATIVIDADE_AVALIATIVA`
--

LOCK TABLES `ATIVIDADE_AVALIATIVA` WRITE;
/*!40000 ALTER TABLE `ATIVIDADE_AVALIATIVA` DISABLE KEYS */;
INSERT INTO `ATIVIDADE_AVALIATIVA` VALUES ('1c5a6bb4-1577-5848-96bf-c2d097acb543','Jafen bapboswar ew','Vilorooh us ruda jah mukudo fo hewak vikam wephar le doni sa jerufta saz wavor kubgo. Hecmoeh juata ideumtub cosdeivi fop ke afgenicu hero an huzac wa iwe tamadod ege ucpujuli vu.','e82a49dd-b36b-5a26-9a0b-9d5c2c10b9bd','2021-04-13 00:57:23','2021-04-13 00:57:23'),('1ee30050-ef1b-5a8f-aaf6-5b0cc9848a3b','Koito sa dajav','Zuwob faweniw jeceg kaolu ino bid cesenko sakalso uzgo ewu iwi tedsopvol. Bocu tad noagubi tu nubabmuk ofihap ziwkareh ganeb do oro zapuritu dewti vekuoju echuezu woroad ki ciucecof.','8beda030-68ad-5681-b4de-32f5199a1326','2021-04-13 00:57:23','2021-04-13 00:57:23'),('27ffc410-df8b-56b0-9ca6-632e674d9feb','Acu awe ticzuw','Hufevacal voz aliuro run reoz watih sijkim turfan zazdip bajozku riro gorav juzeot ukdo hovhefbaf nu wit. Umore recnehem use fuvzo ha ofmat ibeza rawuh murbop ne ugojam josugovup eporuli jitkan wasasvi bi ritenil.','e82464de-4195-5113-bef8-d11f07fb2abd','2021-04-13 00:57:23','2021-04-13 00:57:23'),('29411d56-7a14-50c3-9c51-de09e7d0a39c','Afulal kovivti ogo','Sucem etlum uwebim dabkutta gijuziun lonti we tofva zofajama ciror nupdek jukufa urobuep ubfibib dakas judjan ohizemlos. Cibfo hefug vatoj ikejoji gilemog ehapor mekifced mukit fonuk corwo em toejabo ke umhori dathe.','8beda030-68ad-5681-b4de-32f5199a1326','2021-04-13 00:57:23','2021-04-13 00:57:23'),('34f7dfee-0e23-5b94-a2c7-903ab0a5338c','Wuv kotinet fe','Tasojicen odi fi wutzakre siago ul bi ama avfowgaj wis tacinraj nukdedda. Ulki ollu patcomob ito kem lonivta wom ruz ofufasduc uw kudabo ze baj sa fodofa gu.','bcf441e2-10fe-517a-941c-7e80c420ed68','2021-04-13 00:57:23','2021-04-13 00:57:23'),('36e8a6bc-f1b1-544b-baf1-ecd2d7b1764b','Basva zo fawibe','To gida gunodcel tihahovu ri vuglej lorhi nepu iljain lig juv cu. Vamavom zanuc ihgivcab ripceg coter fiwju no ribab wavaw ra cul fupevwa ka sehtuf.','141b6f84-a1e6-5554-99cb-5337bef63b97','2021-04-13 00:57:23','2021-04-13 00:57:23'),('371c7fa6-dc9b-5ec1-b71b-32d41b66c74d','Bo detmuke ira','Ugjikde diffojeb nub ebo sanje la ubu oluboeda co ehivawrif re ize lawidna izo koleh zakvetep idiza. Cijdiv jabuzo vo odifevah firjugzip vek jub faosiluf den fitik li egigat ehilad puwon bevcumnos ji.','141b6f84-a1e6-5554-99cb-5337bef63b97','2021-04-13 00:57:23','2021-04-13 00:57:23'),('375dea34-2fc2-5ef6-8822-cf049b705f81','Zarsicje ulicaf vinbiv','Sew onaak sosbilkid matop nopsetu ofunuwa cufdobsar pihdolom botlo hobo gupa huofesus kufjoba waifla vosagvo. Comehgih up ognaj fezizit zotejuri fukvuhsoc id va aw kocvon lo gatralna zubunugo nibsog.','141b6f84-a1e6-5554-99cb-5337bef63b97','2021-04-13 00:57:23','2021-04-13 00:57:23'),('4294c858-d352-57aa-b9f7-89230adf9c55','Es wuzoen te','Seuzmiv wapfo ahiromu imoko amomuif pecod zarisil daf wec cuzneti wudbom ca ita il ge tuguktar joc vicovo. Nace ne ofiwuok dehaw ablej lafra viel wohevaze ru opu zacpi debouc pupegegav iz caicueg um zaga.','9efcf077-e7b5-558e-95fc-900539fb68f5','2021-04-13 00:57:23','2021-04-13 00:57:23'),('4793b91a-f748-57d0-be4f-196a2805e0b0','Hoj gurmela judujo','Dew vohvisuf osbu seltu vu wopa deno cazza jegti ensabge ud mo ud hu. Iva tap nomjo asuju duhzijo goba maagufan mos epgo buvpaovi rektu rinob cu pomeb amfeuho diwun rigi di.','064ef329-ae07-5ff1-8fce-fc5d9da6245b','2021-04-13 00:57:23','2021-04-13 00:57:23'),('4b3b77c9-dd48-5290-be5e-03a8942f5141','Vaobepu surze mo','Piijho sunve sazopa fuvu ro tilif se uhovu ce iboji cewawa iwad vut amegi zagvibnu bisza ikzi hucek. Iptorum mubihke iv daanda ulven teujuga or di ji dehew doag sa megrive.','e82464de-4195-5113-bef8-d11f07fb2abd','2021-04-13 00:57:23','2021-04-13 00:57:23'),('4c759b3a-1668-5011-87ad-ac000543554c','Ruwodtar buntu veca','Wuzhawhil apuile uz eneac navno dot mo od pupsebi dazaw pos jomuid bef bihti boejoaze kabo ijvufgi. Zimtu ow halvo lem wuw usaud cobkovibe eza leg laghepro ufpu gubiiku kuelhiz tama upasag ewacoeg kedmesav.','e82464de-4195-5113-bef8-d11f07fb2abd','2021-04-13 00:57:23','2021-04-13 00:57:23'),('506233c2-e0af-59f8-a1ea-e2fefedf1562','Zeje tiecki pofjoce','Ton ro at habkow gieku bubi nim posa ub sow sehug ni inodovec vu gufcipfa kosfesa senbarpi. Kuw hug nabamag du daka oganin emo tiw adtasod cuwweesu unap bu.','cfeaf730-fd2b-5f32-a96a-0fdc70c2d25a','2021-04-13 00:57:23','2021-04-13 00:57:23'),('603636eb-0d86-5f06-9a9e-73e549796899','Dotmilse cokni dubwejub','Zehusugo unde hespute fog luz lus lephetaj konaaf lospoz bi do fejcotta iru huwec. Fuwlib igotiari mi wuetwak hactub tabadi pajtawu mumvutavo roju meibaomo girnujal vevomom wudjoz laji.','ecfa734a-99ba-5072-8947-c552e3e680cd','2021-04-13 00:57:23','2021-04-13 00:57:23'),('60d7c8b9-a527-506c-a0ff-11562dd046a1','Sukmeuvi ecu rejrisib','Li bidivme nujatvej olsa nahdub leivukin jifo hocik vovipdig ed hu duoture nimcu zicu toetvah gawtu ver decilu. Jawfubhah le uvu necew kotvojgor ih fi etu bal fesu folopaza uvzi wokmieli kiceho lazefpi vufoz wi kogapmow.','9efcf077-e7b5-558e-95fc-900539fb68f5','2021-04-13 00:57:23','2021-04-13 00:57:23'),('6a09618b-2d54-568c-906c-dd5d55b615d1','Cazujvan lu bawuviz','Pewirjed ved guznujab re babed vavemu hok zu ehiluchem segjigpoj hulek ko tir nocige of nihim. Kamcug pikezfe gimunlun ci ih utohego jaurohun lirnowa tizmamsu bocon muk utuoniiw fi kib.','ecfa734a-99ba-5072-8947-c552e3e680cd','2021-04-13 00:57:23','2021-04-13 00:57:23'),('83c9adf2-3f01-5f20-9f12-4802f515f507','Oji kufur em','La re ka mi ru waw cu ni calindo jutil bo damkamub sawe hemwor wevki bovahpew os zudtok. Ijvili lalla suwwuati haafalo caj ceftiru letapza ujpu bifa becbem woazi vi ogo.','bcf441e2-10fe-517a-941c-7e80c420ed68','2021-04-13 00:57:23','2021-04-13 00:57:23'),('88f44798-5bd5-5bc8-921f-7c1045683de6','Rukwoce inuos lopoivo','Da zonattun fi lilespu guheg boefne fehiaso up mujeg ubewu na fevulhu cizuk. De ip re vesho gobol labo cog ki ebaculbaj les fuloib usuwic masac.','12754db3-f220-5bfb-a66b-89f0092383a2','2021-04-13 00:57:23','2021-04-13 00:57:23'),('8d3b591e-ce84-5efe-91dd-1793fd4935d8','Aljilku imeadris ugu','Gaholi ecoda fuemigi fu uple cofa miliwe gujepafa enuru sutfof za co. Tih vih kogrozuke gakalzu kerjo fuzlub biro mizbifo inuma hajlo ikeba vemu vum magifi.','e82a49dd-b36b-5a26-9a0b-9d5c2c10b9bd','2021-04-13 00:57:23','2021-04-13 00:57:23'),('8e8f7ca1-b0a1-5738-b429-0bb9b8aa259c','Natbeha litip tagili','Latuoli dokke del ocaceris toranpaf utaujo jewgale odotu sug zukgil va zicup isbirsip puwkiwbow vipimu bi mavet lumejo. Redu cutojkug si je aze kajun sejli ribruk du cavuwkas ba cozotma dirdalsib.','8beda030-68ad-5681-b4de-32f5199a1326','2021-04-13 00:57:23','2021-04-13 00:57:23'),('9e23a65c-0f8a-57f2-b1fa-77dd1ddd3476','Wacuhdof uduabsa no','Ce zi apu daspatcod po uwa movu kewnu cut vu okaohmik divi wateire. Wavpez vitarzu azpus ra nam jac fuova ucdo vijme wibrig si tud folawbot buzuvase.','709b8ff2-4075-5cba-8a9a-794b5bcef3c2','2021-04-13 00:57:23','2021-04-13 00:57:23'),('a386031b-7203-5dde-be32-10a25d0fbd22','Jeheb gikrugek zeutile','Owumocup maugibi no hupo nafucga rannomvun weswa hesej wuvomokig wijumun forlid vuk dev izaaw pod. Mapsamri hezpokfa veblakra wi jawowmu vubiat giramaj epu cowinbi muji iktora eh.','fa4ab435-d47f-5620-a6c9-70a6f015fd1c','2021-04-13 00:57:23','2021-04-13 00:57:23'),('a7f7c286-8db3-5a56-9822-95be652d9b45','Ej hutewtuh tadedwi','Wowa urjivir obi lig cogif ekuto deuzihu curvinsu nijkoka zucdekap kilecidik weg hihaepa mo. Vi loj dosgeznel kuh ej icuowluk jezauta bi petaf iholac tabnalfo doibig citma cusawni ugukon ep sagwewcoz.','e82a49dd-b36b-5a26-9a0b-9d5c2c10b9bd','2021-04-13 00:57:23','2021-04-13 00:57:23'),('aea99c54-3c13-58fa-9fc0-ce6525ed60aa','Lolmigab petis kar','Mos cac tuz wac vi jecu imuat uni tajdi joznaas zov re rum za teapa. Faw fodiwok atzogrub fuaroru karga juzub eje seika koguvrok du wocgiga woliwin ejemupla cogrupe god.','064ef329-ae07-5ff1-8fce-fc5d9da6245b','2021-04-13 00:57:23','2021-04-13 00:57:23'),('b0e187bc-1c3f-5374-9578-fe0badfcda2f','Melgi hoovulit jinato','Abajeut ga ag ri sazlar lidouho bawe hizpet ifijis soko zeeb zuereop mu zavow kedip zu dewe huzracog. Ri civa wuhgalgi bemgic ovi mewojim ci wu gum kujat fialova zoowuji reul gobapu.','b1689b94-f3ae-594b-ad47-72ffb44ef0be','2021-04-13 00:57:23','2021-04-13 00:57:23'),('bd271200-8a71-5c20-af4f-943ba237d8d9','Wokamu bi loovu','Vaski pevi fiziid dekovwe sod awobiglig ceipe ne vusobubu karobnet wec duwab zina. Lomujuf polopases se je weifo ter fihle ahbahu wuhowpo jonzele jet acwute wu boik povevus guvoliru bo lekpecin.','709b8ff2-4075-5cba-8a9a-794b5bcef3c2','2021-04-13 00:57:23','2021-04-13 00:57:23'),('c05f35bd-20a1-502f-b2a6-a261cbec4092','Fapho megkeoha cibal','Ja geli moj tenvub ohihi dobcuc jokma ewe at upgunhed varasjo me vit laon. Avkepa tan osamu magohot mune gusuh jok lu apeki eci ilragro masif tipdir daser viloj uwazeti eneibo.','fa4ab435-d47f-5620-a6c9-70a6f015fd1c','2021-04-13 00:57:23','2021-04-13 00:57:23'),('c210ce65-385f-597b-910f-054b6885951a','Doheg fodubouk ko','Vubde dedhoper kepzaw diwok rilapa sipvivte zuwa zoplo pucutaso bow adagezpok gagnaf wid. Ifcan ek rarnab jiddak gulevvew pehrujze gitilu naakbah ahloifa te joppa helwebeh pufjacti kondu.','eea8990c-444c-553d-8a83-03be6260c1c6','2021-04-13 00:57:23','2021-04-13 00:57:23'),('ce3e2422-db6d-5595-a0cd-f1b382427674','Si put iluoro','Kagil kefimif ige vefsotef ru ri pin la uhjop wif lelidiaju wawuasa sicowus gejkut kusewzoc osakogej. Revpimiz nangideg uwo gutaki wizogjob fo cuv cehwe fi hiw nur wotepuk sin giju epovu.','bcf441e2-10fe-517a-941c-7e80c420ed68','2021-04-13 00:57:23','2021-04-13 00:57:23'),('dfcccbe3-c8f9-5090-804a-fbfcf1a993b9','Notedofif udenimu jimdamge','Lopjes fiz dug ufiguwuf lomcepe kikki buggijzuf ci ah pi keolde buuwewet pikiz dapwo et fakeud. Vozuj nezeh verojofi ci kikgef fehso wijlov jik se dak mepo wo kocjictaf mod.','ddb1cb5c-81de-52b3-a23e-64a5a62241ee','2021-04-13 00:57:23','2021-04-13 00:57:23'),('e3259676-50e4-53b3-8cff-402761c5f05c','Pe dip dij','Isusce ku vuwruvto was mu uradozi vih decivi mis keuwduc emzan avizida ufdiv oz jorob fow fopbebiv ciwejne. Taadibic loroena ipo cetja puvibcor towji epozejne jaucu hairtus reudu sewcudi hobba de tufgil nocdi ta koru.','ecfa734a-99ba-5072-8947-c552e3e680cd','2021-04-13 00:57:23','2021-04-13 00:57:23'),('ed3e51a8-88e1-53f4-afa8-5c7e02689ef1','Worbop caohaupe miwjocoko','Fuposca lifwezu homnu homzahma pupil jilec gabizcam wo raf wesdij mem dufu isgob gil rud lam zomza sa. Ohanvaz ke cojatel halloha ze wewu opganbu ide do uf vob fev uzjeskin gig.','833327ec-6455-50a8-acdc-0697f2688a1f','2021-04-13 00:57:23','2021-04-13 00:57:23');
/*!40000 ALTER TABLE `ATIVIDADE_AVALIATIVA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AVALIACAO360`
--

DROP TABLE IF EXISTS `AVALIACAO360`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AVALIACAO360` (
  `ID` char(36) NOT NULL,
  `NOME` varchar(32) NOT NULL,
  `DESCRICAO` varchar(256) DEFAULT NULL,
  `GRUPO_FK` char(36) NOT NULL,
  `ATIVIDADE_AVALIATIVA_FK` char(36) NOT NULL,
  `ALUNO_FK` char(36) NOT NULL,
  `CRIACAO` timestamp NOT NULL DEFAULT current_timestamp(),
  `ATUALIZACAO` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`ID`),
  KEY `AVALIACAO360_GRUPO_FK` (`GRUPO_FK`),
  KEY `AVALIACAO360_ATIVIDADE_AVALIATIVA_FK` (`ATIVIDADE_AVALIATIVA_FK`),
  KEY `AVALIACAO360_ALUNO_FK` (`ALUNO_FK`),
  CONSTRAINT `AVALIACAO360_ALUNO_FK` FOREIGN KEY (`ALUNO_FK`) REFERENCES `ALUNO` (`ID`),
  CONSTRAINT `AVALIACAO360_ATIVIDADE_AVALIATIVA_FK` FOREIGN KEY (`ATIVIDADE_AVALIATIVA_FK`) REFERENCES `ATIVIDADE_AVALIATIVA` (`ID`),
  CONSTRAINT `AVALIACAO360_GRUPO_FK` FOREIGN KEY (`GRUPO_FK`) REFERENCES `GRUPO` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AVALIACAO360`
--

LOCK TABLES `AVALIACAO360` WRITE;
/*!40000 ALTER TABLE `AVALIACAO360` DISABLE KEYS */;
/*!40000 ALTER TABLE `AVALIACAO360` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CURSO`
--

DROP TABLE IF EXISTS `CURSO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CURSO` (
  `ID` char(36) NOT NULL,
  `NOME` varchar(32) NOT NULL,
  `DESCRICAO` varchar(256) DEFAULT NULL,
  `CRIACAO` timestamp NOT NULL DEFAULT current_timestamp(),
  `ATUALIZACAO` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CURSO`
--

LOCK TABLES `CURSO` WRITE;
/*!40000 ALTER TABLE `CURSO` DISABLE KEYS */;
INSERT INTO `CURSO` VALUES ('198d616f-b2c9-56de-87a1-867bd13cf787','Reporter','Lofojho do bo hijerig mozbiej zel sepdaho islot kodawo fusvono rezdis awgukdum amdo okpar fo. Bocut li ba gigbu seva sopesid wizpoc be ip kem japkituz si ef gannu rookrih hewci ravakfa.','2021-04-13 00:57:23','2021-04-13 00:57:23'),('1bf25ec1-6567-5e7d-b562-f9266741bbee','Publishing Director','Rewezul taug ekutu za itked osli zawme heh be douda tu ruwep sowadac bah riocasa vujrucu hif. Jinogvis adu ezu ku ivoboima mewzufzoz jakolep pegbum ava gadni hodij lo la hukkifa mos he ubeage mafasozo.','2021-04-13 00:57:23','2021-04-13 00:57:23'),('dc8c081b-4370-5a9e-9662-48a96a0e3ccc','Union Representative','Rohol owoja dudazmir ca efaez gu atramvo poza ca lavwu apuagovup ermus. Wucacoja ka sa zih wahepa sa sakezoc lirmib fefke mic timore gaen caro.','2021-04-13 00:57:23','2021-04-13 00:57:23'),('e92954be-4477-5a85-b83d-7cbf6d1a90cc','Auditor','Camovuz sizoubo dacpi sowsuhvac dorna vavwen co he cew ohajahak be rid zo hijmoaho pizinez fu. Tu jegza kaguhik tabtitba genba baregnab dewupe papja dobasfap otguzob gub wadlubdu ge doaw hautinis noszuf husbephen ifajje.','2021-04-13 00:57:23','2021-04-13 00:57:23');
/*!40000 ALTER TABLE `CURSO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DISCIPLINA`
--

DROP TABLE IF EXISTS `DISCIPLINA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DISCIPLINA` (
  `ID` char(36) NOT NULL,
  `NOME` varchar(32) NOT NULL,
  `DESCRICAO` varchar(256) DEFAULT NULL,
  `CRIACAO` timestamp NOT NULL DEFAULT current_timestamp(),
  `ATUALIZACAO` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DISCIPLINA`
--

LOCK TABLES `DISCIPLINA` WRITE;
/*!40000 ALTER TABLE `DISCIPLINA` DISABLE KEYS */;
INSERT INTO `DISCIPLINA` VALUES ('24e81386-a96c-5ab6-abea-9fed5ba9664f','Editor mumhiwos','Lispa dowi domca nipnanzu uclagfe tagamnu epe irofafam cad desunu jeh ikobo fip fewge. Kag anepo co nunninit va coevu pasikew wabovcar suj gelow sep uwu ohojakso aheso ecamu hagzaeka cagolo nesat.','2021-04-13 00:57:23','2021-04-13 00:57:23'),('28f8872f-8c43-566e-9df0-fe055b7559aa','Surveyor refe','Ajiguced kenlika kepeosu ep wenru lu rosha kesunci seamagad goz hilbizas bangawoj ecsees hualuwo hosupe. Kezgegamo va sikef tidec ihe rikzu vu lakja ar du atojok doguzivol uwinok neg.','2021-04-13 00:57:23','2021-04-13 00:57:23'),('301c2c81-0119-5e85-8dea-309f18556ff9','Physician witokaj','Sorliwlud siuztof isimupap we zoemo deobijaj uspizel viuz be isgorol vejvopu abiraw akaketof fadpehuh cezik. Zumkelmad atfij lezo usraeh din gub venol ticnimahu retsisib jin ufvop onocuf havief zini uvhijuk duneko ticmiw paicu.','2021-04-13 00:57:23','2021-04-13 00:57:23'),('618107db-f063-52a1-a7c5-bba072802a91','Chief kiw','Opodopaz irwige do lezjoji gut ollo gige dasovve ehiode zuk jerasgiz ija awor pi seasu apisuda. Jibza hamu igutpas ejovice dikubcu ufodab ru ri de esoce buwvi pi ho capibcij vuza vahisa.','2021-04-13 00:57:23','2021-04-13 00:57:23'),('a381fa54-01ad-50b2-98cb-cc25526870b7','Business filgavu','Nuliglen ijupo azeci saglu ritwudmig jen pow davesma fitlut na silob zarzi. Wa gari bo ko tapi oppe bov jovwog lubhopva piwwa uk pepkogal doojjir.','2021-04-13 00:57:23','2021-04-13 00:57:23'),('ab62bc67-b314-56a1-b29e-01dcd1660612','Biomedical niitiza','Puf ruhomod hinji najo uj lapa sir uk gevonhi lojepa diajulof ow zurgi ce cuda. Toocecep nupcezer tujouwe zi giljul otjoh pijvasog era jekvoz favlufer id lil upahutipa lu gepo ufwasvij.','2021-04-13 00:57:23','2021-04-13 00:57:23'),('cce118d5-bab7-55c8-b415-a4267c72725c','Aerospace wesodlec','Fepuko lemfib it hog rofkonuke lodkig ahni ufuem widzo ardun gamav reszev ezu wer. Aneuczec ror bibuc wurazom ahu ropbovu ufaco ce watamhe zeclub rotnun ol rar tefuh.','2021-04-13 00:57:23','2021-04-13 00:57:23'),('f0d7f093-fd56-5134-bd9e-d57affc7413b','Leasing dibowbec','Ismomzor gosu norsuk tir pemjovdor ukil je avumopdu miduv behka ge fic tajwutata vicuf alivip. Hokiso vas jeppedo ibvisdi gus jijvot enu mofwog mu ogake vijjuk naglozav lucu ledeni fufujaj ava.','2021-04-13 00:57:23','2021-04-13 00:57:23');
/*!40000 ALTER TABLE `DISCIPLINA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GRUPO`
--

DROP TABLE IF EXISTS `GRUPO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GRUPO` (
  `ID` char(36) NOT NULL,
  `NOME` varchar(32) NOT NULL,
  `DESCRICAO` varchar(256) DEFAULT NULL,
  `TURMA_FK` char(36) NOT NULL,
  `ATIVIDADE_AVALIATIVA_FK` char(36) NOT NULL,
  `CRIACAO` timestamp NOT NULL DEFAULT current_timestamp(),
  `ATUALIZACAO` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`ID`),
  KEY `GRUPO_TURMA_FK` (`TURMA_FK`),
  KEY `GRUPO_ATIVIDADE_AVALIATIVA_FK` (`ATIVIDADE_AVALIATIVA_FK`),
  CONSTRAINT `GRUPO_ATIVIDADE_AVALIATIVA_FK` FOREIGN KEY (`ATIVIDADE_AVALIATIVA_FK`) REFERENCES `ATIVIDADE_AVALIATIVA` (`ID`),
  CONSTRAINT `GRUPO_TURMA_FK` FOREIGN KEY (`TURMA_FK`) REFERENCES `TURMA` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GRUPO`
--

LOCK TABLES `GRUPO` WRITE;
/*!40000 ALTER TABLE `GRUPO` DISABLE KEYS */;
INSERT INTO `GRUPO` VALUES ('03746ee0-dae1-5df7-9f80-3f375de13245','Ezpeuza oca ajwimkos sula','Ojunobba veoli evoded za kujte zingenuh wermun fommapu vowoh jesfo ivgowjat ec cat kizlucuw tupid. Injufa gi gu low memfunima monbasnid mekisi robhah bupjekvuh diw da kiccisno ju.','064ef329-ae07-5ff1-8fce-fc5d9da6245b','aea99c54-3c13-58fa-9fc0-ce6525ed60aa','2021-04-13 00:57:23','2021-04-13 00:57:23'),('0ae301f9-d9c8-544e-8693-794959c7b74e','Kid mupefuca zufoleso wiwhoptof','Robomes we fulceciva jof vapzubra wesfalim uro sisucu lifubop lav ohoedi ze epoocvic coonetaz. Raf gadmud ge efebunvij wudido jipfiut zatavdoj zodciwre hoifojav ise ada pucdujze tiwwi aru ilane tahuopu ti.','8beda030-68ad-5681-b4de-32f5199a1326','8e8f7ca1-b0a1-5738-b429-0bb9b8aa259c','2021-04-13 00:57:23','2021-04-13 00:57:23'),('0b5e0aab-85cd-556b-8520-bbd71a8e4a68','Migizu fudhabah tomiac opavoewu','Fi nozut diswapfib jajokan eb pooddab lezeglar nisovsu leujeca de ujekucad sessagug vihtomiw fihar bozze. Caz pujga bikazuk pebde vifjih bocubop wetu unofo use foj vansilam etawizuc su cuj kusi.','fa4ab435-d47f-5620-a6c9-70a6f015fd1c','a386031b-7203-5dde-be32-10a25d0fbd22','2021-04-13 00:57:23','2021-04-13 00:57:23'),('1d6e85e5-747c-5c82-9b38-92a03255bdd2','Dulta zafwiscur ze ucu','Hukwi se giej jaic ni pu kufnokzi vonivom rajwofiv laralroj geb reunisuw uhivo kivuzi to sotsod inpinira. Zamhe ensedcaw nur zibizum zizkeskab vikeh ol jinef sojupoaho jij kanjegu gufkaiv siv.','ecfa734a-99ba-5072-8947-c552e3e680cd','e3259676-50e4-53b3-8cff-402761c5f05c','2021-04-13 00:57:23','2021-04-13 00:57:23'),('45d8875c-6304-530e-888c-c24f44494ffb','Sopisa iv lapi tubeh','Ova sisekje tomazoz kugumba ca mo ezo wetalva nicmecu su zakgo zuumfas jehaf. Rihofmi asniifo luz zi jo ukiva elo kugiac efaviuve pe denmu zodesga ugaho akazahat.','bcf441e2-10fe-517a-941c-7e80c420ed68','ce3e2422-db6d-5595-a0cd-f1b382427674','2021-04-13 00:57:23','2021-04-13 00:57:23'),('65d37ffc-f0aa-58c3-872a-0ae21cef690f','Rulbaaj daza lawhu fije','Owedisra okurito watefoj vupbogu uw tindiv fazho fummostu futapi rezibuzo le piduzduv gosug poh ecuvu. Bupe iwekavam hohjoonu jejtivwiz bilke gocukku uhufhe no deklail ba paovihuv takur.','ecfa734a-99ba-5072-8947-c552e3e680cd','603636eb-0d86-5f06-9a9e-73e549796899','2021-04-13 00:57:23','2021-04-13 00:57:23'),('987d15be-91c7-500c-a9e1-fd5b3f703bfe','Aste waw tidumi jo','Dobvi rocgo ho datecum fowwabjo wicetjuz ta awapo kigwas gu ju fovtuwi tujaege. Egu iz evwobub oseruthuf sodcew bafkugu jo kuwzalefa cej izonatguz ebo bac ciugeuma wujir honawin dozipga zazaceju deninom.','8beda030-68ad-5681-b4de-32f5199a1326','1ee30050-ef1b-5a8f-aaf6-5b0cc9848a3b','2021-04-13 00:57:23','2021-04-13 00:57:23'),('fec52f9c-0f19-5289-9118-263f6a9acb22','Jas sezerru vujvum mi','Erawenza ehjirbi nuw jiraw nuzvar nuwdouk ifiaszer ca lisebe ugajig uv zoh ajogozhes nez woan. Ic nev onugiduh biv no pu tuhfiwsul bufjajfu zesuw lishok nafiof sozadpuj hes nanalu apofan mugwicos.','141b6f84-a1e6-5554-99cb-5337bef63b97','371c7fa6-dc9b-5ec1-b71b-32d41b66c74d','2021-04-13 00:57:23','2021-04-13 00:57:23');
/*!40000 ALTER TABLE `GRUPO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HARDSKILL`
--

DROP TABLE IF EXISTS `HARDSKILL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `HARDSKILL` (
  `ID` char(36) NOT NULL,
  `NOME` varchar(32) NOT NULL,
  `CRIACAO` timestamp NOT NULL DEFAULT current_timestamp(),
  `ATUALIZACAO` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HARDSKILL`
--

LOCK TABLES `HARDSKILL` WRITE;
/*!40000 ALTER TABLE `HARDSKILL` DISABLE KEYS */;
INSERT INTO `HARDSKILL` VALUES ('37409b77-17ac-5ff0-87c1-9106f7d30ef3','Kilobfo vez','2021-04-13 00:57:23','2021-04-13 00:57:23'),('44264b47-0a96-5080-8b0a-7083735145e8','Pavazmas vacace','2021-04-13 00:57:23','2021-04-13 00:57:23'),('4aa36247-4077-55e2-8cc7-444348749d41','Ujiuzmu hih','2021-04-13 00:57:23','2021-04-13 00:57:23'),('58081b22-94ee-5832-af80-458e125ff183','Gaehotap wu','2021-04-13 00:57:23','2021-04-13 00:57:23'),('76035694-c0cc-51ac-8f76-9ffb9231d1f6','Meim me','2021-04-13 00:57:23','2021-04-13 00:57:23'),('7695e5dd-bce6-519f-a59a-60b56cfd3676','Ti te','2021-04-13 00:57:23','2021-04-13 00:57:23'),('7bca5bbc-8408-5c86-994d-63d7430a14f3','Osebmid joh','2021-04-13 00:57:23','2021-04-13 00:57:23'),('7ec97310-04ec-5cf3-a6a0-7b4956794736','Rugaffo tu','2021-04-13 00:57:23','2021-04-13 00:57:23'),('a5b47e65-d226-5b5c-9996-bf19640d92e8','Onnuhag le','2021-04-13 00:57:23','2021-04-13 00:57:23'),('bbab9ed9-5d7c-55d0-83f6-68b690c187cb','Pewsioz mo','2021-04-13 00:57:23','2021-04-13 00:57:23'),('bc7c7327-2968-5b3b-b66b-8ff0ab1a0707','Vevhavep mepjoda','2021-04-13 00:57:23','2021-04-13 00:57:23'),('c00f12ed-1a2d-5160-960f-c0de5efb0479','Utu wa','2021-04-13 00:57:23','2021-04-13 00:57:23'),('df081832-86aa-544d-b05c-001e9ebe0a34','Wed helisor','2021-04-13 00:57:23','2021-04-13 00:57:23'),('e996bb3d-fd94-5bd6-abb5-bb56d5f095f7','Satnubep re','2021-04-13 00:57:23','2021-04-13 00:57:23'),('ec2bd0ce-dc2d-5c36-86e6-93d5160059ac','Of nottut','2021-04-13 00:57:23','2021-04-13 00:57:23'),('f695c90a-e6e4-5aa1-ad12-7bff2613feaf','Wewvum je','2021-04-13 00:57:23','2021-04-13 00:57:23');
/*!40000 ALTER TABLE `HARDSKILL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JT_ALUNO_HARDSKILL`
--

DROP TABLE IF EXISTS `JT_ALUNO_HARDSKILL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JT_ALUNO_HARDSKILL` (
  `ALUNO_FK` char(36) NOT NULL,
  `HARDSKILL_FK` char(36) NOT NULL,
  PRIMARY KEY (`ALUNO_FK`,`HARDSKILL_FK`),
  KEY `JT_ALUNO_HARDSKILL_HARDSKILL_FK` (`HARDSKILL_FK`),
  CONSTRAINT `JT_ALUNO_HARDSKILL_ALUNO_FK` FOREIGN KEY (`ALUNO_FK`) REFERENCES `ALUNO` (`ID`),
  CONSTRAINT `JT_ALUNO_HARDSKILL_HARDSKILL_FK` FOREIGN KEY (`HARDSKILL_FK`) REFERENCES `HARDSKILL` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JT_ALUNO_HARDSKILL`
--

LOCK TABLES `JT_ALUNO_HARDSKILL` WRITE;
/*!40000 ALTER TABLE `JT_ALUNO_HARDSKILL` DISABLE KEYS */;
/*!40000 ALTER TABLE `JT_ALUNO_HARDSKILL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JT_ALUNO_TURMA`
--

DROP TABLE IF EXISTS `JT_ALUNO_TURMA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JT_ALUNO_TURMA` (
  `ALUNO_FK` char(36) NOT NULL,
  `TURMA_FK` char(36) NOT NULL,
  PRIMARY KEY (`ALUNO_FK`,`TURMA_FK`),
  KEY `JT_ALUNO_TURMA_TURMA_FK` (`TURMA_FK`),
  CONSTRAINT `JT_ALUNO_TURMA_ALUNO_FK` FOREIGN KEY (`ALUNO_FK`) REFERENCES `ALUNO` (`ID`),
  CONSTRAINT `JT_ALUNO_TURMA_TURMA_FK` FOREIGN KEY (`TURMA_FK`) REFERENCES `TURMA` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JT_ALUNO_TURMA`
--

LOCK TABLES `JT_ALUNO_TURMA` WRITE;
/*!40000 ALTER TABLE `JT_ALUNO_TURMA` DISABLE KEYS */;
/*!40000 ALTER TABLE `JT_ALUNO_TURMA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JT_ATIVIDADE_AVALIATIVA_HARDSKILL`
--

DROP TABLE IF EXISTS `JT_ATIVIDADE_AVALIATIVA_HARDSKILL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JT_ATIVIDADE_AVALIATIVA_HARDSKILL` (
  `ATIVIDADE_AVALIATIVA_FK` char(36) NOT NULL,
  `HARDSKILL_FK` char(36) NOT NULL,
  PRIMARY KEY (`ATIVIDADE_AVALIATIVA_FK`,`HARDSKILL_FK`),
  KEY `JT_ATIVIDADE_AVALIATIVA_HARDSKILL_HARDSKILL_FK` (`HARDSKILL_FK`),
  CONSTRAINT `JT_ATIVIDADE_AVALIATIVA_HARDSKILL_ATIVIDADE_AVALIATIVA_FK` FOREIGN KEY (`ATIVIDADE_AVALIATIVA_FK`) REFERENCES `ATIVIDADE_AVALIATIVA` (`ID`),
  CONSTRAINT `JT_ATIVIDADE_AVALIATIVA_HARDSKILL_HARDSKILL_FK` FOREIGN KEY (`HARDSKILL_FK`) REFERENCES `HARDSKILL` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JT_ATIVIDADE_AVALIATIVA_HARDSKILL`
--

LOCK TABLES `JT_ATIVIDADE_AVALIATIVA_HARDSKILL` WRITE;
/*!40000 ALTER TABLE `JT_ATIVIDADE_AVALIATIVA_HARDSKILL` DISABLE KEYS */;
/*!40000 ALTER TABLE `JT_ATIVIDADE_AVALIATIVA_HARDSKILL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JT_AVALIACAO360_SOFTSKILL`
--

DROP TABLE IF EXISTS `JT_AVALIACAO360_SOFTSKILL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JT_AVALIACAO360_SOFTSKILL` (
  `AVALIACAO360_FK` char(36) NOT NULL,
  `SOFTSKILL_FK` char(36) NOT NULL,
  PRIMARY KEY (`AVALIACAO360_FK`,`SOFTSKILL_FK`),
  KEY `JT_AVALIACAO360_SOFTSKILL_SOFTSKILL_FK` (`SOFTSKILL_FK`),
  CONSTRAINT `JT_AVALIACAO360_SOFTSKILL_AVALIACAO360_FK` FOREIGN KEY (`AVALIACAO360_FK`) REFERENCES `AVALIACAO360` (`ID`),
  CONSTRAINT `JT_AVALIACAO360_SOFTSKILL_SOFTSKILL_FK` FOREIGN KEY (`SOFTSKILL_FK`) REFERENCES `SOFTSKILL` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JT_AVALIACAO360_SOFTSKILL`
--

LOCK TABLES `JT_AVALIACAO360_SOFTSKILL` WRITE;
/*!40000 ALTER TABLE `JT_AVALIACAO360_SOFTSKILL` DISABLE KEYS */;
/*!40000 ALTER TABLE `JT_AVALIACAO360_SOFTSKILL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JT_CURSO_TURMA`
--

DROP TABLE IF EXISTS `JT_CURSO_TURMA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JT_CURSO_TURMA` (
  `CURSO_FK` char(36) NOT NULL,
  `TURMA_FK` char(36) NOT NULL,
  PRIMARY KEY (`CURSO_FK`,`TURMA_FK`),
  KEY `JT_CURSO_TURMA_TURMA_FK` (`TURMA_FK`),
  CONSTRAINT `JT_CURSO_TURMA_CURSO_FK` FOREIGN KEY (`CURSO_FK`) REFERENCES `CURSO` (`ID`),
  CONSTRAINT `JT_CURSO_TURMA_TURMA_FK` FOREIGN KEY (`TURMA_FK`) REFERENCES `TURMA` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JT_CURSO_TURMA`
--

LOCK TABLES `JT_CURSO_TURMA` WRITE;
/*!40000 ALTER TABLE `JT_CURSO_TURMA` DISABLE KEYS */;
/*!40000 ALTER TABLE `JT_CURSO_TURMA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JT_DISCIPLINA_HARDSKILL`
--

DROP TABLE IF EXISTS `JT_DISCIPLINA_HARDSKILL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JT_DISCIPLINA_HARDSKILL` (
  `DISCIPLINA_FK` char(36) NOT NULL,
  `HARDSKILL_FK` char(36) NOT NULL,
  PRIMARY KEY (`DISCIPLINA_FK`,`HARDSKILL_FK`),
  KEY `JT_DISCIPLINA_HARDSKILL_HARDSKILL_FK` (`HARDSKILL_FK`),
  CONSTRAINT `JT_DISCIPLINA_HARDSKILL_DISCIPLINA_FK` FOREIGN KEY (`DISCIPLINA_FK`) REFERENCES `DISCIPLINA` (`ID`),
  CONSTRAINT `JT_DISCIPLINA_HARDSKILL_HARDSKILL_FK` FOREIGN KEY (`HARDSKILL_FK`) REFERENCES `HARDSKILL` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JT_DISCIPLINA_HARDSKILL`
--

LOCK TABLES `JT_DISCIPLINA_HARDSKILL` WRITE;
/*!40000 ALTER TABLE `JT_DISCIPLINA_HARDSKILL` DISABLE KEYS */;
/*!40000 ALTER TABLE `JT_DISCIPLINA_HARDSKILL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JT_DISCIPLINA_PROFESSOR`
--

DROP TABLE IF EXISTS `JT_DISCIPLINA_PROFESSOR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JT_DISCIPLINA_PROFESSOR` (
  `DISCIPLINA_FK` char(36) NOT NULL,
  `PROFESSOR_FK` char(36) NOT NULL,
  PRIMARY KEY (`DISCIPLINA_FK`,`PROFESSOR_FK`),
  KEY `JT_DISCIPLINA_PROFESSOR_PROFESSOR_FK` (`PROFESSOR_FK`),
  CONSTRAINT `JT_DISCIPLINA_PROFESSOR_DISCIPLINA_FK` FOREIGN KEY (`DISCIPLINA_FK`) REFERENCES `DISCIPLINA` (`ID`),
  CONSTRAINT `JT_DISCIPLINA_PROFESSOR_PROFESSOR_FK` FOREIGN KEY (`PROFESSOR_FK`) REFERENCES `PROFESSOR` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JT_DISCIPLINA_PROFESSOR`
--

LOCK TABLES `JT_DISCIPLINA_PROFESSOR` WRITE;
/*!40000 ALTER TABLE `JT_DISCIPLINA_PROFESSOR` DISABLE KEYS */;
/*!40000 ALTER TABLE `JT_DISCIPLINA_PROFESSOR` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JT_GRUPO_ALUNO`
--

DROP TABLE IF EXISTS `JT_GRUPO_ALUNO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JT_GRUPO_ALUNO` (
  `GRUPO_FK` char(36) NOT NULL,
  `ALUNO_FK` char(36) NOT NULL,
  PRIMARY KEY (`GRUPO_FK`,`ALUNO_FK`),
  KEY `JT_GRUPO_ALUNO_ALUNO_FK` (`ALUNO_FK`),
  CONSTRAINT `JT_GRUPO_ALUNO_ALUNO_FK` FOREIGN KEY (`ALUNO_FK`) REFERENCES `ALUNO` (`ID`),
  CONSTRAINT `JT_GRUPO_ALUNO_GRUPO_FK` FOREIGN KEY (`GRUPO_FK`) REFERENCES `GRUPO` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JT_GRUPO_ALUNO`
--

LOCK TABLES `JT_GRUPO_ALUNO` WRITE;
/*!40000 ALTER TABLE `JT_GRUPO_ALUNO` DISABLE KEYS */;
INSERT INTO `JT_GRUPO_ALUNO` VALUES ('03746ee0-dae1-5df7-9f80-3f375de13245','0ea360b9-5d51-5be5-9859-e909a28bfa5c'),('03746ee0-dae1-5df7-9f80-3f375de13245','213694a7-098b-5b78-81fa-ff41cc7bfb63'),('03746ee0-dae1-5df7-9f80-3f375de13245','516920aa-8778-5ca6-9b94-d0f6e7947263'),('03746ee0-dae1-5df7-9f80-3f375de13245','54d871c7-8dd3-5ef8-b17c-399c0d50ccd4'),('03746ee0-dae1-5df7-9f80-3f375de13245','762bf295-08dc-5540-98d2-7de7a2278375'),('03746ee0-dae1-5df7-9f80-3f375de13245','7b9442d3-ce13-5216-8e2c-92aa2a2de832'),('03746ee0-dae1-5df7-9f80-3f375de13245','876b5217-9b0c-5fb9-871f-0acf28ac3c39'),('03746ee0-dae1-5df7-9f80-3f375de13245','8d57ac44-5e3a-5df2-b8cc-3ed31b6ec70e'),('03746ee0-dae1-5df7-9f80-3f375de13245','9d7e965a-41e2-5c8b-bcbb-85872f9ec478'),('03746ee0-dae1-5df7-9f80-3f375de13245','a8234a68-99b2-5951-8977-b1014a523abe'),('03746ee0-dae1-5df7-9f80-3f375de13245','e1ad35c2-fcf3-5c98-9c23-945791d003f6'),('03746ee0-dae1-5df7-9f80-3f375de13245','f7e33b57-8167-57a0-9644-8afd00d54c2e'),('0ae301f9-d9c8-544e-8693-794959c7b74e','05c77d45-fe40-57cd-993e-821402718577'),('0ae301f9-d9c8-544e-8693-794959c7b74e','10b18e6e-b12d-5c28-983b-bad5495f42b6'),('0ae301f9-d9c8-544e-8693-794959c7b74e','495504b2-7ff9-5a00-8951-836db5f3fa97'),('0ae301f9-d9c8-544e-8693-794959c7b74e','5c092e3e-f2e1-5489-a520-f4a5a5199f94'),('0ae301f9-d9c8-544e-8693-794959c7b74e','65382dd3-5dc9-5558-9c85-bd4e679817fa'),('0ae301f9-d9c8-544e-8693-794959c7b74e','7443bf96-6d58-52c3-9d53-52cc90ba66be'),('0ae301f9-d9c8-544e-8693-794959c7b74e','a8234a68-99b2-5951-8977-b1014a523abe'),('0ae301f9-d9c8-544e-8693-794959c7b74e','b39a90d3-efa4-5711-9406-1dbb794c2b4f'),('0ae301f9-d9c8-544e-8693-794959c7b74e','bf04dfca-7c1e-568c-8ab2-4817b7e81eb9'),('0ae301f9-d9c8-544e-8693-794959c7b74e','e448d918-1426-5041-b815-5de405f5caa3'),('0ae301f9-d9c8-544e-8693-794959c7b74e','e7dac9ac-1c79-5a1a-985a-2a3372c0bec3'),('0ae301f9-d9c8-544e-8693-794959c7b74e','f1deaf55-11d1-55d3-ac25-23b17755f21c'),('0b5e0aab-85cd-556b-8520-bbd71a8e4a68','24c695e9-2be5-5125-9f78-95911d048596'),('0b5e0aab-85cd-556b-8520-bbd71a8e4a68','2621a606-8ae5-56dd-a014-a240c04641f7'),('0b5e0aab-85cd-556b-8520-bbd71a8e4a68','262eaaac-ed08-50a0-9144-3c3a8ed5516f'),('0b5e0aab-85cd-556b-8520-bbd71a8e4a68','37efc318-ea14-5abc-a832-053881f1c75d'),('0b5e0aab-85cd-556b-8520-bbd71a8e4a68','83caef16-1d29-57b9-96aa-689fd3539598'),('0b5e0aab-85cd-556b-8520-bbd71a8e4a68','882142c7-3403-5bd2-87bb-a5473de60f40'),('0b5e0aab-85cd-556b-8520-bbd71a8e4a68','8d1bde68-a90c-50f9-b3bb-8f1b4ebd2e23'),('0b5e0aab-85cd-556b-8520-bbd71a8e4a68','9af2bd6f-ebc4-5781-a7db-9c2f6310afeb'),('0b5e0aab-85cd-556b-8520-bbd71a8e4a68','b318b71e-b837-5358-9985-a3cdd5113fc0'),('0b5e0aab-85cd-556b-8520-bbd71a8e4a68','b3e324e2-b79a-5614-9bbb-8af49695c6af'),('0b5e0aab-85cd-556b-8520-bbd71a8e4a68','d384ba36-86f8-56e0-840c-953236455956'),('0b5e0aab-85cd-556b-8520-bbd71a8e4a68','ef7b543b-ae95-527d-ae43-c1b6cb89ee3e'),('1d6e85e5-747c-5c82-9b38-92a03255bdd2','06026820-c062-55e8-b983-f25e98260b54'),('1d6e85e5-747c-5c82-9b38-92a03255bdd2','24c695e9-2be5-5125-9f78-95911d048596'),('1d6e85e5-747c-5c82-9b38-92a03255bdd2','37efc318-ea14-5abc-a832-053881f1c75d'),('1d6e85e5-747c-5c82-9b38-92a03255bdd2','42ab0dca-856e-50f2-b916-662be677e6d4'),('1d6e85e5-747c-5c82-9b38-92a03255bdd2','54d871c7-8dd3-5ef8-b17c-399c0d50ccd4'),('1d6e85e5-747c-5c82-9b38-92a03255bdd2','882142c7-3403-5bd2-87bb-a5473de60f40'),('1d6e85e5-747c-5c82-9b38-92a03255bdd2','940d4e04-198f-56f6-be07-7dcabff9c6fe'),('1d6e85e5-747c-5c82-9b38-92a03255bdd2','b19428a1-798b-5f1b-a91d-b35036f75dc5'),('1d6e85e5-747c-5c82-9b38-92a03255bdd2','b3e324e2-b79a-5614-9bbb-8af49695c6af'),('1d6e85e5-747c-5c82-9b38-92a03255bdd2','ba1f80de-7a7f-58ba-a011-feca056026b2'),('1d6e85e5-747c-5c82-9b38-92a03255bdd2','f3853089-db0f-54c9-a538-dc0b48586bb6'),('1d6e85e5-747c-5c82-9b38-92a03255bdd2','fd098edd-ed47-5414-8864-e6ebf2a386e7'),('45d8875c-6304-530e-888c-c24f44494ffb','05c77d45-fe40-57cd-993e-821402718577'),('45d8875c-6304-530e-888c-c24f44494ffb','2621a606-8ae5-56dd-a014-a240c04641f7'),('45d8875c-6304-530e-888c-c24f44494ffb','4409bd33-1939-5121-943e-ecf66ca25583'),('45d8875c-6304-530e-888c-c24f44494ffb','882142c7-3403-5bd2-87bb-a5473de60f40'),('45d8875c-6304-530e-888c-c24f44494ffb','8d1bde68-a90c-50f9-b3bb-8f1b4ebd2e23'),('45d8875c-6304-530e-888c-c24f44494ffb','b19428a1-798b-5f1b-a91d-b35036f75dc5'),('45d8875c-6304-530e-888c-c24f44494ffb','b318b71e-b837-5358-9985-a3cdd5113fc0'),('45d8875c-6304-530e-888c-c24f44494ffb','ce5c973c-9cdf-5aca-9853-0d5f6b2fc285'),('45d8875c-6304-530e-888c-c24f44494ffb','d042a48d-a51f-515a-96a9-8869254fb813'),('45d8875c-6304-530e-888c-c24f44494ffb','d384ba36-86f8-56e0-840c-953236455956'),('45d8875c-6304-530e-888c-c24f44494ffb','eed290ac-1032-5507-9aae-1f3567edfb61'),('45d8875c-6304-530e-888c-c24f44494ffb','fb1dcdc2-cf75-5778-beb6-2c3dba55131b'),('65d37ffc-f0aa-58c3-872a-0ae21cef690f','3c0f2a3f-9506-5288-9814-ba2e0aadd7db'),('65d37ffc-f0aa-58c3-872a-0ae21cef690f','495504b2-7ff9-5a00-8951-836db5f3fa97'),('65d37ffc-f0aa-58c3-872a-0ae21cef690f','83382e64-2680-51bc-bc43-0251c0b7a6d7'),('65d37ffc-f0aa-58c3-872a-0ae21cef690f','882142c7-3403-5bd2-87bb-a5473de60f40'),('65d37ffc-f0aa-58c3-872a-0ae21cef690f','8cb4031d-2a18-5edd-944a-15cecd5cfa95'),('65d37ffc-f0aa-58c3-872a-0ae21cef690f','9b453500-fa10-5dd0-9b35-eba314d1b5e4'),('65d37ffc-f0aa-58c3-872a-0ae21cef690f','a599a10f-56d5-5439-9bf6-9854397f2130'),('65d37ffc-f0aa-58c3-872a-0ae21cef690f','acb58fce-5e76-58db-85c6-0d84ee0f8c77'),('65d37ffc-f0aa-58c3-872a-0ae21cef690f','ce5c973c-9cdf-5aca-9853-0d5f6b2fc285'),('65d37ffc-f0aa-58c3-872a-0ae21cef690f','d042a48d-a51f-515a-96a9-8869254fb813'),('65d37ffc-f0aa-58c3-872a-0ae21cef690f','e8a499be-1252-5bb7-8e83-41413e6b476b'),('65d37ffc-f0aa-58c3-872a-0ae21cef690f','f1deaf55-11d1-55d3-ac25-23b17755f21c'),('987d15be-91c7-500c-a9e1-fd5b3f703bfe','0ea360b9-5d51-5be5-9859-e909a28bfa5c'),('987d15be-91c7-500c-a9e1-fd5b3f703bfe','281b7a21-1c63-5e31-b688-386460132a37'),('987d15be-91c7-500c-a9e1-fd5b3f703bfe','352c971c-9cd5-5dbe-98a9-39dc8e3b425e'),('987d15be-91c7-500c-a9e1-fd5b3f703bfe','54d871c7-8dd3-5ef8-b17c-399c0d50ccd4'),('987d15be-91c7-500c-a9e1-fd5b3f703bfe','65382dd3-5dc9-5558-9c85-bd4e679817fa'),('987d15be-91c7-500c-a9e1-fd5b3f703bfe','882142c7-3403-5bd2-87bb-a5473de60f40'),('987d15be-91c7-500c-a9e1-fd5b3f703bfe','8d1bde68-a90c-50f9-b3bb-8f1b4ebd2e23'),('987d15be-91c7-500c-a9e1-fd5b3f703bfe','9a0f5de9-cad6-528f-bf36-77a21a23f4c8'),('987d15be-91c7-500c-a9e1-fd5b3f703bfe','9d7e965a-41e2-5c8b-bcbb-85872f9ec478'),('987d15be-91c7-500c-a9e1-fd5b3f703bfe','ba1f80de-7a7f-58ba-a011-feca056026b2'),('987d15be-91c7-500c-a9e1-fd5b3f703bfe','ce5c973c-9cdf-5aca-9853-0d5f6b2fc285'),('987d15be-91c7-500c-a9e1-fd5b3f703bfe','f7e33b57-8167-57a0-9644-8afd00d54c2e'),('fec52f9c-0f19-5289-9118-263f6a9acb22','213694a7-098b-5b78-81fa-ff41cc7bfb63'),('fec52f9c-0f19-5289-9118-263f6a9acb22','42ab0dca-856e-50f2-b916-662be677e6d4'),('fec52f9c-0f19-5289-9118-263f6a9acb22','516920aa-8778-5ca6-9b94-d0f6e7947263'),('fec52f9c-0f19-5289-9118-263f6a9acb22','83caef16-1d29-57b9-96aa-689fd3539598'),('fec52f9c-0f19-5289-9118-263f6a9acb22','8d57ac44-5e3a-5df2-b8cc-3ed31b6ec70e'),('fec52f9c-0f19-5289-9118-263f6a9acb22','95526273-4bfd-57fe-be78-9d9a2ecb07e9'),('fec52f9c-0f19-5289-9118-263f6a9acb22','a599a10f-56d5-5439-9bf6-9854397f2130'),('fec52f9c-0f19-5289-9118-263f6a9acb22','b19428a1-798b-5f1b-a91d-b35036f75dc5'),('fec52f9c-0f19-5289-9118-263f6a9acb22','d35df6c0-365f-539b-97b5-bc809424b032'),('fec52f9c-0f19-5289-9118-263f6a9acb22','e7dac9ac-1c79-5a1a-985a-2a3372c0bec3'),('fec52f9c-0f19-5289-9118-263f6a9acb22','eed290ac-1032-5507-9aae-1f3567edfb61'),('fec52f9c-0f19-5289-9118-263f6a9acb22','f170016d-a984-5342-b524-d523c6e633dc');
/*!40000 ALTER TABLE `JT_GRUPO_ALUNO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JT_SOFTSKILL_ALUNO`
--

DROP TABLE IF EXISTS `JT_SOFTSKILL_ALUNO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JT_SOFTSKILL_ALUNO` (
  `SOFTSKILL_FK` char(36) NOT NULL,
  `ALUNO_FK` char(36) NOT NULL,
  PRIMARY KEY (`SOFTSKILL_FK`,`ALUNO_FK`),
  KEY `JT_SOFTSKILL_ALUNO_ALUNO_FK` (`ALUNO_FK`),
  CONSTRAINT `JT_SOFTSKILL_ALUNO_ALUNO_FK` FOREIGN KEY (`ALUNO_FK`) REFERENCES `ALUNO` (`ID`),
  CONSTRAINT `JT_SOFTSKILL_ALUNO_SOFTSKILL_FK` FOREIGN KEY (`SOFTSKILL_FK`) REFERENCES `SOFTSKILL` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JT_SOFTSKILL_ALUNO`
--

LOCK TABLES `JT_SOFTSKILL_ALUNO` WRITE;
/*!40000 ALTER TABLE `JT_SOFTSKILL_ALUNO` DISABLE KEYS */;
/*!40000 ALTER TABLE `JT_SOFTSKILL_ALUNO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JT_TURMA_HARDSKILL`
--

DROP TABLE IF EXISTS `JT_TURMA_HARDSKILL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JT_TURMA_HARDSKILL` (
  `TURMA_FK` char(36) NOT NULL,
  `HARDSKILL_FK` char(36) NOT NULL,
  PRIMARY KEY (`TURMA_FK`,`HARDSKILL_FK`),
  KEY `JT_TURMA_HARDSKILL_HARDSKILL_FK` (`HARDSKILL_FK`),
  CONSTRAINT `JT_TURMA_HARDSKILL_HARDSKILL_FK` FOREIGN KEY (`HARDSKILL_FK`) REFERENCES `HARDSKILL` (`ID`),
  CONSTRAINT `JT_TURMA_HARDSKILL_TURMA_FK` FOREIGN KEY (`TURMA_FK`) REFERENCES `TURMA` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JT_TURMA_HARDSKILL`
--

LOCK TABLES `JT_TURMA_HARDSKILL` WRITE;
/*!40000 ALTER TABLE `JT_TURMA_HARDSKILL` DISABLE KEYS */;
/*!40000 ALTER TABLE `JT_TURMA_HARDSKILL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JT_TURMA_PROFESSOR`
--

DROP TABLE IF EXISTS `JT_TURMA_PROFESSOR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JT_TURMA_PROFESSOR` (
  `TURMA_FK` char(36) NOT NULL,
  `PROFESSOR_FK` char(36) NOT NULL,
  PRIMARY KEY (`TURMA_FK`,`PROFESSOR_FK`),
  KEY `JT_TURMA_PROFESSOR_PROFESSOR_FK` (`PROFESSOR_FK`),
  CONSTRAINT `JT_TURMA_PROFESSOR_PROFESSOR_FK` FOREIGN KEY (`PROFESSOR_FK`) REFERENCES `PROFESSOR` (`ID`),
  CONSTRAINT `JT_TURMA_PROFESSOR_TURMA_FK` FOREIGN KEY (`TURMA_FK`) REFERENCES `TURMA` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JT_TURMA_PROFESSOR`
--

LOCK TABLES `JT_TURMA_PROFESSOR` WRITE;
/*!40000 ALTER TABLE `JT_TURMA_PROFESSOR` DISABLE KEYS */;
/*!40000 ALTER TABLE `JT_TURMA_PROFESSOR` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PROFESSOR`
--

DROP TABLE IF EXISTS `PROFESSOR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PROFESSOR` (
  `ID` char(36) NOT NULL,
  `USUARIO_FK` char(36) NOT NULL,
  `CRIACAO` timestamp NOT NULL DEFAULT current_timestamp(),
  `ATUALIZACAO` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`ID`),
  KEY `PROFESSOR_USUARIO_FK` (`USUARIO_FK`),
  CONSTRAINT `PROFESSOR_USUARIO_FK` FOREIGN KEY (`USUARIO_FK`) REFERENCES `USUARIO` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PROFESSOR`
--

LOCK TABLES `PROFESSOR` WRITE;
/*!40000 ALTER TABLE `PROFESSOR` DISABLE KEYS */;
INSERT INTO `PROFESSOR` VALUES ('066c2d82-94e0-5826-b96b-f4cc8deb0d6b','3b0f7cb5-e4c8-5e87-8691-c24c6b5b1cc1','2021-04-13 00:57:23','2021-04-13 00:57:23'),('1778def3-6ce3-5498-8180-fb4b54877204','8f832b0e-e7fb-54df-9823-1248ccb62bd4','2021-04-13 00:57:23','2021-04-13 00:57:23'),('1e6960fc-ac7c-5b24-970f-2791405cbee9','41e6c8ae-1e75-5efc-81d3-00a09997cebe','2021-04-13 00:57:23','2021-04-13 00:57:23'),('2f602f5c-e3b5-59e8-80ae-14b91689b8c1','91efe080-2875-531f-acfe-8c2e4649c245','2021-04-13 00:57:23','2021-04-13 00:57:23'),('50e08dfb-42d5-50d8-bd50-bfc7204cb921','5f150c0d-0be6-5782-9f5c-005cbc3d3c39','2021-04-13 00:57:23','2021-04-13 00:57:23'),('5d4a69a6-4609-59d7-92f0-dd4b7bfca53f','8b5462fe-6a41-5947-8d79-06b01193ed59','2021-04-13 00:57:23','2021-04-13 00:57:23'),('800a41d7-44e4-5998-b00e-03a4d830beaf','95c0e019-2b1c-5bb9-9496-da5240134d74','2021-04-13 00:57:23','2021-04-13 00:57:23'),('98078022-7abb-5727-be3f-dee3cff951f4','a701166a-be9f-5547-b6cd-e0ac7fb86b6e','2021-04-13 00:57:23','2021-04-13 00:57:23'),('99dc8df8-5612-5cd3-8426-3ba0063635fd','ab1c5bcc-3e5c-5fb8-8ba5-a15b39e03838','2021-04-13 00:57:23','2021-04-13 00:57:23'),('a53e6b4b-3bd3-5fdc-a45a-47356dbca826','53b74b3f-bdc9-5cfa-b2e4-eafdd44950ed','2021-04-13 00:57:23','2021-04-13 00:57:23'),('c6e22ecf-8189-58a8-9f21-1ca2d39a7099','76cb3370-b46e-5aa0-9ae3-fa428e9ea2ff','2021-04-13 00:57:23','2021-04-13 00:57:23'),('cd9a403f-05d1-5d66-87de-cc11ffd0c428','37062b86-8e25-5f06-afde-1ecf7d9f145f','2021-04-13 00:57:23','2021-04-13 00:57:23'),('d32bf49f-0ae7-578a-8a33-a086a4e5bfee','5485fee8-c989-5101-9812-a10ef045332b','2021-04-13 00:57:23','2021-04-13 00:57:23'),('d9538f36-08a8-5eb0-a638-3c5e9d83d9b6','ec42822a-20d7-5471-b156-e9265a1858f3','2021-04-13 00:57:23','2021-04-13 00:57:23'),('d97e1c05-a309-5a39-a26f-62604d69a27e','1b7b052a-db1e-5014-bbd0-69d6c03b62bd','2021-04-13 00:57:23','2021-04-13 00:57:23'),('e9a97e92-6d7d-504e-8aa6-f47449ea1494','27fb05c5-10d1-5d1e-8e1a-3a56ee254d5e','2021-04-13 00:57:23','2021-04-13 00:57:23');
/*!40000 ALTER TABLE `PROFESSOR` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QUESTAO`
--

DROP TABLE IF EXISTS `QUESTAO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QUESTAO` (
  `ID` char(36) NOT NULL,
  `ENUNCIADO` varchar(512) NOT NULL,
  `RESPOSTA_A` varchar(32) NOT NULL,
  `RESPOSTA_B` varchar(32) NOT NULL,
  `RESPOSTA_C` varchar(32) NOT NULL,
  `RESPOSTA_D` varchar(32) NOT NULL,
  `GABARITO` varchar(32) NOT NULL,
  `USUARIO_FK` char(36) NOT NULL,
  `HARDSKILL_FK` char(36) NOT NULL,
  `CRIACAO` timestamp NOT NULL DEFAULT current_timestamp(),
  `ATUALIZACAO` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`ID`),
  KEY `QUESTAO_HARDSKILL_FK` (`HARDSKILL_FK`),
  KEY `QUESTAO_USUARIO_FK` (`USUARIO_FK`),
  CONSTRAINT `QUESTAO_HARDSKILL_FK` FOREIGN KEY (`HARDSKILL_FK`) REFERENCES `HARDSKILL` (`ID`),
  CONSTRAINT `QUESTAO_USUARIO_FK` FOREIGN KEY (`USUARIO_FK`) REFERENCES `USUARIO` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QUESTAO`
--

LOCK TABLES `QUESTAO` WRITE;
/*!40000 ALTER TABLE `QUESTAO` DISABLE KEYS */;
INSERT INTO `QUESTAO` VALUES ('1db51745-45e4-520d-8464-9fc981c273ac','Kug fiagi nud ezfifec hegdoov ruzis sin raetu wahiejo kocmabkah bucukato awomis fe aje po dethanhu gab akto. Dirirhi tevfa abaatije dopuh luip guuw bahes binpuz vacicdus tugfej vumeh iknagu po ha. Beorhih etwiz hojopo ijokej eg ructiv pan fetlijgew jewli hebiwol sora zufizipo poz fim setec.','Cocuuh legurja ibzo.','Oculaw pob kali.','Ruhece wa emenubis.','Bakbet cib nulaj.','Oculaw pob kali.','1b07abd3-6342-59df-bceb-082996d09bf9','4aa36247-4077-55e2-8cc7-444348749d41','2021-04-13 00:57:23','2021-04-13 00:57:23'),('3a1e9ad2-b3b1-575b-a0bf-38b8604dedbd','Ni uhuhovic gifoh wed atiesaos sihokjo mal ih ridug wowwavo gol somzet nihe le. Hivkif wub igal pusbo hu fomi vom zopho uz ageca gi keob oluusula dicpul firwudej camoz movfimez. Lak ve nimhonpub fogembi tap nudubupo vovuji wovur ri jaavi cuak mofro upcu akaez tok.','Vefo wibdeac bisacot.','Ku obi pim.','Irijvoz niwmu mera.','We tuw pence.','Ku obi pim.','58e484fb-10c3-5b63-8a2f-51ed34209cfa','c00f12ed-1a2d-5160-960f-c0de5efb0479','2021-04-13 00:57:23','2021-04-13 00:57:23'),('41216966-f1ff-5eb7-8e41-0e402a5959bf','Libjebpid bij na ri wo hez galekgur ifouk hev go le zepvas fedeut dela abumit hu wizu. Hizfajaf irujo li gubojasok pokfos uv sol widani duw ilopomgez rawdo zostamo fogecob. Gaav bucve fudmej ji rag bahceweja otofeub gob durgagam pofof belop pevsufef ihoek pu guzzadu.','Sunkioc minu cizbule.','Nodga taor egu.','Zo red ko.','Tiv desfifud cet.','Tiv desfifud cet.','99627b55-aa92-59ba-a766-d64f67e7a53f','bbab9ed9-5d7c-55d0-83f6-68b690c187cb','2021-04-13 00:57:23','2021-04-13 00:57:23'),('44c9508c-3aa8-56a1-8ac4-7b74caa41f62','Ofibonji rogejeg saj zero eg bul gosan ulkor bap uduaw cibhis jidiw fam hudopelug. Vunim rugduf ite le sog tog kebufi donowfaj inonodnaf waobuzo van licudbe sizil nulreci dan ici. Ge aluuf le epiharde vekuctip ivogahe evobovte ojuze gi gup dizdu ta anbe gewu el odari cutjezeg.','Vobaceseg ti igije.','Toune la angerom.','Jibamba vodetfis neputwok.','Anpa oheeb lip.','Jibamba vodetfis neputwok.','35751f92-f885-519b-a6a4-4115b9eec41f','7695e5dd-bce6-519f-a59a-60b56cfd3676','2021-04-13 00:57:23','2021-04-13 00:57:23'),('484eb554-9c02-5dd8-99bd-d44ed5db41f8','Apuwoabu re wechaf lo is jumluefe zohe pide izozev iluanet pub bon. Ajku copudnuj no tiplazaz wodcah vib jub seuko regrodif neogro huv bogocwoz jef. Tifhuf rocibu upiwu hiez mufefne ewmehob uv helrildod ruepi lelij un overa dif kaucav am kajegmiv jagezupis.','Igonno gilpobek refusil.','Gosuj loip ac.','Marut ive ficig.','Nolu rebod wabvosem.','Marut ive ficig.','3613b8d1-92d4-5d93-8d22-8c568eeaa859','ec2bd0ce-dc2d-5c36-86e6-93d5160059ac','2021-04-13 00:57:23','2021-04-13 00:57:23'),('4e42c250-3d26-5748-b092-cb4ce36ddf49','Nenovfi zurip nuhjuf lojrirpa vojed he japrukif li zab ba di gifurmag daguwefif farfe fapega eguve niklal. Vacarivi ihure uvrisa zelgon zaranpa lu opluru awupahle opdobpep debi ikalem zuwhiic epo difzog jaf. Wuz mavah malaba fugil wendo evpa nukwubej sarwurka rolu gitnebu foheg biwdiras bow ihlubuw dohleuva gikwicpe.','Lekrej ohzul lib.','Dahuup rac kimpucba.','Fitcu faeno zo.','Afofo ecemeh cosotos.','Dahuup rac kimpucba.','5a855512-fd17-5755-b349-ea85b742dd17','76035694-c0cc-51ac-8f76-9ffb9231d1f6','2021-04-13 00:57:23','2021-04-13 00:57:23'),('568d2af7-d623-54ed-b8b2-d485f1e974a6','So redtaci ucuivukit nivbaer mulahwo mazku loh fidi uz ratumi galewnet osa tos fehifo nurusbi tajegami ce kah. Recdanna jiveddef sa joh dig riaz hoociuk kevit pe kuhuj denje cimifi vafba ridejop nuv usaig todezla koiwa. Faw puf poz dunohzu sevke vodowce rew pepgug habnam obo weribvo aho ceecsok.','Cihenani ju lugze.','Pubosi ga vije.','Bismowu virod vazrerted.','Peici wahseg kajet.','Bismowu virod vazrerted.','a47d9702-b9d3-5faf-be18-86b4b635cf1b','7bca5bbc-8408-5c86-994d-63d7430a14f3','2021-04-13 00:57:23','2021-04-13 00:57:23'),('5e44bbaa-bc84-58e0-8389-2ef90522958b','Posod hefapra epasso ha epkirzec kidgas kok gumovtic hitmi mugo pecda julona is sogho jomapo gob wib midpakpun. Huc su lif pu va jonjaziw wokla dup jite bihsuhud wik muzoh. Izapehdec zi ucakapon cubovusu veg uzcek zucaw dac wuwpaf ozgudumu munaffo peba.','Kokulumo camjurimu dit.','Ivuzaz herowutez dajrag.','Fe pa rolovdot.','Vop sibparuh ovabez.','Vop sibparuh ovabez.','7a1315fd-40ff-539f-ba37-9638440a6060','37409b77-17ac-5ff0-87c1-9106f7d30ef3','2021-04-13 00:57:23','2021-04-13 00:57:23'),('61e87352-8af6-5ce2-a049-46d343fc3fd7','Lar rofe gasbasfe jalca ujupar mizajtec efore hoguga hu ezzugca kukmef gas mako. Vi ulo efe jakizut up fi tefer gikheruw lokuvo seborop jitbevfac caeb. Zozephet uhu maheta wow bo ju ihibsut vih judfo to uponenwi okcoali zip ekjo cijat joraf ogibu wufi.','Pade sodpur febilo.','Watgezi lepep todal.','Hapicmev tosbok nir.','Ci lawib gudti.','Pade sodpur febilo.','5a2aa51c-685b-5948-bcd3-f75f4b53ebc0','bc7c7327-2968-5b3b-b66b-8ff0ab1a0707','2021-04-13 00:57:23','2021-04-13 00:57:23'),('62e5d917-b7df-5550-8ec3-ad7cfd0e8aaa','Okzonge ke likak gufcibpe su subewip bam vehpavi kok gel vutlupij fa nice. Zo wi epikubek me muj awak iwiba va capap koslu gaadamoh haw. Obkov bestidog befit wapu zeb goc oca fu dakwo kugiwo tu natemper fazapadiv encuv bi tut fiudvo ku.','In icu mit.','Gephoh fu bitno.','Zud kiftog tomvanro.','Bilambos pi fecuw.','In icu mit.','51241cba-9f27-547e-ae01-af170330e3b5','ec2bd0ce-dc2d-5c36-86e6-93d5160059ac','2021-04-13 00:57:23','2021-04-13 00:57:23'),('68bf89f4-1143-5d4c-88b4-f97620ba1162','Ekohum daf do wevwirev uri efuugve hako kihtuk dotlep pevsezib vi ro lumhej ogool nerug todbupkav go. Tacleof dicsiwguv wu ase tu bo faglu ruzji iltab raclarot oboahanu jemocna nu suzhad abakup rulici zo teg. Uf gaki ru rih hecip vefdo obowo kombotnec te li fa niw.','Fetvag tebuwwe epoka.','Fehzuw icgi ronwave.','Gasgiwso wuz uguh.','Enutam re elnohiz.','Fehzuw icgi ronwave.','20de194b-d52a-5634-be7e-1f68a0e343ca','58081b22-94ee-5832-af80-458e125ff183','2021-04-13 00:57:23','2021-04-13 00:57:23'),('6e89b1cd-fe98-5818-88d3-0439864df172','Zobkodgo arlefu ciav pepu soogoom ciji dasipab wijit himadbo umo doti vahceta te be momnuahe jegergut zim. Uco gihli amjo zuc ziw gop ro vizre owget donuro puaguaga ropotbi fozeri puwas weguw. Uskej vessa asegicok uwa bomfer vejopo derapid sap tadu cagpar zaebudep vihewuhim cijom von jepnikbe tirokta bumhu.','Sej akewigup gozpi.','Sojonzur da pomfocos.','Aducesdej vi ona.','Jugaj riblemi cojzatu.','Jugaj riblemi cojzatu.','224bea20-c20e-55e5-8187-769741bbe16f','a5b47e65-d226-5b5c-9996-bf19640d92e8','2021-04-13 00:57:23','2021-04-13 00:57:23'),('70672b76-c3e5-545d-a9af-b94d8cecda2f','Deipa egapac mi cakapler kidupo sig ub hawamunik uccomek de jutiz ivre. Bes tivopwa vowu josbiv utjotu niz siupaom kivwoz cis kawole ruzpowun paika. Ufijcep ohatu weptaz amo wosasuw asosofep urope guode arporbi gopu hif hobo.','Ru aw zaflawdik.','Umalel tinomsa zezwo.','Fefoh igigota uzji.','Zecjacoz ohjefun dosufomic.','Umalel tinomsa zezwo.','1b07abd3-6342-59df-bceb-082996d09bf9','7ec97310-04ec-5cf3-a6a0-7b4956794736','2021-04-13 00:57:23','2021-04-13 00:57:23'),('77c39269-f714-5eec-a61e-71c82030fbae','Kevbew dosfe puzaha otalocre mi secmib sutmo gulobje oppupe ogecoggu nawoatu ij sakanno ho bizup lucba zaki. Gu opje vohed uruhivbi ve dut asufon hiluz nurger so makbecav segsiki zululbu nuhvik bavawle mofog. Wefor nic meg pewal edetol imo cefso miduogi def tezne ogesud pihmow eci eduecuviv viwe calso wep cep.','Wugfa vifufror peif.','Pipoldec ov jovvezben.','Igupajsew woiciig eri.','Wi ke akeiske.','Wugfa vifufror peif.','099cf69e-6d67-5ec0-8cdf-e9e8677b85a6','4aa36247-4077-55e2-8cc7-444348749d41','2021-04-13 00:57:23','2021-04-13 00:57:23'),('78039423-0ee4-5b2b-80af-f9046a9d5340','Eg ek weluvo fecebera ad bajadvu rip iwsusdo oti it riwle cume kolra. Kan oj sunbu ci kawbo be mukorid ekaajuij hajror gi pe azte cu zitdeeka. Ajovwo ke oden upewohe hobricuk jaale tetar unoteme din cimuh loj jeis won munuvpe tavub ase.','Uji lugom do.','Inufi zapket zuol.','Napgub uvekugud fabe.','Epwo zavod wutapwe.','Inufi zapket zuol.','a47d9702-b9d3-5faf-be18-86b4b635cf1b','37409b77-17ac-5ff0-87c1-9106f7d30ef3','2021-04-13 00:57:23','2021-04-13 00:57:23'),('7ddeec93-bd67-51f4-9464-050ed7e0ef4c','Fo zopib hacfeob jufanog kijufe serlib nakis ahiuk imawacceg pa soba noj palemic here oc. Werti bawfub bawfah fo lupseddih ed libkis sekicoc ro risubu zu dul salor niome neaz. Lesrecoh pabgiv gi lezelez kapeh mec of awo we ed hipfi acso.','Cejiviz cavog nikaz.','Foohgu mojju garu.','Ruvoma fezig hoze.','Popew gojuc kolap.','Ruvoma fezig hoze.','3b0f7cb5-e4c8-5e87-8691-c24c6b5b1cc1','ec2bd0ce-dc2d-5c36-86e6-93d5160059ac','2021-04-13 00:57:23','2021-04-13 00:57:23'),('8d403b9d-4589-5c7c-8763-6b73889774e7','Sones vok daka iro omfuut fonut uhemgu siguf sofsef tu suusba inivu wah fadjiz hosoned. Toukujoj im nem hurca su te cuv nihulij da boav namru vesiku eri nasan gud iwosah uhalun hemucir. Lub vivden zefenes facov gudtutah ivwikiso azoodzon mu mepbo hak buman wa bubdebduh helir leboze.','Olkuz manotodec le.','Vogug ajodoro fi.','Wo egomal dub.','Busac ga bi.','Busac ga bi.','4c522bba-9507-5df6-b0c7-53e875084602','76035694-c0cc-51ac-8f76-9ffb9231d1f6','2021-04-13 00:57:23','2021-04-13 00:57:23'),('93224f26-bdf3-58c5-9848-f46388a5fa35','Wunupgo musi rozicap uzafiwid ca duz tawwapfu vop kezabew sigvol zawusetu fe zuocja. Foluvo wegom feljuj buacje odi pe harnaaj am wet pom tab solhapwuc hik me agjiitu. Onin dumur wuvruk nobgopi bewkep cofaze nemid jisu ah fulef ca ijigobme tufoed tes ihfacga wuv.','Zanjogom no odocepe.','Cufu isvoul sar.','Satcowsol wo fa.','Din nukij num.','Zanjogom no odocepe.','7d87ba8e-02a1-5d2b-a880-814407a7dfc9','7bca5bbc-8408-5c86-994d-63d7430a14f3','2021-04-13 00:57:23','2021-04-13 00:57:23'),('98ae7c24-f9cc-5b60-864f-a90dcbfd5b82','Hedsa oho lacre imzu retgu pi donutbev oz ga goop nedutu wukalafow dip sinset goksefni obe tehahso. Rom tec ju webgul wi sackodi idifufap gar oz remcez mom ofi tuhozida zumuzoah hukjejo diwocudak. Rec gopnufgi pebu vim sacowucut mijasi ceizew pogpo vulnureh upor hojegufe wistede.','Kohgata ba webeja.','Didalor jesac vevi.','Dejelave avamakwo atmenez.','Vowok kubelu odraver.','Didalor jesac vevi.','2227fdf3-195c-5e4f-a48e-f9a85ddc9a8c','bc7c7327-2968-5b3b-b66b-8ff0ab1a0707','2021-04-13 00:57:23','2021-04-13 00:57:23'),('9f5a1ffe-7b0b-559b-af27-700ea16c20eb','Pifwiset noirohu epci an awiko bu sezuhesok fusfa kelu gef juoljoj envo lazedver cajocuv fu ohtohbeb zofik. Civ kohemsi vipezzi mogulha kusofmat wen zaddon cunele gidlosiz ciguibe esehikdi pigu sitri bafuj fu zecpu zuvjasab. Rupi jovuh gibonfu dan rud wuwjah avokoibo muhzip zuzluzuf ogujuaz rendu kiipwaw pewaji kujupfis vi pub zowol.','Jajhakta sonake jinla.','Us igofejub kuuna.','Usadubi wes vuazdi.','Bibil ninujri fefapwo.','Usadubi wes vuazdi.','a9263dbb-e0d2-595f-aacb-db09d7be364c','7bca5bbc-8408-5c86-994d-63d7430a14f3','2021-04-13 00:57:23','2021-04-13 00:57:23'),('9f81376a-b52a-58f6-9b5f-4abe51e7b141','Pegtam reske hocnolap ruep vu luhujce hopuj tevsik ujsuhej bup bokuv dipe olsu run bemaba. Rojahep abi nojvev welca piwij etkoetu mos zeheg cac moz kifnamon jet rofi. Urdu kajsi ikazokek pa vojaro lot we sitliho jo fup jadihud amla je ligijag.','Jev cun cewloltol.','Ugowupkoz hud cahiwsud.','Ficvu wognihvop kad.','Zihrivuj pacwa cagaj.','Ugowupkoz hud cahiwsud.','aed13b6d-dd40-51c2-8520-881994db2940','c00f12ed-1a2d-5160-960f-c0de5efb0479','2021-04-13 00:57:23','2021-04-13 00:57:23'),('a7b53140-d989-5ee6-874b-e5f88209dd4e','Sel cu com fiojocuk custek alsagtit bu tupozgur muc umsakak gewluswa polojta won zenzam havuj. Ledirco kev ecmufje pu mokime wagcehot siopiji agfum rupites so dodwalib kiewo la amsufta. Ic wiwrev go wi inoawdob bebinib sotu buzdumug satipho suroj zedag deb si wuzbaic pedi vajjah joncapug fumbi.','Goblo ruhe omevgiz.','Vod me ra.','Lubzegug liwaow epuwawbu.','Nuwnura gi nuture.','Lubzegug liwaow epuwawbu.','a4d542cb-be13-50e9-b8a1-91ba9dfa9cce','c00f12ed-1a2d-5160-960f-c0de5efb0479','2021-04-13 00:57:23','2021-04-13 00:57:23'),('b5888c65-4289-54ed-a6d8-a26ed5aa5cc8','Pi wedajes sa ohudean nuh uvtitef hin vetop veaha heube fiffu usabogew mo. Torohigi sa gun avubazto vov ci lo minetume celep huul tami ta utnois azaba livgap genociobo zeffuzi. Ifcihju wo di buhkakrok pozhi verope ew owaacu kigpodju ino pabo ehema etu segefafa zanefe asjothu.','Wujtazu iniipaka bi.','Acaruziv su ji.','Azkabuh obe bu.','Obudobso he rah.','Wujtazu iniipaka bi.','d61c659b-a930-5776-8ff3-99152b6664ff','7bca5bbc-8408-5c86-994d-63d7430a14f3','2021-04-13 00:57:23','2021-04-13 00:57:23'),('c8c21395-a206-50b5-9f2e-ddf115f96292','Liklecov udiged varig alicemo dazwow mifovov ifogek kicbove hajmomul lecmu nu vo fezew. Vuupwi vo piviuma kouba okka cuc ephe co cutage tavtigim papni co lucic vowvughu oz moev tipcukzil. Nu kuh vockinreb gehduj bimnu julhaibo gesokeni hukdazmib wohegac ite no dupen on gul.','Jod naew adok.','Gibgeem pukwah jutore.','Gu opadwa jahhi.','Monip atigi ra.','Gibgeem pukwah jutore.','95ffb383-45dc-5bbe-9e40-da60fccdf27f','58081b22-94ee-5832-af80-458e125ff183','2021-04-13 00:57:23','2021-04-13 00:57:23'),('ce2549be-1dae-5b68-b73c-24ae97289690','Ka jiidhof bongus cese safli oboimmid toksoh hiruzag tavo he kahce buzzavwav faw odi oconebi. Buke iwiuca osifuc nik nesgehle hiwefe efijhib necaj vis ducofego ohoozmip butlabne emewu ho. Jab lele tukecdip navjo kez wus samko me vij heci holu mik filod werem.','Doca pet lezisepi.','Dernoke al idnitog.','Cidrere dunib hogu.','Tiun fopni gaol.','Doca pet lezisepi.','37062b86-8e25-5f06-afde-1ecf7d9f145f','7695e5dd-bce6-519f-a59a-60b56cfd3676','2021-04-13 00:57:23','2021-04-13 00:57:23'),('d4ed460c-21a4-59c6-9a48-d5925e5ec01b','Sihoda tu oj zieci helza zumnejtob dejmazaha raj on zuwwenzeg egama zaztew monpu. Ihbi bap bopin madwa tewafopur etanefuw ahha izako beworow ovelaja mij ujefe ugo ke. Agiz wajzi du ucolello ohu toj kum pinso zise im foura faripge puhoc toh.','Wisogeg uka edihgum.','Gazwade zikhagle wasit.','Kut di ahzo.','Uwarem ur mugmogjik.','Wisogeg uka edihgum.','9b3d6866-d633-54d0-840e-17a3e7ebd031','7ec97310-04ec-5cf3-a6a0-7b4956794736','2021-04-13 00:57:23','2021-04-13 00:57:23'),('dab43581-7465-5a3d-a97c-00bd1da6f168','Ilwerzig he ukazefi zu ga fec tuv fu serduroc lo za pok lazgaz bakguzif. Hu ru akconah edo tujan to zeb liju ni evomadja ok cobsahud apu iscaman mibpeera wisoddu orpov. Girga ampicu goczi larefzas jumo so leurbag kauko lin gu tuwvole hil milolam.','Dazulu ki ferima.','Eh kappese zodcoki.','Lous iz obwide.','Cofotaw vuc lostibbal.','Lous iz obwide.','bf9cdc6c-970d-5eb3-bb53-584fc1ab5764','bbab9ed9-5d7c-55d0-83f6-68b690c187cb','2021-04-13 00:57:23','2021-04-13 00:57:23'),('df4f5893-c52b-5cef-8e30-d0314d419794','Go huewlu umefedmu lic atferlaf teote diwhu cil woalomip eh ho sapoh aptemrat pekav ara ifigo. Ficjuldor us un bojdo logowni atego catacav osafut jal potsud kusli roskadu jurnac hecovodu nugutu gipik kobsok linole. Mef ino paj fuvcori hegoj fume awu zes uc ova alokomiw zarowa gaor mujed ju.','Akezov hejibaz gofoluto.','Risa jogfohu mo.','Geawuado holudvar lerhuf.','Ni dol futowe.','Risa jogfohu mo.','d61c659b-a930-5776-8ff3-99152b6664ff','58081b22-94ee-5832-af80-458e125ff183','2021-04-13 00:57:23','2021-04-13 00:57:23'),('e4cc89a9-9f43-5d30-b3a1-29a1ee247533','Revavma fowevfug uku nabhu wuew udit fopugaofu jubuw se fomca foaki muwfeaca kim be. Korvamlet co demog niaza zaj kicfe te uguzu hod demguf evu babcedta guroza isavevte ma how. Wasojwir bab maor ne ren eni ce mehug dikejiguf perfubuj ceg gevaoti ruvus jov ilcehpe ev kiw biwvisgu.','Aj waadi rah.','Sehuoc bitnip ka.','Zo agu peumebu.','Ebcut kofvodta josev.','Sehuoc bitnip ka.','f59580f0-402b-59b3-b5d6-66cf544fcfd5','c00f12ed-1a2d-5160-960f-c0de5efb0479','2021-04-13 00:57:23','2021-04-13 00:57:23'),('e8283b38-221c-509e-9ddd-0c81e5a58140','Povus ud zi vimkoco tabfugugu abeju erofi eluvgiw lafmoeno adulocar ruune paile mezrewon. Iwduzhag wenuger fodjisu ditono lepicoba dezzi pidhum ma ziziz litvum si wofki wune ja nujomez mo sofdigduc. Ivjebfu oda ofjuhe deki fajcafo mog dupippaf noswef vid ezaocju du napzu kapi balafe.','Fof ta cagi.','Dehir jewohnoj kerdotol.','Hop owtalmed miebo.','Foug mefdere nu.','Fof ta cagi.','0a142a20-7d23-5ba9-a2c6-cefe29168007','c00f12ed-1a2d-5160-960f-c0de5efb0479','2021-04-13 00:57:23','2021-04-13 00:57:23'),('ebd281a3-0230-52d3-9a20-93802844602b','Avdud eznugcer na tir repmace wu dibetif kowov rohajful fuj kosozmom pesev omi foh. Zad jutekzi rukinzif ne fawhak jesot bol re pezfedju gorewgen ko rucajok ube rijeamo gebowafo luj nukopupo. Igiogej cice awkifef memowun el coz jopmec oltak tonurcef ucu pi vimof.','Hazwaso furcuv hej.','Binta izdian igogic.','Toelduc nirivivuz bucuew.','Ijje aze kagujose.','Binta izdian igogic.','a05302f2-ed1f-5012-85a6-3a6b922c2549','e996bb3d-fd94-5bd6-abb5-bb56d5f095f7','2021-04-13 00:57:23','2021-04-13 00:57:23'),('fc95beb4-dc1e-55fd-b779-acbf194687e8','Vi dum cejogkop awhupbik ne id sebijgu ipukujus ahovub zo apmudop si bel joed. Bepuc lo rehomi vu osijuhav lan gan gamibuzo fo laum lo kazug kid. Gepuv bel lofetuf ovowu tu up nub iko niod kabazur gofca ecezi.','Azerazu lewko faga.','Nusolmis cutowif ne.','Fafic dobo cus.','Usapoppu jevamih kiteno.','Fafic dobo cus.','51241cba-9f27-547e-ae01-af170330e3b5','df081832-86aa-544d-b05c-001e9ebe0a34','2021-04-13 00:57:23','2021-04-13 00:57:23');
/*!40000 ALTER TABLE `QUESTAO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QUESTAO_DIA`
--

DROP TABLE IF EXISTS `QUESTAO_DIA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QUESTAO_DIA` (
  `QUESTAO_FK` char(36) NOT NULL,
  `ALUNO_FK` char(36) NOT NULL,
  `CRIACAO` timestamp NOT NULL DEFAULT current_timestamp(),
  `ATUALIZACAO` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`QUESTAO_FK`,`ALUNO_FK`),
  KEY `QUESTAO_DIA_ALUNO_FK` (`ALUNO_FK`),
  CONSTRAINT `QUESTAO_DIA_ALUNO_FK` FOREIGN KEY (`ALUNO_FK`) REFERENCES `ALUNO` (`ID`),
  CONSTRAINT `QUESTAO_DIA_QUESTAO_FK` FOREIGN KEY (`QUESTAO_FK`) REFERENCES `QUESTAO` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QUESTAO_DIA`
--

LOCK TABLES `QUESTAO_DIA` WRITE;
/*!40000 ALTER TABLE `QUESTAO_DIA` DISABLE KEYS */;
INSERT INTO `QUESTAO_DIA` VALUES ('1db51745-45e4-520d-8464-9fc981c273ac','0ea360b9-5d51-5be5-9859-e909a28bfa5c','2021-04-13 00:57:23','2021-04-13 00:57:23'),('1db51745-45e4-520d-8464-9fc981c273ac','87dc5003-d00e-5ea9-ae03-5038d6a0d5df','2021-04-13 00:57:23','2021-04-13 00:57:23'),('1db51745-45e4-520d-8464-9fc981c273ac','e050ed1c-3919-5b09-bbe9-e2b418feabbe','2021-04-13 00:57:23','2021-04-13 00:57:23'),('1db51745-45e4-520d-8464-9fc981c273ac','ef7b543b-ae95-527d-ae43-c1b6cb89ee3e','2021-04-13 00:57:23','2021-04-13 00:57:23'),('3a1e9ad2-b3b1-575b-a0bf-38b8604dedbd','cdc8255e-f4eb-5f37-a506-ea9eb07d5101','2021-04-13 00:57:23','2021-04-13 00:57:23'),('41216966-f1ff-5eb7-8e41-0e402a5959bf','876b5217-9b0c-5fb9-871f-0acf28ac3c39','2021-04-13 00:57:23','2021-04-13 00:57:23'),('41216966-f1ff-5eb7-8e41-0e402a5959bf','a599a10f-56d5-5439-9bf6-9854397f2130','2021-04-13 00:57:23','2021-04-13 00:57:23'),('41216966-f1ff-5eb7-8e41-0e402a5959bf','acb58fce-5e76-58db-85c6-0d84ee0f8c77','2021-04-13 00:57:23','2021-04-13 00:57:23'),('44c9508c-3aa8-56a1-8ac4-7b74caa41f62','10b18e6e-b12d-5c28-983b-bad5495f42b6','2021-04-13 00:57:23','2021-04-13 00:57:23'),('484eb554-9c02-5dd8-99bd-d44ed5db41f8','9b453500-fa10-5dd0-9b35-eba314d1b5e4','2021-04-13 00:57:23','2021-04-13 00:57:23'),('4e42c250-3d26-5748-b092-cb4ce36ddf49','d384ba36-86f8-56e0-840c-953236455956','2021-04-13 00:57:23','2021-04-13 00:57:23'),('4e42c250-3d26-5748-b092-cb4ce36ddf49','fd098edd-ed47-5414-8864-e6ebf2a386e7','2021-04-13 00:57:23','2021-04-13 00:57:23'),('568d2af7-d623-54ed-b8b2-d485f1e974a6','33f066cb-c99a-5e70-a946-113dde0b86f5','2021-04-13 00:57:23','2021-04-13 00:57:23'),('568d2af7-d623-54ed-b8b2-d485f1e974a6','352c971c-9cd5-5dbe-98a9-39dc8e3b425e','2021-04-13 00:57:23','2021-04-13 00:57:23'),('568d2af7-d623-54ed-b8b2-d485f1e974a6','90e770fa-e1ea-536d-a3b9-17dd33b5c853','2021-04-13 00:57:23','2021-04-13 00:57:23'),('5e44bbaa-bc84-58e0-8389-2ef90522958b','880fc01c-c41a-5bf0-896f-4232e4d54357','2021-04-13 00:57:23','2021-04-13 00:57:23'),('5e44bbaa-bc84-58e0-8389-2ef90522958b','9af2bd6f-ebc4-5781-a7db-9c2f6310afeb','2021-04-13 00:57:23','2021-04-13 00:57:23'),('5e44bbaa-bc84-58e0-8389-2ef90522958b','d1b5c247-fe83-5264-bc87-0c84ca7b2e15','2021-04-13 00:57:23','2021-04-13 00:57:23'),('61e87352-8af6-5ce2-a049-46d343fc3fd7','24c695e9-2be5-5125-9f78-95911d048596','2021-04-13 00:57:23','2021-04-13 00:57:23'),('61e87352-8af6-5ce2-a049-46d343fc3fd7','5c092e3e-f2e1-5489-a520-f4a5a5199f94','2021-04-13 00:57:23','2021-04-13 00:57:23'),('61e87352-8af6-5ce2-a049-46d343fc3fd7','762bf295-08dc-5540-98d2-7de7a2278375','2021-04-13 00:57:23','2021-04-13 00:57:23'),('62e5d917-b7df-5550-8ec3-ad7cfd0e8aaa','42ab0dca-856e-50f2-b916-662be677e6d4','2021-04-13 00:57:23','2021-04-13 00:57:23'),('68bf89f4-1143-5d4c-88b4-f97620ba1162','882142c7-3403-5bd2-87bb-a5473de60f40','2021-04-13 00:57:23','2021-04-13 00:57:23'),('6e89b1cd-fe98-5818-88d3-0439864df172','281b7a21-1c63-5e31-b688-386460132a37','2021-04-13 00:57:23','2021-04-13 00:57:23'),('6e89b1cd-fe98-5818-88d3-0439864df172','4409bd33-1939-5121-943e-ecf66ca25583','2021-04-13 00:57:23','2021-04-13 00:57:23'),('6e89b1cd-fe98-5818-88d3-0439864df172','54d871c7-8dd3-5ef8-b17c-399c0d50ccd4','2021-04-13 00:57:23','2021-04-13 00:57:23'),('70672b76-c3e5-545d-a9af-b94d8cecda2f','12192438-15c5-56f2-8bd3-4998d7f5985c','2021-04-13 00:57:23','2021-04-13 00:57:23'),('70672b76-c3e5-545d-a9af-b94d8cecda2f','2621a606-8ae5-56dd-a014-a240c04641f7','2021-04-13 00:57:23','2021-04-13 00:57:23'),('70672b76-c3e5-545d-a9af-b94d8cecda2f','4985f8f5-7b9f-5cb7-95d5-412b53bd6c7c','2021-04-13 00:57:23','2021-04-13 00:57:23'),('70672b76-c3e5-545d-a9af-b94d8cecda2f','6f13fd07-a8a8-52d4-8aa5-201617f56c6b','2021-04-13 00:57:23','2021-04-13 00:57:23'),('70672b76-c3e5-545d-a9af-b94d8cecda2f','b19428a1-798b-5f1b-a91d-b35036f75dc5','2021-04-13 00:57:23','2021-04-13 00:57:23'),('77c39269-f714-5eec-a61e-71c82030fbae','3c0f2a3f-9506-5288-9814-ba2e0aadd7db','2021-04-13 00:57:23','2021-04-13 00:57:23'),('77c39269-f714-5eec-a61e-71c82030fbae','83caef16-1d29-57b9-96aa-689fd3539598','2021-04-13 00:57:23','2021-04-13 00:57:23'),('77c39269-f714-5eec-a61e-71c82030fbae','b318b71e-b837-5358-9985-a3cdd5113fc0','2021-04-13 00:57:23','2021-04-13 00:57:23'),('77c39269-f714-5eec-a61e-71c82030fbae','df9a8a93-612d-54fa-9db7-e5ea0fbb97d7','2021-04-13 00:57:23','2021-04-13 00:57:23'),('78039423-0ee4-5b2b-80af-f9046a9d5340','2fab5999-14b3-5a7d-a243-b4206c78053d','2021-04-13 00:57:23','2021-04-13 00:57:23'),('78039423-0ee4-5b2b-80af-f9046a9d5340','83382e64-2680-51bc-bc43-0251c0b7a6d7','2021-04-13 00:57:23','2021-04-13 00:57:23'),('78039423-0ee4-5b2b-80af-f9046a9d5340','8d57ac44-5e3a-5df2-b8cc-3ed31b6ec70e','2021-04-13 00:57:23','2021-04-13 00:57:23'),('78039423-0ee4-5b2b-80af-f9046a9d5340','e1ad35c2-fcf3-5c98-9c23-945791d003f6','2021-04-13 00:57:23','2021-04-13 00:57:23'),('78039423-0ee4-5b2b-80af-f9046a9d5340','e9019906-e4ce-5f8d-b795-7b5d3bbbb2bb','2021-04-13 00:57:23','2021-04-13 00:57:23'),('78039423-0ee4-5b2b-80af-f9046a9d5340','f1deaf55-11d1-55d3-ac25-23b17755f21c','2021-04-13 00:57:23','2021-04-13 00:57:23'),('7ddeec93-bd67-51f4-9464-050ed7e0ef4c','516920aa-8778-5ca6-9b94-d0f6e7947263','2021-04-13 00:57:23','2021-04-13 00:57:23'),('7ddeec93-bd67-51f4-9464-050ed7e0ef4c','e7dac9ac-1c79-5a1a-985a-2a3372c0bec3','2021-04-13 00:57:23','2021-04-13 00:57:23'),('8d403b9d-4589-5c7c-8763-6b73889774e7','210b71ed-6336-54ae-a004-e4319f69b075','2021-04-13 00:57:23','2021-04-13 00:57:23'),('8d403b9d-4589-5c7c-8763-6b73889774e7','eed290ac-1032-5507-9aae-1f3567edfb61','2021-04-13 00:57:23','2021-04-13 00:57:23'),('93224f26-bdf3-58c5-9848-f46388a5fa35','495504b2-7ff9-5a00-8951-836db5f3fa97','2021-04-13 00:57:23','2021-04-13 00:57:23'),('93224f26-bdf3-58c5-9848-f46388a5fa35','940d4e04-198f-56f6-be07-7dcabff9c6fe','2021-04-13 00:57:23','2021-04-13 00:57:23'),('93224f26-bdf3-58c5-9848-f46388a5fa35','f170016d-a984-5342-b524-d523c6e633dc','2021-04-13 00:57:23','2021-04-13 00:57:23'),('98ae7c24-f9cc-5b60-864f-a90dcbfd5b82','06026820-c062-55e8-b983-f25e98260b54','2021-04-13 00:57:23','2021-04-13 00:57:23'),('98ae7c24-f9cc-5b60-864f-a90dcbfd5b82','368e1790-dc1b-5d3e-9835-5cbd4e792ae2','2021-04-13 00:57:23','2021-04-13 00:57:23'),('98ae7c24-f9cc-5b60-864f-a90dcbfd5b82','8cb4031d-2a18-5edd-944a-15cecd5cfa95','2021-04-13 00:57:23','2021-04-13 00:57:23'),('98ae7c24-f9cc-5b60-864f-a90dcbfd5b82','e8a499be-1252-5bb7-8e83-41413e6b476b','2021-04-13 00:57:23','2021-04-13 00:57:23'),('9f81376a-b52a-58f6-9b5f-4abe51e7b141','5a42f24a-f8b6-58ed-89f4-3746b31386a1','2021-04-13 00:57:23','2021-04-13 00:57:23'),('9f81376a-b52a-58f6-9b5f-4abe51e7b141','65382dd3-5dc9-5558-9c85-bd4e679817fa','2021-04-13 00:57:23','2021-04-13 00:57:23'),('9f81376a-b52a-58f6-9b5f-4abe51e7b141','7443bf96-6d58-52c3-9d53-52cc90ba66be','2021-04-13 00:57:23','2021-04-13 00:57:23'),('a7b53140-d989-5ee6-874b-e5f88209dd4e','30e550b8-9f7f-5b48-98a6-14a0fd859104','2021-04-13 00:57:23','2021-04-13 00:57:23'),('b5888c65-4289-54ed-a6d8-a26ed5aa5cc8','ce5c973c-9cdf-5aca-9853-0d5f6b2fc285','2021-04-13 00:57:23','2021-04-13 00:57:23'),('c8c21395-a206-50b5-9f2e-ddf115f96292','02b49250-febc-5f30-936d-6ce00a7419d3','2021-04-13 00:57:23','2021-04-13 00:57:23'),('c8c21395-a206-50b5-9f2e-ddf115f96292','1d5c2550-117a-5c9f-b503-72332c476ad5','2021-04-13 00:57:23','2021-04-13 00:57:23'),('c8c21395-a206-50b5-9f2e-ddf115f96292','475807d7-e6b9-5162-a58e-12f4d3d197a2','2021-04-13 00:57:23','2021-04-13 00:57:23'),('c8c21395-a206-50b5-9f2e-ddf115f96292','7b9442d3-ce13-5216-8e2c-92aa2a2de832','2021-04-13 00:57:23','2021-04-13 00:57:23'),('c8c21395-a206-50b5-9f2e-ddf115f96292','95526273-4bfd-57fe-be78-9d9a2ecb07e9','2021-04-13 00:57:23','2021-04-13 00:57:23'),('c8c21395-a206-50b5-9f2e-ddf115f96292','9a0f5de9-cad6-528f-bf36-77a21a23f4c8','2021-04-13 00:57:23','2021-04-13 00:57:23'),('c8c21395-a206-50b5-9f2e-ddf115f96292','a8234a68-99b2-5951-8977-b1014a523abe','2021-04-13 00:57:23','2021-04-13 00:57:23'),('c8c21395-a206-50b5-9f2e-ddf115f96292','ba1f80de-7a7f-58ba-a011-feca056026b2','2021-04-13 00:57:23','2021-04-13 00:57:23'),('c8c21395-a206-50b5-9f2e-ddf115f96292','d35df6c0-365f-539b-97b5-bc809424b032','2021-04-13 00:57:23','2021-04-13 00:57:23'),('ce2549be-1dae-5b68-b73c-24ae97289690','05c77d45-fe40-57cd-993e-821402718577','2021-04-13 00:57:23','2021-04-13 00:57:23'),('ce2549be-1dae-5b68-b73c-24ae97289690','a62366a9-8987-5f6a-a11a-e25ed19e6796','2021-04-13 00:57:23','2021-04-13 00:57:23'),('ce2549be-1dae-5b68-b73c-24ae97289690','b3e324e2-b79a-5614-9bbb-8af49695c6af','2021-04-13 00:57:23','2021-04-13 00:57:23'),('ce2549be-1dae-5b68-b73c-24ae97289690','e448d918-1426-5041-b815-5de405f5caa3','2021-04-13 00:57:23','2021-04-13 00:57:23'),('ce2549be-1dae-5b68-b73c-24ae97289690','f7e33b57-8167-57a0-9644-8afd00d54c2e','2021-04-13 00:57:23','2021-04-13 00:57:23'),('d4ed460c-21a4-59c6-9a48-d5925e5ec01b','37efc318-ea14-5abc-a832-053881f1c75d','2021-04-13 00:57:23','2021-04-13 00:57:23'),('d4ed460c-21a4-59c6-9a48-d5925e5ec01b','8d1bde68-a90c-50f9-b3bb-8f1b4ebd2e23','2021-04-13 00:57:23','2021-04-13 00:57:23'),('d4ed460c-21a4-59c6-9a48-d5925e5ec01b','bf04dfca-7c1e-568c-8ab2-4817b7e81eb9','2021-04-13 00:57:23','2021-04-13 00:57:23'),('d4ed460c-21a4-59c6-9a48-d5925e5ec01b','d042a48d-a51f-515a-96a9-8869254fb813','2021-04-13 00:57:23','2021-04-13 00:57:23'),('dab43581-7465-5a3d-a97c-00bd1da6f168','213694a7-098b-5b78-81fa-ff41cc7bfb63','2021-04-13 00:57:23','2021-04-13 00:57:23'),('dab43581-7465-5a3d-a97c-00bd1da6f168','262eaaac-ed08-50a0-9144-3c3a8ed5516f','2021-04-13 00:57:23','2021-04-13 00:57:23'),('dab43581-7465-5a3d-a97c-00bd1da6f168','e845a25d-ae9a-520b-9476-d766eaaae0cd','2021-04-13 00:57:23','2021-04-13 00:57:23'),('dab43581-7465-5a3d-a97c-00bd1da6f168','f3853089-db0f-54c9-a538-dc0b48586bb6','2021-04-13 00:57:23','2021-04-13 00:57:23'),('df4f5893-c52b-5cef-8e30-d0314d419794','b39a90d3-efa4-5711-9406-1dbb794c2b4f','2021-04-13 00:57:23','2021-04-13 00:57:23'),('e4cc89a9-9f43-5d30-b3a1-29a1ee247533','fb1dcdc2-cf75-5778-beb6-2c3dba55131b','2021-04-13 00:57:23','2021-04-13 00:57:23'),('e8283b38-221c-509e-9ddd-0c81e5a58140','46c708c8-5463-5bff-95a1-c0e0c41cdc4c','2021-04-13 00:57:23','2021-04-13 00:57:23'),('e8283b38-221c-509e-9ddd-0c81e5a58140','9d7e965a-41e2-5c8b-bcbb-85872f9ec478','2021-04-13 00:57:23','2021-04-13 00:57:23'),('ebd281a3-0230-52d3-9a20-93802844602b','fb2ea95f-1474-5fff-b102-a2b431850f78','2021-04-13 00:57:23','2021-04-13 00:57:23');
/*!40000 ALTER TABLE `QUESTAO_DIA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SOFTSKILL`
--

DROP TABLE IF EXISTS `SOFTSKILL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SOFTSKILL` (
  `ID` char(36) NOT NULL,
  `NOME` varchar(32) NOT NULL,
  `DESCRICAO` varchar(256) DEFAULT NULL,
  `CRIACAO` timestamp NOT NULL DEFAULT current_timestamp(),
  `ATUALIZACAO` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SOFTSKILL`
--

LOCK TABLES `SOFTSKILL` WRITE;
/*!40000 ALTER TABLE `SOFTSKILL` DISABLE KEYS */;
INSERT INTO `SOFTSKILL` VALUES ('09f41c6e-ef67-59d3-bf79-c5748fd8d378','Auditor wafohi','Osfed ez zu dowjelaj wito woic bisfidi mimni lemurkuv cub jeltepse oz aznu kucof ka. Punwi bu il vez sav jef ozogoora hihivit moiteab bi cob afitimvi icnel wepbaw uzdud gocawsip ave.','2021-04-13 00:57:23','2021-04-13 00:57:23'),('4b49020e-197b-5b6d-b32f-09e1f066fd19','Day ko','Uhi ruhbu nus cave su majeltoh hametba bu sebtuzon johed sojano midin oga vatu lewu bon. Lapjahka bahuh zaro hooceoke dupucuwak wa pigvi few sozap te zolbudpu usbeg bumwi konosofu ba.','2021-04-13 00:57:23','2021-04-13 00:57:23'),('54cc0faa-a0e3-5a54-ad3f-ff8740b01b36','Developer sejvul','Kunafpav ubotatup zowkij minohera pu ibuvcav sof kamfun bobtavur jud jawra wu namba tu. Beduca kalfim baj vowep vas afofa irmobira nelogvi zi rogwehro odha tukat mamgav licco.','2021-04-13 00:57:23','2021-04-13 00:57:23'),('5749fc98-e507-5aad-935c-f8b625789afd','Corporate wo','Cihiv izuta mo koputcoh togzazjin jowdelab nutmi effe vilkuipe soc gu zifkal. Bovuvow il pobu cicici mi vatezroj hedze kaodowa jivecru vibula fafwa uw zidta ducjab remucor do mizbu.','2021-04-13 00:57:23','2021-04-13 00:57:23'),('579a0987-2ca5-5305-a139-1af055837b2f','Professional utta','Kezez wusigu rijewuw rip kapeke tut gebugumo pigov dazo kezawak gi jum favnahija zag cab. Kozosbov bofgiw hoibatew neomu wod ojo busi fefev alolap vuhuwsi zitfuw benif do.','2021-04-13 00:57:23','2021-04-13 00:57:23'),('8d1602e7-7c71-522d-916b-ae013cf92f1a','Musician uduphof','Ivkor iga gom dougpe tizu maro ed zu jaca jiselu bap dajerguj iface pihatoj zizpiato. Pi kuaneer pi vikudes hiw jegig ko vuwivdu an ut duzep ege.','2021-04-13 00:57:23','2021-04-13 00:57:23'),('b616ba08-e434-50c7-bcd7-72baca9243d7','Geologist me','Ucidehfat ipvabis nemuzuik vigebdu ta ciru ovpeh zatuvcat vumefi eh zi mipca fobulna fa. Num fuud mouhowe maru doseharu verlijgit ticpiav oce tuguhnep tota funjomud mo ji boeco ubtis usapug epozashet.','2021-04-13 00:57:23','2021-04-13 00:57:23'),('b96697e8-ae25-506d-9f52-7d338d60ebab','Environmental godbaozu','Da tos wuno mivgi dujavi ogfoj gaw bipdoab judebgop cehucret ovge howfedud pajurtah ah. Ju ahe ipbeto amso uwa niawuta wo muleloitu ugaove tilkettol hel vu puamico ela.','2021-04-13 00:57:23','2021-04-13 00:57:23');
/*!40000 ALTER TABLE `SOFTSKILL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TAREFA`
--

DROP TABLE IF EXISTS `TAREFA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TAREFA` (
  `ID` char(36) NOT NULL,
  `NOME` varchar(32) NOT NULL,
  `DESCRICAO` varchar(256) DEFAULT NULL,
  `ALUNO_FK` char(36) NOT NULL,
  `GRUPO_FK` char(36) NOT NULL,
  `CRIACAO` timestamp NOT NULL DEFAULT current_timestamp(),
  `ATUALIZACAO` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`ID`),
  KEY `TAREFA_GRUPO_FK` (`GRUPO_FK`),
  KEY `TAREFA_ALUNO_FK` (`ALUNO_FK`),
  CONSTRAINT `TAREFA_ALUNO_FK` FOREIGN KEY (`ALUNO_FK`) REFERENCES `ALUNO` (`ID`),
  CONSTRAINT `TAREFA_GRUPO_FK` FOREIGN KEY (`GRUPO_FK`) REFERENCES `GRUPO` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TAREFA`
--

LOCK TABLES `TAREFA` WRITE;
/*!40000 ALTER TABLE `TAREFA` DISABLE KEYS */;
/*!40000 ALTER TABLE `TAREFA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TURMA`
--

DROP TABLE IF EXISTS `TURMA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TURMA` (
  `ID` char(36) NOT NULL,
  `NOME` varchar(32) NOT NULL,
  `DESCRICAO` varchar(256) DEFAULT NULL,
  `DISCIPLINA_FK` char(36) NOT NULL,
  `CRIACAO` timestamp NOT NULL DEFAULT current_timestamp(),
  `ATUALIZACAO` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`ID`),
  KEY `TURMA_DISCIPLINA_FK` (`DISCIPLINA_FK`),
  CONSTRAINT `TURMA_DISCIPLINA_FK` FOREIGN KEY (`DISCIPLINA_FK`) REFERENCES `DISCIPLINA` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TURMA`
--

LOCK TABLES `TURMA` WRITE;
/*!40000 ALTER TABLE `TURMA` DISABLE KEYS */;
INSERT INTO `TURMA` VALUES ('064ef329-ae07-5ff1-8fce-fc5d9da6245b','487 - Surveyor refe','Nukoweg itzisli wejahip ukjo nedcajom leh ne coemo sojve tu jajkezkuj esutuba was. Hu hot hume napmabdu pipgeve fopnub eleemovoz gi ki lufe nehsos fuf hu aj hode garem rafjuod.','28f8872f-8c43-566e-9df0-fe055b7559aa','2021-04-13 00:57:23','2021-04-13 00:57:23'),('12754db3-f220-5bfb-a66b-89f0092383a2','401 - Editor mumhiwos','Ag azier kikof ne ivo kubzi uhlot hunifpe sa iroawizop uluwe ajuehu gel. Li pobnoc ga ca fuzja hokebew wu lolfekzu sejubzek fiz ewu nes zubzu dezi tozi na su.','24e81386-a96c-5ab6-abea-9fed5ba9664f','2021-04-13 00:57:23','2021-04-13 00:57:23'),('141b6f84-a1e6-5554-99cb-5337bef63b97','564 - Chief kiw','Sout vih iwe karibis ti ihauro jem robkiba cuijeleh beh ine sajdiwi afi rup ge tahpazpon. Vejeveonu ugore acko wib amecu esude mikde je sutkuvnam padhez gewokud varfo afukih ovufaolo ranwabu ezu.','618107db-f063-52a1-a7c5-bba072802a91','2021-04-13 00:57:23','2021-04-13 00:57:23'),('709b8ff2-4075-5cba-8a9a-794b5bcef3c2','210 - Biomedical niitiza','Wi wubfara fim zitcomve hiebe uddu libalkup misini ajufogfa da ida tujhol fianfu bah. Ho ug aje zo waggutjis cauvata rapobci ke ulosge ifer vi on bediv cokwevo sazizih kov pezal.','ab62bc67-b314-56a1-b29e-01dcd1660612','2021-04-13 00:57:23','2021-04-13 00:57:23'),('833327ec-6455-50a8-acdc-0697f2688a1f','567 - Leasing dibowbec','Na fecahne ecu sovzafec mucsuhoj ki je ru rilah og hopurin ge aferurfuz kurabmu zejejda nomi zeta. Fovida olo anolewew hub idipal sawev siznembu eve ralla tet he cezpuhluz.','f0d7f093-fd56-5134-bd9e-d57affc7413b','2021-04-13 00:57:23','2021-04-13 00:57:23'),('8beda030-68ad-5681-b4de-32f5199a1326','260 - Biomedical niitiza','Lepih wimda uvsac gorbacap be wo buci hiwunilil gini waat dupa fuzdo akivi me vaz siwhob nejagi kigka. Lanekido za fokisegu ahoso bes vevezol kevnogfos awsuw pah ned zemagul wigicvu merujo pitneon dodoru vib nam eb.','ab62bc67-b314-56a1-b29e-01dcd1660612','2021-04-13 00:57:23','2021-04-13 00:57:23'),('9efcf077-e7b5-558e-95fc-900539fb68f5','388 - Aerospace wesodlec','Te ajihol furir foerunil lavul temegoha dengogol kuwog cioku rotko jo epo tifomre wauj anru zaj ru. Teg targo igpep tele tep gav refiknit wioreaw lomku bujpidu enesasra leoviga puc ep ditteke azeba.','cce118d5-bab7-55c8-b415-a4267c72725c','2021-04-13 00:57:23','2021-04-13 00:57:23'),('b1689b94-f3ae-594b-ad47-72ffb44ef0be','652 - Editor mumhiwos','Bo kiv kog nideka ofkulmis ka to nad pamtas dapife unme rimifse wozkari noz zegruk omaosoc ro. Ub cepuv wifmijit lut basoz dunabovi bawniudu vumozi podu ahu naji zecec cufvap heero ev.','24e81386-a96c-5ab6-abea-9fed5ba9664f','2021-04-13 00:57:23','2021-04-13 00:57:23'),('bcf441e2-10fe-517a-941c-7e80c420ed68','123 - Editor mumhiwos','Zigpe horoz fanekwed potuboz ewebepto ehe ocvi ewojonru muhud ikenanlij lekhivko divzeub. Riwohmas ci el ka lecfem idjese reolvef zodi tuviz dezuf sa vi us ceknucnac.','24e81386-a96c-5ab6-abea-9fed5ba9664f','2021-04-13 00:57:23','2021-04-13 00:57:23'),('cfeaf730-fd2b-5f32-a96a-0fdc70c2d25a','548 - Chief kiw','Bo vi zibjofo ivu zat pouvse pansan ko sizvaose sem pu jit guisutu kitci agoes huh. Gawma bulgunaz do dutalikim poj mef avzika tietace utzec juak hipse ribmi zifoaf fupwewo ecasewlip.','618107db-f063-52a1-a7c5-bba072802a91','2021-04-13 00:57:23','2021-04-13 00:57:23'),('ddb1cb5c-81de-52b3-a23e-64a5a62241ee','516 - Physician witokaj','No joci paziftof dedpe zuc rirawi abe teol mokah zurfol bajiew jo neb selih rezjok. Ho jomzi sokjolu ba saagaip gingejvuz vurwovo datetta miimuhaz vijoril ac ic hi jopfo romjahtu.','301c2c81-0119-5e85-8dea-309f18556ff9','2021-04-13 00:57:23','2021-04-13 00:57:23'),('e82464de-4195-5113-bef8-d11f07fb2abd','780 - Editor mumhiwos','Fefgi durpoftot cawuje keifa nok uf do nam rennom cawrino ve zuoj ofegac zumwiwke zapoma tedjusa juusa. Ril mibegepa araesa reh ede ve cema readgud elaso he bon odududi lozep cu izne umaza.','24e81386-a96c-5ab6-abea-9fed5ba9664f','2021-04-13 00:57:23','2021-04-13 00:57:23'),('e82a49dd-b36b-5a26-9a0b-9d5c2c10b9bd','580 - Leasing dibowbec','Ohucim gip baco cunan bobto ca miho veha pifadoma no lunhi vu. Nitgu bi lerejoli imu tu kut okaoj gepbot esre tunocani cos daivu ne pitwubov.','f0d7f093-fd56-5134-bd9e-d57affc7413b','2021-04-13 00:57:23','2021-04-13 00:57:23'),('ecfa734a-99ba-5072-8947-c552e3e680cd','164 - Biomedical niitiza','Guohe pusga napezec cuujmug onko gircus izdo ijajiija pasrad videpzug linenwov ejpubid. Daab minu otakigep apabaw agefa mignewra husvih cebok gapkuib opiloli inavusig diroc sujputas saoc makdo.','ab62bc67-b314-56a1-b29e-01dcd1660612','2021-04-13 00:57:23','2021-04-13 00:57:23'),('eea8990c-444c-553d-8a83-03be6260c1c6','750 - Editor mumhiwos','Uji paufu ha sipdo ohiguw rilsan ga uke im je fe virwufuka kuti uju datapa. Ohive net fehbofi kohfiv tawesok cowumhub ehnu fuvezes ace caohik bopkele cufaro far bivupoza gi rap zevaj egeaca.','24e81386-a96c-5ab6-abea-9fed5ba9664f','2021-04-13 00:57:23','2021-04-13 00:57:23'),('fa4ab435-d47f-5620-a6c9-70a6f015fd1c','256 - Leasing dibowbec','Zeucje deva co eda du vahaw keahewe kadroz evbaigo tazvotek hijliwa arofe minir sijvono ewzihba bu ikodar ejden. Ciwaba miut arer munoihe pin eviro malsidki hokanoh sav gele efidirot ahaganfa fa wop nasa vonevooga bobutil.','f0d7f093-fd56-5134-bd9e-d57affc7413b','2021-04-13 00:57:23','2021-04-13 00:57:23');
/*!40000 ALTER TABLE `TURMA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USUARIO`
--

DROP TABLE IF EXISTS `USUARIO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USUARIO` (
  `ID` char(36) NOT NULL,
  `NOME` varchar(32) NOT NULL,
  `EMAIL` varchar(32) NOT NULL,
  `SENHA` varchar(32) NOT NULL,
  `CRIACAO` timestamp NOT NULL DEFAULT current_timestamp(),
  `ATUALIZACAO` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USUARIO`
--

LOCK TABLES `USUARIO` WRITE;
/*!40000 ALTER TABLE `USUARIO` DISABLE KEYS */;
INSERT INTO `USUARIO` VALUES ('00172b10-6c36-5276-a170-35537f7c5406','Celia Francis','miakga@kehof.uz','lIn!sT67QcO4z4N4','2021-04-13 00:57:23','2021-04-13 00:57:23'),('099cf69e-6d67-5ec0-8cdf-e9e8677b85a6','Kenneth Miller','ujresog@ha.na','!kwG31SRUzjoaA!i','2021-04-13 00:57:23','2021-04-13 00:57:23'),('0a142a20-7d23-5ba9-a2c6-cefe29168007','Laura McGuire','gakuh@ulico.si','ySTqtbY1XQ2RDL0T','2021-04-13 00:57:23','2021-04-13 00:57:23'),('0e5a1385-ed92-5307-978e-18fc9cdf8e5d','Jorge Joseph','amubi@miwwon.cz','07zTz3sCvxI^hY^6','2021-04-13 00:57:23','2021-04-13 00:57:23'),('10b59982-9d75-5b2d-aa75-eb21542b618e','Margaret Gross','ju@hica.gq','r1(3LjKBVqf]oTts','2021-04-13 00:57:23','2021-04-13 00:57:23'),('164e5597-8f67-505b-afda-c5fc990fc223','Isaiah Mack','jekdi@oginje.cn','6Vd7(G^xxvBuQg[Q','2021-04-13 00:57:23','2021-04-13 00:57:23'),('170d3e4d-6015-53e9-b550-664128e478f2','Ethan Washington','hohdev@tucdir.tw','8LMpDdY^&1$C]#$o','2021-04-13 00:57:23','2021-04-13 00:57:23'),('171fbbb6-b613-5b1c-909e-6136da1b56be','Ora Hardy','tic@ihemon.pa','&WZ0hKTaR]ZIj*3O','2021-04-13 00:57:23','2021-04-13 00:57:23'),('17abea00-1822-5f4e-b21d-cdd9abd791ac','Isabella Baldwin','tihpat@somir.bo','a$J&NfdvV]xjcWAP','2021-04-13 00:57:23','2021-04-13 00:57:23'),('1b07abd3-6342-59df-bceb-082996d09bf9','Nathaniel Boyd','cene@paliv.kp','^OWUD#r[*KGf90IV','2021-04-13 00:57:23','2021-04-13 00:57:23'),('1b7b052a-db1e-5014-bbd0-69d6c03b62bd','Hester Saunders','wop@ju.io','j$khMGqbMJFDpYea','2021-04-13 00:57:23','2021-04-13 00:57:23'),('1c798fd1-7d79-5bdd-b72e-f4710114d06c','Marie Higgins','zala@dawor.eh','z5l&O%BOxSQ0j1u9','2021-04-13 00:57:23','2021-04-13 00:57:23'),('1c8b53c3-fd51-5ff2-8fba-6a2caed12c95','Julian Lane','mubar@cijhi.aq','ridCi@6[cCHsPQU9','2021-04-13 00:57:23','2021-04-13 00:57:23'),('20de194b-d52a-5634-be7e-1f68a0e343ca','William Robertson','da@ve.mo','STHj@Yss2cee$NE0','2021-04-13 00:57:23','2021-04-13 00:57:23'),('2227fdf3-195c-5e4f-a48e-f9a85ddc9a8c','Charles Schwartz','kikoh@basev.gov','e&[HyzJhJZE3HCqJ','2021-04-13 00:57:23','2021-04-13 00:57:23'),('224bea20-c20e-55e5-8187-769741bbe16f','Willie Banks','zukvozuj@gi.se','crsdinx[b!PCf$S^','2021-04-13 00:57:23','2021-04-13 00:57:23'),('27fb05c5-10d1-5d1e-8e1a-3a56ee254d5e','Leon Webb','size@ladvuhe.dj','DmQK*lbipT!([BFG','2021-04-13 00:57:23','2021-04-13 00:57:23'),('28f8a368-f8e4-5229-8994-8fdd35ed9e28','Cecelia Steele','lifogu@ter.zm','1Zb]]Pk5[shSa^sc','2021-04-13 00:57:23','2021-04-13 00:57:23'),('2b66135f-722e-59ca-b9b1-3bc404547afc','Tony McCarthy','buefirij@abuzoj.pr','Ulx*A31jl!2KNA#G','2021-04-13 00:57:23','2021-04-13 00:57:23'),('2d02150c-91ef-5117-9546-0771e982048f','Mamie Wright','foj@pu.ki','Ig[mWWj%LBtRfOSe','2021-04-13 00:57:23','2021-04-13 00:57:23'),('2db14516-d894-5c88-bb4f-2c29c19944c8','Cecilia Parker','juw@muefu.hn','gutV2MjEVaaQNGeW','2021-04-13 00:57:23','2021-04-13 00:57:23'),('35751f92-f885-519b-a6a4-4115b9eec41f','Annie Sparks','bah@wobve.id','WuLEWu0N47UC^r*M','2021-04-13 00:57:23','2021-04-13 00:57:23'),('3613b8d1-92d4-5d93-8d22-8c568eeaa859','Charlie Haynes','kotelu@zo.kh','67SW#1$b$YGq1^Fc','2021-04-13 00:57:23','2021-04-13 00:57:23'),('37062b86-8e25-5f06-afde-1ecf7d9f145f','Nathaniel Bush','tefugmu@lezus.ne','befDBKd*xE2V!(%]','2021-04-13 00:57:23','2021-04-13 00:57:23'),('3a8b6395-13cb-580a-8095-929c8d1a41d4','Chester Brooks','kuh@gudbepa.bg','q5v*(R^Ze60Uy9MS','2021-04-13 00:57:23','2021-04-13 00:57:23'),('3b0f7cb5-e4c8-5e87-8691-c24c6b5b1cc1','Victor Pierce','ilano@ubo.bf','abouIJ6eQ^5@zHkQ','2021-04-13 00:57:23','2021-04-13 00:57:23'),('41e6c8ae-1e75-5efc-81d3-00a09997cebe','Ian Morgan','iz@kowjoh.sy','cDm1aKu^1g50sGmt','2021-04-13 00:57:23','2021-04-13 00:57:23'),('439ea939-0d35-5353-8df8-5e0f4a179e37','Roger Drake','facehwo@vucuwruf.cm','$2)VA^ggbKp$#n*S','2021-04-13 00:57:23','2021-04-13 00:57:23'),('44e7b080-3cec-586d-8a1d-91dad89e5655','Mitchell Marshall','kuzal@ni.ag','IhHD&0Xq9@cKLbQ(','2021-04-13 00:57:23','2021-04-13 00:57:23'),('4627e2ae-9fc7-5a16-84d6-340efc8b542d','Eva Webb','fipofe@diz.cl','hAqK[vP@4CN2VUTL','2021-04-13 00:57:23','2021-04-13 00:57:23'),('49024905-b657-5b52-9246-444bfafd382a','Leo Atkins','pi@ca.bo','(605G$^7FcE@m!SD','2021-04-13 00:57:23','2021-04-13 00:57:23'),('49eaa6df-b5e3-5631-ba22-b2f9dc85baa2','Emma McCoy','aldew@meosevan.il','61yYk1^CRb78xkc&','2021-04-13 00:57:23','2021-04-13 00:57:23'),('4c522bba-9507-5df6-b0c7-53e875084602','Nellie Bailey','zejif@joevurab.ne','WUjg&kmDwQ89Nq5A','2021-04-13 00:57:23','2021-04-13 00:57:23'),('51241cba-9f27-547e-ae01-af170330e3b5','Willie Howell','vocgaj@vuc.gt','Y81Ix2Iqx&@Ea5[Z','2021-04-13 00:57:23','2021-04-13 00:57:23'),('529398d1-2a2b-5d7d-a789-586cf3db90f6','Sallie Cox','esopir@ava.ru','S#z*nf1Ja%nF5837','2021-04-13 00:57:23','2021-04-13 00:57:23'),('52caf2bf-2542-5e96-9e6a-c2c2d32b7a2b','Luella Elliott','bene@hi.do','9$$r5K@vMyX(U0!E','2021-04-13 00:57:23','2021-04-13 00:57:23'),('53737df1-2122-5187-a971-f86acbee1311','Albert Castro','epusakad@rusgic.ni','[h$6i1g))pqwLzX)','2021-04-13 00:57:23','2021-04-13 00:57:23'),('53b61057-71e6-54c2-8fcb-124b82ddab86','Lee Diaz','vadojsol@buckulaz.tp','N@Dj4yMPbRGH#mYr','2021-04-13 00:57:23','2021-04-13 00:57:23'),('53b74b3f-bdc9-5cfa-b2e4-eafdd44950ed','Birdie Casey','osugoje@uha.ir','8Ebe*PaxEMHo!%E)','2021-04-13 00:57:23','2021-04-13 00:57:23'),('5485fee8-c989-5101-9812-a10ef045332b','Donald Watson','baos@ronec.fm','i@a@8VtzExAfKj0z','2021-04-13 00:57:23','2021-04-13 00:57:23'),('58e484fb-10c3-5b63-8a2f-51ed34209cfa','Jessie Moore','ike@iz.mp','KScVsIVJj#1XhNc[','2021-04-13 00:57:23','2021-04-13 00:57:23'),('5a2aa51c-685b-5948-bcd3-f75f4b53ebc0','Kyle Sullivan','map@puf.ph','%TeUFSiD05FW8Vu9','2021-04-13 00:57:23','2021-04-13 00:57:23'),('5a38687b-e9a7-51a0-9657-0131be535010','Leah Padilla','hicimu@duf.ug','MDMv8zi]w6nM!RVs','2021-04-13 00:57:23','2021-04-13 00:57:23'),('5a855512-fd17-5755-b349-ea85b742dd17','Frances Thornton','tutihbik@gahofi.co.uk','PUeUVPmQYLRc9FMH','2021-04-13 00:57:23','2021-04-13 00:57:23'),('5f150c0d-0be6-5782-9f5c-005cbc3d3c39','Essie Wheeler','pid@ca.com','zR)JVAgQwJ3Vkv2z','2021-04-13 00:57:23','2021-04-13 00:57:23'),('602cf1b5-668a-5a44-b52a-986ad78707d1','Hunter Sandoval','iw@julbopa.tz','ol@%G7QuLfJe[6^c','2021-04-13 00:57:23','2021-04-13 00:57:23'),('649851ce-2daf-52ca-b8ad-29c555a412b0','Oscar Stewart','vup@egudeziv.tn','6Z]gE6ExQNKW[%mx','2021-04-13 00:57:23','2021-04-13 00:57:23'),('66078552-5dcc-5d60-9cfd-4012012bbe3b','Ethan Cruz','tu@wefijriw.cu','(tjD581uHvziEMdQ','2021-04-13 00:57:23','2021-04-13 00:57:23'),('6c725876-225a-51fa-ab14-85da17ebf5fe','Francis Romero','hof@felin.vn','hy(TJbfEsvMw1fB@','2021-04-13 00:57:23','2021-04-13 00:57:23'),('76cb3370-b46e-5aa0-9ae3-fa428e9ea2ff','Antonio Simon','vunasi@lanez.cu','IK6sy[qitA67@[bq','2021-04-13 00:57:23','2021-04-13 00:57:23'),('791e93b9-fdd9-5b1c-a635-8cdfc57f9a32','Travis Carroll','murvacef@gojeglul.mv','Yhv338yJd#Ex69*j','2021-04-13 00:57:23','2021-04-13 00:57:23'),('79cf4b96-179b-579f-b09a-498322032d2d','Nell Rodriquez','gafeguc@uz.tz','@IRkjd&7qjD8Sw]f','2021-04-13 00:57:23','2021-04-13 00:57:23'),('79e9f588-fa56-55df-89d8-d50881b5973e','Callie Perkins','buzaha@fahpuni.tc','!8J9Q^vyb*w)77(D','2021-04-13 00:57:23','2021-04-13 00:57:23'),('7a1315fd-40ff-539f-ba37-9638440a6060','Benjamin Frank','cabmon@kavo.kr','anxm0))Ccy32!KSJ','2021-04-13 00:57:23','2021-04-13 00:57:23'),('7d87ba8e-02a1-5d2b-a880-814407a7dfc9','Luis Moss','maisi@jescujpa.ge','5lyT3S156Nm%)p^$','2021-04-13 00:57:23','2021-04-13 00:57:23'),('7feb404b-c78c-508b-9753-b5f6d88d3c11','Leila Bishop','cap@uzeno.au','!fxgSjgi(]sk3!Ma','2021-04-13 00:57:23','2021-04-13 00:57:23'),('84ad80be-00d1-52fe-b050-6a87e5f180a5','Gavin Sharp','we@vubasu.th','3zb@[6NNWhK5FMyY','2021-04-13 00:57:23','2021-04-13 00:57:23'),('852b89e5-5a83-5c77-9ef1-57c7e5027ce0','Cecilia Russell','zobvojsup@kasda.mm','aN7hl5#u3Mi(rk8V','2021-04-13 00:57:23','2021-04-13 00:57:23'),('86b525ec-9ed2-530a-ae74-6541c0d23a28','Jesse Pratt','ti@nusunti.ru','&d*0QfkHD]4j4#QV','2021-04-13 00:57:23','2021-04-13 00:57:23'),('8b5462fe-6a41-5947-8d79-06b01193ed59','Christina Adkins','josiuko@uf.ee','6aEXZ@y6uky%y46)','2021-04-13 00:57:23','2021-04-13 00:57:23'),('8f832b0e-e7fb-54df-9823-1248ccb62bd4','Clifford Bates','ak@jazunigu.pl','nOjER$HMmXZ]Txp*','2021-04-13 00:57:23','2021-04-13 00:57:23'),('91efe080-2875-531f-acfe-8c2e4649c245','Cody Shelton','onoace@bitfu.gu','O3mLf)uXWsoAofFf','2021-04-13 00:57:23','2021-04-13 00:57:23'),('95c0e019-2b1c-5bb9-9496-da5240134d74','Benjamin Kennedy','bampekoj@dizanwu.de',']fHzO7vs4HA%PEHI','2021-04-13 00:57:23','2021-04-13 00:57:23'),('95ffb383-45dc-5bbe-9e40-da60fccdf27f','Mamie Bryan','kotze@ejzize.hu','9vyhICXCts29fiD8','2021-04-13 00:57:23','2021-04-13 00:57:23'),('9792704b-f181-5b47-a625-36b7f3a40c8c','Jerome Gibson','boggolwab@vupab.dj','Y[]9EFu3fVN$QVyf','2021-04-13 00:57:23','2021-04-13 00:57:23'),('985208c2-fef2-502c-a91f-b949c3c8366c','Max West','no@lom.cl','$Q9ttPluMl!7hLea','2021-04-13 00:57:23','2021-04-13 00:57:23'),('99627b55-aa92-59ba-a766-d64f67e7a53f','Virginia Schneider','geda@ama.sx','H^JIj5s6*DJmcacq','2021-04-13 00:57:23','2021-04-13 00:57:23'),('9b3d6866-d633-54d0-840e-17a3e7ebd031','Catherine Fitzgerald','jazfisu@diajavo.jo','1K$8FuXFXr357w*7','2021-04-13 00:57:23','2021-04-13 00:57:23'),('9b7f50e9-8392-57a0-921e-16313273e224','Josie Bishop','meof@zavij.pt','Y^lj6kE^Pgks]t)Q','2021-04-13 00:57:23','2021-04-13 00:57:23'),('9bf5d965-f349-5cef-ba28-67bd9a2216ce','Belle Perry','hucuguc@ogvesov.bi','WIA]l$okg#Fjm$Xh','2021-04-13 00:57:23','2021-04-13 00:57:23'),('9ec813bb-3369-5cfd-a403-acaa62b75fb6','Gavin McCarthy','ipa@ivomce.it','(LED^t)f7XQCX*2]','2021-04-13 00:57:23','2021-04-13 00:57:23'),('a05302f2-ed1f-5012-85a6-3a6b922c2549','Tony Marsh','tohsek@li.edu','QSQ]N2tgj8l$n*SX','2021-04-13 00:57:23','2021-04-13 00:57:23'),('a47d9702-b9d3-5faf-be18-86b4b635cf1b','Ryan Drake','ci@isdukib.tj','9*p3tPO$[xzLXr1D','2021-04-13 00:57:23','2021-04-13 00:57:23'),('a4d542cb-be13-50e9-b8a1-91ba9dfa9cce','Cory Drake','rivfu@obi.fr','v[4mZAUIKPuZ[ORm','2021-04-13 00:57:23','2021-04-13 00:57:23'),('a701166a-be9f-5547-b6cd-e0ac7fb86b6e','Thomas Clarke','ikcij@hed.sm','khZPRW37CTzX$CW&','2021-04-13 00:57:23','2021-04-13 00:57:23'),('a9263dbb-e0d2-595f-aacb-db09d7be364c','Noah Cole','ruevogib@madsicu.cd','1kKbX[WjxSPXsVSe','2021-04-13 00:57:23','2021-04-13 00:57:23'),('a9af1f5b-2a74-5253-a0f6-5c83248a6d05','Jayden Barber','kohezmo@iv.kw','d$xkRWN4VgheO^a9','2021-04-13 00:57:23','2021-04-13 00:57:23'),('ab1c5bcc-3e5c-5fb8-8ba5-a15b39e03838','Rosalie Pittman','agusik@mihofuki.org','yhx7wskASC(I@4yW','2021-04-13 00:57:23','2021-04-13 00:57:23'),('acf3dbb5-ce53-5280-ae27-65d154379a02','Fanny Kelley','nocpeaf@haci.gu',']]kMF2orBuwBf7Jn','2021-04-13 00:57:23','2021-04-13 00:57:23'),('aed13b6d-dd40-51c2-8520-881994db2940','Anthony Vargas','lakafmo@ujcula.gp','41z4hbWG$70#f$N5','2021-04-13 00:57:23','2021-04-13 00:57:23'),('b50ee465-bd8d-5b99-8754-d5d65270c66d','Garrett Lewis','bebe@fione.gb','a(OKnKq@QNHJ0#px','2021-04-13 00:57:23','2021-04-13 00:57:23'),('b750376e-1898-5014-b7e0-c020f4c92e6a','Dylan Wade','hov@bul.nl','(lDpLOdfxRW$jskB','2021-04-13 00:57:23','2021-04-13 00:57:23'),('bc8c90cf-76c7-5ea3-846c-dd1864c908cb','Isabelle Jimenez','sihe@gifarpuh.jo','o[etjU3&EQN&6Exf','2021-04-13 00:57:23','2021-04-13 00:57:23'),('bd85fd9e-ed04-5eb2-b52a-d5104252ffda','Ricky Flores','vefuzhet@ul.rw','0079TyP0EQrL$[tT','2021-04-13 00:57:23','2021-04-13 00:57:23'),('bf9cdc6c-970d-5eb3-bb53-584fc1ab5764','Samuel Nguyen','cuudpih@kor.no','@wRrQ*SiweFxqowJ','2021-04-13 00:57:23','2021-04-13 00:57:23'),('c8f09c22-8cdd-56fc-bacc-41b5000a4df5','Jayden Hart','gob@ajiid.dk','59FN)xwa[aSi4WnK','2021-04-13 00:57:23','2021-04-13 00:57:23'),('c980fe61-e95b-57c8-9d4f-f2d6d761a802','Travis Hughes','oren@az.nc','q0msy5upsU(4FmIv','2021-04-13 00:57:23','2021-04-13 00:57:23'),('cf40ac61-c109-5a32-ad2b-5f5aa45b8ce1','William Bell','maw@belafurez.lc','L1IdpgUM$Ybx1fI!','2021-04-13 00:57:23','2021-04-13 00:57:23'),('d22a83e4-4d37-57e5-91f5-16400584e256','Belle Hodges','vutid@eku.sj','qSQD%PlPtbEG6ud3','2021-04-13 00:57:23','2021-04-13 00:57:23'),('d61c659b-a930-5776-8ff3-99152b6664ff','Jordan Warren','idtunuj@lidohjo.jo','wZ(ba3%JYa^ra%]H','2021-04-13 00:57:23','2021-04-13 00:57:23'),('d8d536fe-0beb-52a8-a6bb-89dadb93651b','Grace Marshall','bi@na.mm','HO!r]B0&)8izYyGW','2021-04-13 00:57:23','2021-04-13 00:57:23'),('dbe07f56-3ac3-5685-87f7-9fbf2c00627b','Landon Moreno','vuhjit@fal.cf','[$!Api*pbb]E!&DU','2021-04-13 00:57:23','2021-04-13 00:57:23'),('dd116d1f-0bc4-5c2d-bc38-08cc8750a4af','Larry Baker','guv@fakwi.tg','!3s0y%4M!6&0K[gR','2021-04-13 00:57:23','2021-04-13 00:57:23'),('dd637390-e3be-5302-a1c7-4a0177c293a5','Beulah Shaw','vifpesdug@elfil.lv','yFPAobJ6UEwtX6$%','2021-04-13 00:57:23','2021-04-13 00:57:23'),('de1253f7-6b34-5c1b-ab4d-387953625c23','Franklin Rodriguez','ted@soafali.pw','KuekvZbV6tB8CqQP','2021-04-13 00:57:23','2021-04-13 00:57:23'),('e25e2158-0d6a-505b-bc0a-b56911a20ba2','Gregory Bryan','kowunokic@fiw.wf','6v]htRj$Ycqnr4ic','2021-04-13 00:57:23','2021-04-13 00:57:23'),('ebdb0553-eaea-520f-9a99-86b34fec04c4','Jeffery Bowers','meeg@aguibnav.do','2RYg@dS3E*Zl!5Y@','2021-04-13 00:57:23','2021-04-13 00:57:23'),('ec42822a-20d7-5471-b156-e9265a1858f3','Hattie Grant','huicci@je.ci','q8BffFbJI7CLsjaC','2021-04-13 00:57:23','2021-04-13 00:57:23'),('f59580f0-402b-59b3-b5d6-66cf544fcfd5','Cody Long','dimbebme@jezbor.com','rz3(CjfAsCt8XNNQ','2021-04-13 00:57:23','2021-04-13 00:57:23'),('f5a0cde2-5f99-55e8-9697-a89721b413ea','Elsie Harper','ehuru@jemvaha.je','bK7p[R)qil]BF93O','2021-04-13 00:57:23','2021-04-13 00:57:23');
/*!40000 ALTER TABLE `USUARIO` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-12 21:59:56
