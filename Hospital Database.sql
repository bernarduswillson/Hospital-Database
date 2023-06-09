-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: mils3
-- ------------------------------------------------------
-- Server version	10.6.12-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `asuransi`
--

DROP TABLE IF EXISTS `asuransi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asuransi` (
  `idAsuransi` char(6) NOT NULL,
  `tanggalKlaim` date NOT NULL,
  `nilaiKlaim` bigint(20) DEFAULT NULL,
  `kondisi` varchar(12) NOT NULL CHECK (`kondisi` in ('DITERIMA','DITOLAK','DIPROSES')),
  `idPerusahaan` char(3) DEFAULT NULL,
  `idRekamMedis` char(6) DEFAULT NULL,
  PRIMARY KEY (`idAsuransi`),
  KEY `idPerusahaan` (`idPerusahaan`),
  KEY `idRekamMedis` (`idRekamMedis`),
  CONSTRAINT `asuransi_ibfk_1` FOREIGN KEY (`idPerusahaan`) REFERENCES `perusahaanasuransi` (`idPerusahaan`),
  CONSTRAINT `asuransi_ibfk_2` FOREIGN KEY (`idRekamMedis`) REFERENCES `rekammedis` (`idRekamMedis`),
  CONSTRAINT `check_biaya` CHECK (`nilaiKlaim` >= 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asuransi`
--

LOCK TABLES `asuransi` WRITE;
/*!40000 ALTER TABLE `asuransi` DISABLE KEYS */;
INSERT INTO `asuransi` VALUES ('302364','2022-06-13',626000,'DITERIMA','129','513317'),('304134','2015-05-04',6775000,'DITERIMA','151','558507'),('304559','2019-09-11',7821000,'DIPROSES','196','528092'),('304667','2017-10-27',4949000,'DIPROSES','148','553927'),('306502','2022-06-02',2943000,'DIPROSES','191','543955'),('307049','2015-04-25',6353000,'DITOLAK','119','551964'),('308831','2019-03-08',7278000,'DITOLAK','181','500193'),('310927','2020-09-01',2921000,'DITERIMA','152','573975'),('310954','2015-08-24',5673000,'DITOLAK','200','593956'),('311359','2019-09-30',621000,'DITOLAK','156','566975'),('311418','2017-02-11',753000,'DITERIMA','149','560687'),('312169','2014-12-25',3126000,'DITOLAK','151','573749'),('313929','2013-10-22',6849000,'DITOLAK','145','580588'),('315524','2022-07-21',9713000,'DITERIMA','143','580063'),('315557','2014-02-17',3508000,'DITERIMA','109','516305'),('315771','2017-03-16',7494000,'DITERIMA','128','590969'),('316611','2015-09-12',3875000,'DITERIMA','187','568958'),('317414','2022-01-12',9351000,'DITERIMA','179','550837'),('317555','2017-10-24',8332000,'DITOLAK','106','508544'),('319223','2016-06-17',8407000,'DITERIMA','159','566679'),('321228','2014-08-17',6272000,'DITERIMA','131','551130'),('322337','2016-03-31',4001000,'DITOLAK','164','506909'),('322677','2020-06-21',6592000,'DITERIMA','196','565895'),('324441','2018-04-09',2893000,'DIPROSES','112','569365'),('324880','2020-08-31',7960000,'DITERIMA','188','527306'),('326197','2015-01-03',816000,'DITOLAK','146','557301'),('329164','2018-04-10',2359000,'DITOLAK','117','520692'),('330868','2014-10-29',4234000,'DIPROSES','109','579621'),('331841','2017-11-28',9838000,'DITERIMA','132','554594'),('333480','2023-02-18',6127000,'DIPROSES','171','555503'),('336155','2013-10-22',4192000,'DIPROSES','161','537679'),('336561','2014-12-15',747000,'DIPROSES','191','503091'),('338791','2015-06-10',5921000,'DIPROSES','101','562019'),('338923','2021-12-26',9084000,'DITOLAK','115','551683'),('339009','2020-09-02',6394000,'DITOLAK','131','593193'),('339012','2015-05-26',5228000,'DITERIMA','186','595456'),('339141','2020-04-04',6215000,'DIPROSES','169','500426'),('339574','2020-03-04',9911000,'DIPROSES','175','593116'),('339733','2013-06-04',7442000,'DIPROSES','153','510110'),('341143','2015-09-05',9162000,'DIPROSES','192','554393'),('341948','2020-02-07',4456000,'DITERIMA','152','551919'),('341951','2013-11-26',2967000,'DIPROSES','143','568938'),('342527','2017-08-17',2142000,'DIPROSES','119','580782'),('345637','2016-04-30',1625000,'DITERIMA','164','549504'),('346698','2015-04-06',7207000,'DITOLAK','123','591456'),('349796','2020-07-12',1729000,'DIPROSES','147','590108'),('349904','2022-05-05',3619000,'DIPROSES','110','504526'),('349949','2015-11-17',5856000,'DITOLAK','124','539643'),('350071','2021-05-18',2936000,'DITOLAK','175','539824'),('350925','2017-01-26',6994000,'DIPROSES','108','594511'),('353117','2021-05-03',7998000,'DITERIMA','126','507781'),('353465','2019-09-17',233000,'DIPROSES','186','556906'),('353863','2015-11-25',5533000,'DITERIMA','186','525418'),('355562','2021-01-03',7430000,'DITOLAK','186','540184'),('356269','2022-12-19',9508000,'DIPROSES','112','520309'),('356391','2013-12-07',7025000,'DITOLAK','126','555292'),('356812','2016-05-06',66000,'DITERIMA','113','536663'),('358632','2020-10-20',1180000,'DITERIMA','173','510084'),('360761','2015-12-04',3404000,'DIPROSES','141','556673'),('361464','2019-12-03',9624000,'DITOLAK','135','598616'),('361840','2014-04-02',8367000,'DIPROSES','172','505638'),('362890','2022-10-09',2513000,'DIPROSES','118','548409'),('363518','2014-08-05',1518000,'DITOLAK','118','574172'),('363985','2017-11-01',4878000,'DIPROSES','135','507128'),('365604','2016-07-15',4969000,'DITOLAK','140','593819'),('366533','2013-08-28',8934000,'DITOLAK','200','587060'),('367061','2021-06-08',8300000,'DITOLAK','177','526336'),('367130','2019-11-09',896000,'DITOLAK','103','595172'),('368490','2019-08-18',8172000,'DIPROSES','187','543182'),('368537','2022-11-26',5677000,'DIPROSES','197','573598'),('370188','2018-05-28',6095000,'DIPROSES','186','529435'),('371762','2021-07-03',4201000,'DITOLAK','108','522761'),('372893','2021-05-07',6448000,'DIPROSES','132','516322'),('374691','2014-09-26',9947000,'DITERIMA','105','586087'),('375170','2021-07-31',3453000,'DIPROSES','101','509784'),('375200','2018-09-09',2511000,'DIPROSES','192','583808'),('375797','2016-07-31',1939000,'DIPROSES','122','526067'),('376568','2019-06-17',1950000,'DITERIMA','127','521509'),('377306','2013-07-03',9102000,'DITOLAK','136','536238'),('377602','2015-09-19',9017000,'DITOLAK','109','526416'),('379039','2023-02-08',7061000,'DITOLAK','186','564323'),('379315','2018-03-19',5428000,'DITOLAK','114','548311'),('379595','2022-02-23',324000,'DIPROSES','189','597693'),('379828','2014-09-08',6941000,'DITERIMA','109','515116'),('380716','2014-06-25',443000,'DITERIMA','136','575242'),('380771','2023-03-08',7635000,'DITERIMA','144','500813'),('381028','2020-07-10',3727000,'DITERIMA','121','523956'),('381071','2016-06-09',4334000,'DITOLAK','121','519540'),('382520','2014-07-20',4235000,'DITERIMA','104','568587'),('383470','2013-07-29',7222000,'DITERIMA','184','551402'),('385695','2017-06-27',5942000,'DIPROSES','198','531362'),('386113','2017-11-07',3396000,'DIPROSES','129','584837'),('386610','2016-01-02',9832000,'DIPROSES','166','528024'),('388389','2014-11-22',5368000,'DIPROSES','115','541623'),('388834','2014-08-08',2693000,'DIPROSES','127','518351'),('390557','2017-12-26',5649000,'DIPROSES','172','519740'),('393586','2014-03-30',3458000,'DITERIMA','141','575431'),('396065','2020-12-31',6295000,'DITOLAK','144','570491'),('396187','2014-11-15',994000,'DITERIMA','142','529930'),('397958','2015-10-01',3158000,'DIPROSES','167','567501');
/*!40000 ALTER TABLE `asuransi` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER check_asuransi
BEFORE INSERT ON asuransi
FOR EACH ROW
BEGIN
  DECLARE biaya BIGINT;
  
  SELECT totalBiaya
  INTO biaya
  FROM rekamMedis
  WHERE idRekamMedis = NEW.idRekamMedis;
  
  IF (NEW.nilaiKlaim > biaya) THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Nominal biaya yang diajukan pada klaim asuransi melebihi total biaya pada rekaman medis!';
  END IF;

  IF (NEW.kondisi = 'SUDAH KLAIM' ) THEN
    IF (NEW.idRekamMedis in (SELECT idRekamMedis FROM asuransi WHERE status = 'SUDAH KLAIM')) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Sudah ada klaim asuransi yang diterima pada rekaman medis ini!' ;
    END IF;
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `daftarkabupatenkota`
--

DROP TABLE IF EXISTS `daftarkabupatenkota`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `daftarkabupatenkota` (
  `kabupatenKota` varchar(50) NOT NULL,
  `provinsi` varchar(50) NOT NULL,
  PRIMARY KEY (`kabupatenKota`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daftarkabupatenkota`
--

LOCK TABLES `daftarkabupatenkota` WRITE;
/*!40000 ALTER TABLE `daftarkabupatenkota` DISABLE KEYS */;
/*!40000 ALTER TABLE `daftarkabupatenkota` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `daftarkecamatan`
--

DROP TABLE IF EXISTS `daftarkecamatan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `daftarkecamatan` (
  `kecamatan` varchar(50) NOT NULL,
  `kabupatenKota` varchar(50) NOT NULL,
  PRIMARY KEY (`kecamatan`),
  KEY `kabupatenKota` (`kabupatenKota`),
  CONSTRAINT `daftarkecamatan_ibfk_1` FOREIGN KEY (`kabupatenKota`) REFERENCES `daftarkabupatenkota` (`kabupatenKota`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daftarkecamatan`
--

LOCK TABLES `daftarkecamatan` WRITE;
/*!40000 ALTER TABLE `daftarkecamatan` DISABLE KEYS */;
/*!40000 ALTER TABLE `daftarkecamatan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `daftarkelurahan`
--

DROP TABLE IF EXISTS `daftarkelurahan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `daftarkelurahan` (
  `kelurahan` varchar(50) NOT NULL,
  `kecamatan` varchar(50) NOT NULL,
  PRIMARY KEY (`kelurahan`),
  KEY `kecamatan` (`kecamatan`),
  CONSTRAINT `daftarkelurahan_ibfk_1` FOREIGN KEY (`kecamatan`) REFERENCES `daftarkecamatan` (`kecamatan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daftarkelurahan`
--

LOCK TABLES `daftarkelurahan` WRITE;
/*!40000 ALTER TABLE `daftarkelurahan` DISABLE KEYS */;
/*!40000 ALTER TABLE `daftarkelurahan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dokter`
--

DROP TABLE IF EXISTS `dokter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dokter` (
  `idDokter` char(6) NOT NULL,
  `spesialisasi` varchar(50) NOT NULL,
  PRIMARY KEY (`idDokter`),
  CONSTRAINT `dokter_ibfk_1` FOREIGN KEY (`idDokter`) REFERENCES `tenagamedis` (`idTenagaMedis`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dokter`
--

LOCK TABLES `dokter` WRITE;
/*!40000 ALTER TABLE `dokter` DISABLE KEYS */;
INSERT INTO `dokter` VALUES ('200022','Kulit dan Kelamin'),('201168','Kesehatan Anak'),('207696','Geriatri'),('207746','Kedokteran Gigi'),('210381','Anak dan Remaja'),('212680','Vaskular'),('213990','Tumbuh Kembang Anak'),('214171','Penyakit Dalam'),('218749','Vaskular'),('219063','Kesehatan Anak'),('219130','Saraf'),('220076','Tumbuh Kembang Anak'),('221956','Anak dan Remaja'),('222522','Penyakit Dalam'),('225424','Kedokteran Olahraga'),('227611','Saraf'),('229289','Onkologi'),('237715','Urologi'),('240738','Mata'),('241094','Kesehatan Anak'),('243947','Forensik'),('245744','Penyakit Dalam'),('246275','Gizi Klinik'),('248809','Onkologi'),('252087','Patologi'),('252357','THT (Telinga Hidung Tenggorokan)'),('256347','Allergi dan Imunologi'),('260301','Gizi Klinik'),('263020','Anak dan Remaja'),('263809','Bedah Plastik'),('272144','Saraf'),('273160','Anestesiologi'),('274421','Bedah Plastik'),('276188','Urologi'),('284670','Bedah Plastik'),('287077','Vaskular'),('287090','Urologi'),('288581','THT (Telinga Hidung Tenggorokan)'),('290920','Urologi'),('293332','Neurologi'),('295123','Tumbuh Kembang Anak'),('295413','Kesehatan Masyarakat'),('296890','Anestesiologi'),('298376','THT (Telinga Hidung Tenggorokan)'),('299975','Kedokteran Olahraga');
/*!40000 ALTER TABLE `dokter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hasillab`
--

DROP TABLE IF EXISTS `hasillab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hasillab` (
  `idHasilLab` char(6) NOT NULL,
  `hasil` varchar(50) NOT NULL,
  `tanggalTes` date NOT NULL,
  `idRekamMedis` char(6) DEFAULT NULL,
  `biaya` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`idHasilLab`),
  KEY `idRekamMedis` (`idRekamMedis`),
  CONSTRAINT `hasilLab_ibfk_1` FOREIGN KEY (`idRekamMedis`) REFERENCES `rekammedis` (`idRekamMedis`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hasillab`
--

LOCK TABLES `hasillab` WRITE;
/*!40000 ALTER TABLE `hasillab` DISABLE KEYS */;
INSERT INTO `hasillab` VALUES ('700719','Kadar kalium','2020-04-01','528024',NULL),('702377','Kadar kreatinin','2021-09-21','511041',NULL),('704831','Kadar amonia dalam urine','2017-11-30','516322',NULL),('704977','Kadar nitrit dalam urine','2022-04-06','580588',NULL),('706270','Kadar natrium','2020-12-20','508544',NULL),('709121','Kadar fosfat','2020-09-15','529625',NULL),('710567','Kadar LDL (kolesterol jahat)','2015-02-14','515116',NULL),('711050','Kadar asam urat dalam urine','2020-03-10','507781',NULL),('711702','Kadar glukagon','2022-02-13','573749',NULL),('713207','Kadar protein dalam urine','2018-01-01','573749',NULL),('714006','Kadar klorida','2020-03-19','553927',NULL),('714342','Kadar amilase','2014-08-14','515116',NULL),('714440','Kadar bilirubin dalam urine','2023-01-27','525418',NULL),('714445','Kadar natrium','2022-09-16','557301',NULL),('714628','Kadar fosfat','2016-02-23','570840',NULL),('716198','Kadar fibrinogen','2022-02-21','559665',NULL),('716398','Kadar amilase','2021-03-02','510110',NULL),('717525','Kadar hormon paratiroid','2018-08-18','526416',NULL),('718711','Kadar bilirubin','2017-09-14','540125',NULL),('720857','Kadar sel darah merah dalam urine','2014-12-15','549504',NULL),('721351','Kadar hormon adrenal (cortisol aldosteron)','2019-05-26','505638',NULL),('722323','Kadar asam laktat','2020-02-07','569365',NULL),('723934','Kadar hormon tiroid (TSH T3 T4)','2022-04-09','548311',NULL),('724118','Kadar fibrinogen','2016-09-22','553114',NULL),('727822','Kadar bilirubin','2016-05-25','562019',NULL),('728054','Kadar hormon paratiroid','2021-05-04','510110',NULL),('728617','Kadar protein dalam urine','2015-02-14','597693',NULL),('729144','Kadar protein dalam urine','2022-09-19','586929',NULL),('730037','Kadar enzim hati (SGOT dan SGPT)','2014-05-12','536238',NULL),('730978','Kadar asam urat','2017-01-02','597292',NULL),('731124','Kadar lipase','2014-09-12','581361',NULL),('731417','Kadar kalium','2016-02-22','586087',NULL),('732643','Kadar glukosa darah','2023-01-23','543450',NULL),('732726','Kadar hormon adrenal (cortisol aldosteron)','2018-12-31','555292',NULL),('734103','Kadar katekolamin (epinefrin dan norepinefrin)','2018-11-23','536238',NULL),('735931','Kadar asam urat','2022-09-20','593614',NULL),('736082','Kadar katekolamin (epinefrin dan norepinefrin)','2017-01-28','580063',NULL),('736327','Kadar kolesterol total','2017-05-08','579621',NULL),('737199','Kadar glukagon','2017-07-21','579621',NULL),('737282','Kadar kalsium','2019-01-08','569305',NULL),('738820','Kadar natrium','2022-09-24','516322',NULL),('740884','Kadar protein dalam urine','2015-04-19','564323',NULL),('740957','Kadar kalium','2022-05-10','569305',NULL),('741372','Kadar natrium','2022-03-25','598224',NULL),('746160','Kadar glukosa dalam urine','2020-04-03','528092',NULL),('746910','Kadar natriuretik peptide otak','2022-10-16','566679',NULL),('747691','Kadar leukosit dalam urine','2022-03-22','540184',NULL),('747800','Kadar natrium','2022-03-29','529930',NULL),('747991','Kadar troponin','2018-03-07','537679',NULL),('749184','Kadar glukosa darah','2019-02-06','581361',NULL),('750491','Kadar hormon paratiroid','2016-05-13','549122',NULL),('751114','Kadar leukosit dalam urine','2013-04-21','568565',NULL),('751678','Kadar kreatinin dalam urine','2021-08-31','521467',NULL),('751922','Waktu trombin','2017-10-10','590291',NULL),('752003','Kadar bilirubin','2017-04-02','528305',NULL),('752200','Kadar fibrinogen','2014-05-20','554393',NULL),('752805','Kadar fibrinogen','2017-03-31','517930',NULL),('753704','Waktu protrombin','2020-06-29','503091',NULL),('753962','Kadar fibrinogen','2020-04-14','598990',NULL),('754917','Kadar natrium','2017-11-08','548311',NULL),('755362','Kadar glukosa dalam urine','2022-10-29','525304',NULL),('756653','Kadar kreatinin','2019-12-23','503091',NULL),('759018','Kadar LDL (kolesterol jahat)','2017-06-08','514435',NULL),('759929','Kadar kalium','2017-06-06','579621',NULL),('761618','Kadar LDL (kolesterol jahat)','2021-03-26','526416',NULL),('761938','Kadar bilirubin','2015-11-18','557301',NULL),('762350','Kadar amilase','2020-01-11','507781',NULL),('762781','Kadar glukosa darah','2016-11-18','551130',NULL),('766771','Kadar hormon tiroid (TSH T3 T4)','2015-03-28','598616',NULL),('767901','Kadar amonia dalam urine','2022-11-27','548415',NULL),('767936','Kadar LDL (kolesterol jahat)','2019-11-30','509784',NULL),('768669','Kadar amilase','2013-05-11','562019',NULL),('771800','Kadar urea dalam urine','2014-07-29','584837',NULL),('772339','Kadar insulin','2021-06-20','580063',NULL),('773333','Waktu trombin','2013-06-18','537744',NULL),('774470','Kadar glukagon','2013-12-17','523956',NULL),('777349','Kadar sel darah merah dalam urine','2015-09-30','577382',NULL),('778601','Kadar amonia dalam urine','2022-07-16','594744',NULL),('779133','Kadar bilirubin dalam urine','2020-04-07','558507',NULL),('780887','Kadar sel darah merah dalam urine','2015-05-01','517930',NULL),('783161','Kadar kreatinin','2018-02-18','510672',NULL),('784614','Kadar fosfat','2017-12-21','510110',NULL),('785426','Kadar sel darah merah dalam urine','2019-02-20','525304',NULL),('785807','Kadar kalium','2021-06-18','566975',NULL),('786557','Kadar fosfat','2019-03-04','560687',NULL),('787667','Kadar asam urat','2016-10-26','541623',NULL),('787784','Kadar HDL (kolesterol baik)','2022-09-13','580782',NULL),('789524','Kadar glukagon','2013-12-28','597693',NULL),('790177','Waktu trombin','2017-09-22','554594',NULL),('790218','Kadar glukosa darah','2014-07-17','510110',NULL),('790284','Kadar hormon paratiroid','2017-06-28','595172',NULL),('790614','Kadar hormon prolaktin','2020-12-27','506909',NULL),('791087','Kadar insulin','2015-04-22','504526',NULL),('793064','Kadar hormon pertumbuhan (GH)','2021-08-24','532102',NULL),('794674','Kadar hormon pertumbuhan (GH)','2020-04-19','556906',NULL),('795645','Kadar hormon paratiroid','2022-01-26','539643',NULL),('796165','Kadar nitrit dalam urine','2018-06-03','593956',NULL),('797813','Kadar glukosa dalam urine','2022-12-10','593956',NULL),('798429','Kadar protein dalam urine','2015-12-18','528024',NULL),('798965','Kadar fosfat','2020-03-20','597292',NULL);
/*!40000 ALTER TABLE `hasillab` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER check_tanggalTes
BEFORE INSERT ON hasilLab
FOR EACH ROW
BEGIN
  DECLARE tglMasuk DATE;
  DECLARE tglKeluar DATE;
  
  SELECT tanggalMasuk, tanggalKeluar
  INTO tglMasuk, tglKeluar
  FROM rekamMedis
  WHERE idRekamMedis = NEW.idRekamMedis;
  
  
  IF (NEW.tanggalTes < tglMasuk OR NEW.tanggalTes > tglKeluar) THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'tanggalTes is not within the date range of the corresponding rekamMedis row';
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary table structure for view `jumlah_pasien_per_bulan`
--

DROP TABLE IF EXISTS `jumlah_pasien_per_bulan`;
/*!50001 DROP VIEW IF EXISTS `jumlah_pasien_per_bulan`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `jumlah_pasien_per_bulan` (
  `bulan` tinyint NOT NULL,
  `kelas` tinyint NOT NULL,
  `jumlah_pasien` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `melakukan`
--

DROP TABLE IF EXISTS `melakukan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `melakukan` (
  `idTenagaMedis` char(6) NOT NULL,
  `idProsedur` char(6) NOT NULL,
  KEY `idTenagaMedis` (`idTenagaMedis`),
  KEY `idProsedur` (`idProsedur`),
  CONSTRAINT `melakukan_ibfk_1` FOREIGN KEY (`idTenagaMedis`) REFERENCES `tenagamedis` (`idTenagaMedis`),
  CONSTRAINT `melakukan_ibfk_2` FOREIGN KEY (`idProsedur`) REFERENCES `prosedur` (`idProsedur`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `melakukan`
--

LOCK TABLES `melakukan` WRITE;
/*!40000 ALTER TABLE `melakukan` DISABLE KEYS */;
INSERT INTO `melakukan` VALUES ('252087','681849'),('227611','607929'),('208946','662872'),('260385','666202'),('295413','666999'),('268462','631264'),('207746','695150'),('299975','659661'),('288581','649077'),('252087','602516'),('295183','654789'),('227611','675059'),('233030','630919'),('287090','698840'),('263979','660881'),('288581','697853'),('212680','632234'),('259028','654623'),('295413','665019'),('241759','641176'),('294840','603998'),('298376','663922'),('273160','642651'),('288581','684956'),('282305','656725'),('228479','631809'),('263083','676324'),('241448','609232'),('278444','659898'),('259152','605071'),('298376','606303'),('295413','625190'),('260301','660211'),('220498','654934'),('287043','606569'),('287077','661405'),('259086','680973'),('248809','622587'),('244526','665678'),('263809','676001'),('254028','622236'),('295413','652220'),('284670','614274'),('287077','655339'),('243947','611115'),('247797','661036'),('296890','653524'),('218749','649610'),('299975','653813'),('274421','632233'),('213990','649136'),('219130','655002'),('246275','692947'),('246275','649228'),('259028','604501'),('213990','609881'),('243483','665265'),('292385','626277'),('249091','671600'),('208946','675427'),('268462','615271'),('201168','684096'),('221074','610933'),('213643','617693'),('290920','669932'),('287077','604430'),('237715','652729'),('280959','611403'),('248859','638576'),('288581','622128'),('263809','671015'),('219063','661910'),('212680','619553'),('273510','636603'),('259086','628925'),('236706','652632'),('213643','659806'),('287043','663857'),('236706','657845'),('260301','663213'),('260301','674437'),('207746','632017'),('230146','634028'),('219063','647748'),('237715','605605'),('207746','616281'),('263979','664068'),('254028','686510'),('210381','626026'),('238172','682366'),('299975','688151'),('242215','608789'),('263020','620121'),('269336','638363'),('224385','672705'),('222522','680254'),('274421','685353'),('220076','637336'),('220498','699338'),('254028','641269'),('260301','661910'),('252087','605071'),('200022','607929'),('268462','637336'),('210381','657845'),('220076','663857'),('249091','685353'),('230146','665265'),('260385','642651'),('241292','654934'),('280959','647748'),('221956','632234'),('242215','666202'),('201168','604501'),('244124','680254'),('290920','607929'),('224736','614274'),('263020','608789'),('296890','632017'),('262455','605071'),('224385','617693'),('269336','616281'),('273510','675427'),('293112','607929'),('240738','604430'),('295123','622128'),('201168','661036'),('260301','676324'),('220498','656725'),('213990','616281'),('222522','663922'),('236706','637336'),('273160','664068'),('263809','676324'),('280959','664068'),('244124','603998'),('278444','605071'),('287043','695150'),('214171','672705'),('208946','616281'),('255609','606569'),('235318','628925'),('220498','684956'),('219130','699338'),('224385','656725'),('287043','615271'),('280959','656725'),('273160','664068'),('273160','604501'),('293332','641269'),('200022','676324'),('260301','649228'),('243947','638363'),('296890','688151'),('230146','685353'),('244526','684096'),('238172','649610'),('229289','661036'),('295123','652729'),('235318','686510'),('208946','652729'),('218749','652729'),('221956','632017'),('241094','681849'),('220076','632234'),('214171','654789'),('248301','681849'),('294840','604501'),('273510','616281'),('276188','609881'),('293916','688151'),('259028','675427'),('252087','603998'),('241448','632234'),('219063','641269'),('241292','672705'),('244526','641269'),('292385','622236'),('295123','654623'),('225424','615271'),('253611','611115'),('225424','674437'),('245744','657845'),('263809','642651'),('298376','649136'),('259028','610933'),('287090','603998'),('249602','609881'),('293332','697853'),('207746','653813'),('288581','636603'),('208946','680973'),('287077','699338'),('295123','655339'),('293332','631809'),('252357','622128'),('263809','663213'),('263020','622587'),('241448','636603'),('259152','605071'),('284406','631809'),('211560','634028'),('236706','652729'),('254028','649610'),('219130','622128'),('287043','609232'),('241292','604430'),('293112','665019'),('201168','666999'),('244526','663922'),('246275','611115'),('228479','654934'),('263083','637336'),('287090','632233'),('272144','669932'),('295413','666999'),('241292','606569'),('287043','686510'),('237715','628925'),('263083','676001'),('293332','671600'),('256347','655339'),('227611','626026'),('292385','688151'),('241448','637336'),('243483','660211'),('282305','611403'),('287077','684096'),('241483','663922'),('290920','622236'),('226810','663922'),('221074','631264'),('293916','609881'),('219063','657845'),('252357','604501'),('263020','669932'),('260385','698840'),('292385','674437'),('252357','655339'),('290920','605605'),('295123','665678'),('290920','614274'),('263020','641176'),('233030','665265'),('214171','659898'),('255609','676001'),('287077','604430'),('202686','660211'),('241094','603998'),('292385','649136'),('229289','653524'),('293112','649136'),('269336','669932'),('213990','652632'),('247797','681849'),('290920','649610'),('263083','666999'),('221074','698840'),('236706','642651'),('246275','605605'),('201168','680973'),('218749','609232'),('287043','638576'),('244526','665019'),('210381','632017'),('249602','675427'),('292385','622236'),('242215','681849'),('207696','685353'),('228479','665265'),('220076','698840'),('295413','654789'),('274421','669932'),('219130','638576'),('263979','608789'),('287077','663922'),('201168','638363'),('213643','659806'),('210381','608789'),('202686','641269'),('222522','628925'),('295183','632233'),('263809','606569'),('293916','649610'),('282305','649136'),('202009','611403'),('219063','641176'),('288581','656725'),('208946','655339'),('255609','695150'),('260301','616281'),('287077','638363'),('212680','619553'),('263979','615271'),('252087','652220'),('236706','661036'),('295413','695150'),('244124','611115'),('253611','695150'),('235318','647748');
/*!40000 ALTER TABLE `melakukan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `membantu`
--

DROP TABLE IF EXISTS `membantu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `membantu` (
  `idDokter` char(6) NOT NULL,
  `idPerawat` char(6) NOT NULL,
  KEY `idPerawat` (`idPerawat`),
  KEY `idDokter` (`idDokter`),
  CONSTRAINT `membantu_ibfk_1` FOREIGN KEY (`idPerawat`) REFERENCES `perawat` (`idPerawat`),
  CONSTRAINT `membantu_ibfk_2` FOREIGN KEY (`idDokter`) REFERENCES `dokter` (`idDokter`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membantu`
--

LOCK TABLES `membantu` WRITE;
/*!40000 ALTER TABLE `membantu` DISABLE KEYS */;
INSERT INTO `membantu` VALUES ('200022','202009'),('201168','202686'),('207696','208946'),('207746','211560'),('210381','213643'),('212680','220498'),('213990','221074'),('214171','224385'),('218749','224736'),('219063','226810'),('219130','228479'),('220076','230146'),('221956','233030'),('222522','235318'),('225424','236706'),('227611','237940'),('229289','238172'),('237715','241292'),('240738','241448'),('241094','241483'),('243947','241759'),('245744','242215'),('246275','243483'),('248809','244124'),('252087','244526'),('252357','246219'),('256347','247797'),('260301','248301'),('263020','248859'),('263809','249091'),('272144','249602'),('273160','253611'),('274421','254028'),('276188','255609'),('284670','259028'),('287077','259086'),('287090','259152'),('288581','260385'),('290920','262455'),('293332','263083'),('295123','263979'),('295413','268462'),('296890','269336'),('298376','270970'),('299975','273510'),('200022','278444'),('201168','280959'),('207696','282305'),('207746','284406'),('210381','287043'),('212680','292385'),('213990','293112'),('214171','293916'),('218749','294840'),('219063','295183'),('219130','202009'),('220076','202686'),('221956','208946'),('222522','211560'),('225424','213643'),('227611','220498'),('229289','221074'),('237715','224385'),('240738','224736'),('241094','226810'),('243947','228479'),('245744','230146'),('246275','233030'),('248809','235318'),('252087','236706'),('252357','237940'),('256347','238172'),('260301','241292'),('263020','241448'),('263809','241483'),('272144','241759'),('273160','242215'),('274421','243483'),('276188','244124'),('284670','244526'),('287077','246219'),('287090','247797'),('288581','248301'),('290920','248859'),('293332','249091'),('295123','249602'),('295413','253611'),('296890','254028'),('298376','255609'),('299975','259028'),('200022','259086'),('201168','259152'),('207696','260385'),('207746','262455'),('210381','263083'),('212680','263979'),('213990','268462'),('214171','269336'),('218749','270970'),('219063','273510');
/*!40000 ALTER TABLE `membantu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menangani`
--

DROP TABLE IF EXISTS `menangani`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menangani` (
  `idDokter` char(6) NOT NULL,
  `idPerawat` char(6) NOT NULL,
  `idRekamMedis` char(6) NOT NULL,
  KEY `idDokter` (`idDokter`),
  KEY `idPerawat` (`idPerawat`),
  KEY `idRekamMedis` (`idRekamMedis`),
  CONSTRAINT `menangani_ibfk_1` FOREIGN KEY (`idDokter`) REFERENCES `dokter` (`idDokter`),
  CONSTRAINT `menangani_ibfk_2` FOREIGN KEY (`idPerawat`) REFERENCES `perawat` (`idPerawat`),
  CONSTRAINT `menangani_ibfk_3` FOREIGN KEY (`idRekamMedis`) REFERENCES `rekammedis` (`idRekamMedis`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menangani`
--

LOCK TABLES `menangani` WRITE;
/*!40000 ALTER TABLE `menangani` DISABLE KEYS */;
INSERT INTO `menangani` VALUES ('200022','202009','513317'),('201168','202686','593956'),('207696','208946','531362'),('207746','211560','553927'),('210381','213643','551402'),('212680','220498','584837'),('213990','221074','595456'),('214171','224385','507128'),('218749','224736','507781'),('219063','226810','522761'),('219130','228479','526067'),('220076','230146','510110'),('221956','233030','543955'),('222522','235318','564323'),('225424','236706','568958'),('227611','237940','529435'),('229289','238172','539824'),('237715','241292','567501'),('240738','241448','587060'),('241094','241483','505638'),('243947','241759','551130'),('245744','242215','552680'),('246275','243483','595292'),('248809','244124','556673'),('252087','244526','569365'),('252357','246219','575431'),('256347','247797','595172'),('260301','248301','509784'),('263020','248859','580063'),('263809','249091','551964'),('272144','249602','500007'),('273160','253611','528024'),('274421','254028','536238'),('276188','255609','536663'),('284670','259028','554393'),('287077','259086','555292'),('287090','259152','593116'),('288581','260385','580588'),('290920','262455','557301'),('293332','263083','516322'),('295123','263979','500813'),('295413','268462','500193'),('296890','269336','520692'),('298376','270970','594511'),('299975','273510','506909'),('200022','278444','525418'),('201168','280959','583808'),('207696','282305','577449'),('207746','284406','519540'),('210381','287043','575242'),('212680','292385','594906'),('213990','293112','551683'),('214171','293916','518351'),('218749','294840','586087'),('219063','295183','503091'),('219130','202009','540184'),('220076','202686','566975'),('221956','208946','526336'),('222522','211560','547437'),('225424','213643','528994'),('227611','220498','530796'),('229289','221074','520309'),('237715','224385','550837'),('240738','224736','543182'),('241094','226810','574172'),('243947','228479','597693'),('245744','230146','527306'),('246275','233030','593193'),('248809','235318','555503'),('252087','236706','556906'),('252357','237940','561790'),('256347','238172','578822'),('260301','241292','516305'),('263020','241448','504526'),('263809','241483','570491'),('272144','241759','523956'),('273160','242215','548409'),('274421','243483','500426'),('276188','244124','528092'),('284670','244526','541623'),('287077','246219','519951'),('287090','247797','532069'),('288581','248301','548311'),('290920','248859','593819'),('293332','249091','568587'),('295123','249602','529930'),('295413','253611','573975'),('296890','254028','521509'),('298376','255609','598616'),('299975','259028','508544'),('200022','259086','519740'),('201168','259152','562019'),('207696','260385','568938'),('207746','262455','590969'),('210381','263083','539643'),('212680','263979','591456'),('213990','268462','560687'),('214171','269336','566679'),('218749','270970','510084'),('219063','273510','515116'),('200022','202009','558507'),('201168','202686','579621'),('207696','208946','537679'),('207746','211560','565895'),('210381','213643','573598'),('212680','220498','590108'),('213990','221074','549504'),('214171','224385','551919'),('218749','224736','554594'),('219063','226810','581555'),('219130','228479','529643'),('220076','230146','562577'),('221956','233030','526416'),('222522','235318','580782'),('225424','236706','573749'),('227611','237940','598224'),('229289','238172','510672'),('237715','241292','529625'),('240738','241448','548415'),('241094','241483','562795'),('243947','241759','578362'),('245744','242215','546303'),('246275','243483','559037'),('248809','244124','540125'),('252087','244526','555251'),('252357','246219','518550'),('256347','247797','579052'),('260301','248301','518157'),('263020','248859','530174'),('263809','249091','534659'),('272144','249602','552289'),('273160','253611','594744'),('274421','254028','577382'),('276188','255609','597862'),('284670','259028','528305'),('287077','259086','586929'),('287090','259152','589788'),('288581','260385','590291'),('290920','262455','537744'),('293332','263083','517930'),('295123','263979','554151'),('295413','268462','568565'),('296890','269336','511041'),('298376','270970','507233'),('299975','273510','518418'),('200022','278444','547788'),('201168','280959','521467'),('207696','282305','532102'),('207746','284406','598990'),('210381','287043','554402'),('212680','292385','517367'),('213990','293112','567401'),('214171','293916','568052'),('218749','294840','593614'),('219063','295183','507304'),('219130','202009','540047'),('220076','202686','565044'),('221956','208946','570840'),('222522','211560','532172'),('225424','213643','524634'),('227611','220498','543450'),('229289','221074','578505'),('237715','224385','525304'),('240738','224736','525676'),('241094','226810','548364'),('243947','228479','570810'),('245744','230146','582384'),('246275','233030','514435'),('248809','235318','525406'),('252087','236706','553114'),('252357','237940','590214'),('256347','238172','581361'),('260301','241292','559665'),('263020','241448','595683'),('263809','241483','549122'),('272144','241759','569305'),('273160','242215','597292'),('274421','243483','510275'),('276188','244124','548080');
/*!40000 ALTER TABLE `menangani` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `obat`
--

DROP TABLE IF EXISTS `obat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `obat` (
  `idObat` char(6) NOT NULL,
  `namaObat` varchar(50) NOT NULL,
  `dosis` smallint(6) NOT NULL,
  `tanggalMulai` date NOT NULL,
  `tanggalSelesai` date NOT NULL,
  `idRekamMedis` char(6) DEFAULT NULL,
  `biaya` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`idObat`),
  KEY `idRekamMedis` (`idRekamMedis`),
  CONSTRAINT `obat_ibfk_1` FOREIGN KEY (`idRekamMedis`) REFERENCES `rekammedis` (`idRekamMedis`),
  CONSTRAINT `check_tanggalSelesai` CHECK (`tanggalSelesai` >= `tanggalMulai`),
  CONSTRAINT `check_dosis` CHECK (`dosis` > 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obat`
--

LOCK TABLES `obat` WRITE;
/*!40000 ALTER TABLE `obat` DISABLE KEYS */;
INSERT INTO `obat` VALUES ('800697','Formoterol',57,'2014-04-11','2020-01-09','573975',NULL),('801060','Losartan',56,'2014-05-08','2018-10-27','519740',NULL),('801853','Enalapril',47,'2014-08-17','2022-02-12','510084',NULL),('802876','Duloxetine',89,'2014-10-05','2016-07-22','506909',NULL),('803203','Carbamazepine',35,'2015-01-12','2020-12-29','508544',NULL),('807662','Glibenclamide',118,'2016-08-29','2022-02-20','570491',NULL),('808268','Amitriptyline',14,'2020-12-12','2022-07-17','591456',NULL),('809809','Aripiprazole',122,'2016-03-20','2022-07-31','525418',NULL),('809926','Metoprolol',31,'2019-02-05','2020-02-15','547788',NULL),('810651','Duloxetine',116,'2015-02-16','2020-07-29','565044',NULL),('810778','Fluoxetine',43,'2017-09-25','2018-11-09','554594',NULL),('810818','Montelukast',78,'2017-07-16','2022-06-05','562577',NULL),('811716','Hydrocortisone',43,'2017-06-30','2019-05-31','519540',NULL),('812025','Naproxen',57,'2014-12-10','2018-10-29','532172',NULL),('812696','Salbutamol',123,'2013-10-20','2013-11-29','566975',NULL),('813358','Salbutamol',31,'2013-11-03','2018-08-06','568587',NULL),('815295','Quetiapine',114,'2014-06-29','2015-09-15','547788',NULL),('815469','Alprazolam',47,'2013-06-21','2022-09-12','598616',NULL),('816110','Imipramine',100,'2016-01-08','2016-10-28','597292',NULL),('817379','Prednisone',126,'2019-07-20','2020-02-10','514435',NULL),('817547','Prednisone',92,'2014-11-05','2016-08-09','510672',NULL),('818681','Enalapril',103,'2017-12-25','2021-12-17','500813',NULL),('819563','Pregabalin',21,'2016-11-28','2018-09-23','556673',NULL),('820680','Entacapone',36,'2016-06-06','2020-07-08','557301',NULL),('820747','Metoclopramide',119,'2018-01-11','2019-11-17','593819',NULL),('820793','Losartan',12,'2013-06-27','2019-10-25','594511',NULL),('821348','Morphine',84,'2013-08-07','2017-03-06','570491',NULL),('824180','Insulin lispro',14,'2013-05-20','2014-07-14','507128',NULL),('825226','Carbidopa',79,'2013-07-15','2020-01-17','540047',NULL),('826696','Beclomethasone',107,'2018-02-27','2018-03-02','507128',NULL),('827546','Warfarin',59,'2017-06-30','2022-04-06','568587',NULL),('827963','Enoxaparin',57,'2013-09-30','2022-01-28','529643',NULL),('830217','Rivastigmine',35,'2019-04-03','2021-05-05','586929',NULL),('830432','Phenytoin',39,'2018-03-11','2023-01-07','590291',NULL),('831647','Fentanyl',77,'2013-07-25','2023-01-26','549504',NULL),('832058','Aspirin',61,'2015-04-20','2017-09-14','586087',NULL),('832239','Insulin detemir',90,'2015-10-31','2021-03-19','528305',NULL),('833408','Valproic acid',73,'2019-12-02','2021-04-17','597862',NULL),('833836','Ondansetron',45,'2016-03-14','2016-08-15','509784',NULL),('834293','Phenytoin',72,'2016-01-04','2022-11-23','543450',NULL),('834464','Valproic acid',125,'2020-09-22','2023-02-04','539643',NULL),('837710','Enoxaparin',85,'2019-02-07','2021-01-31','507233',NULL),('837948','Entacapone',63,'2016-02-19','2019-03-08','565044',NULL),('837980','Enalapril',32,'2013-06-27','2015-01-16','536663',NULL),('838549','Hydrocortisone',119,'2014-08-22','2017-09-19','505638',NULL),('838864','Sertraline',74,'2015-12-20','2016-03-26','547437',NULL),('838892','Prednisone',9,'2014-02-10','2022-05-11','543955',NULL),('839042','Imipramine',19,'2014-04-26','2020-11-20','518351',NULL),('839843','Carbamazepine',31,'2013-12-20','2017-05-12','549504',NULL),('839971','Duloxetine',54,'2019-11-26','2022-09-10','529625',NULL),('840071','Escitalopram',45,'2015-07-02','2018-02-05','510275',NULL),('840483','Domperidone',127,'2019-11-09','2020-05-15','532102',NULL),('841547','Celecoxib',112,'2015-04-14','2016-11-07','537744',NULL),('841860','Glibenclamide',36,'2021-04-28','2022-11-23','508544',NULL),('842347','Fluoxetine',123,'2020-07-03','2022-04-28','525304',NULL),('842425','Codeine',90,'2016-11-12','2018-03-26','551130',NULL),('842827','Galantamine',78,'2013-05-06','2017-09-27','551402',NULL),('843209','Insulin',108,'2017-05-23','2017-08-09','555503',NULL),('843746','Fluticasone',102,'2016-04-15','2018-12-21','551919',NULL),('843803','Domperidone',53,'2014-09-11','2020-06-01','528092',NULL),('844123','Naproxen',118,'2016-04-30','2018-07-07','507781',NULL),('844344','Amlodipine',25,'2014-06-17','2016-12-08','529435',NULL),('844527','Enalapril',26,'2017-01-06','2018-09-28','504526',NULL),('845174','Tramadol',6,'2016-12-27','2022-05-02','503091',NULL),('847659','Enoxaparin',105,'2013-09-04','2014-07-11','598616',NULL),('848441','Ondansetron',46,'2016-10-29','2019-04-14','529435',NULL),('850146','Citalopram',66,'2014-07-31','2014-10-14','528994',NULL),('850858','Gabapentin',28,'2014-02-04','2015-11-08','550837',NULL),('850881','Carbamazepine',95,'2016-08-25','2021-03-31','564323',NULL),('851299','Sertraline',56,'2014-12-09','2022-12-17','598616',NULL),('851992','Insulin lispro',85,'2018-01-11','2018-03-04','537744',NULL),('852572','Olanzapine',44,'2016-09-09','2018-10-04','540047',NULL),('852770','Chlorpromazine',20,'2013-05-19','2019-11-14','594906',NULL),('853805','Rivastigmine',75,'2018-01-03','2018-10-11','528024',NULL),('854681','Fluoxetine',84,'2013-10-18','2019-07-08','580063',NULL),('854897','Naproxen',29,'2017-04-23','2020-07-11','541623',NULL),('855083','Insulin lispro',35,'2017-06-21','2019-02-18','575431',NULL),('855394','Zolpidem',38,'2015-05-21','2022-10-21','528305',NULL),('856497','Zopiclone',41,'2019-09-17','2020-03-30','564323',NULL),('856756','Duloxetine',87,'2017-08-15','2020-06-18','561790',NULL),('857986','Insulin glargine',31,'2020-08-17','2020-11-10','552680',NULL),('858596','Parasetamol',96,'2017-09-26','2018-10-06','559037',NULL),('859846','Donepezil',56,'2021-05-25','2021-06-10','500813',NULL),('861348','Omeprazole',51,'2016-12-17','2018-09-21','568587',NULL),('861543','Insulin',17,'2014-10-19','2019-11-06','547437',NULL),('862070','Gabapentin',7,'2020-04-30','2021-10-23','587060',NULL),('863084','Phenytoin',116,'2017-08-18','2021-08-01','508544',NULL),('864723','Fentanyl',110,'2015-11-25','2021-04-02','534659',NULL),('865687','Insulin detemir',102,'2013-10-27','2016-01-27','594906',NULL),('868727','Venlafaxine',79,'2014-11-09','2021-05-21','548080',NULL),('869810','Enoxaparin',98,'2017-08-14','2020-03-08','554402',NULL),('870991','Lansoprazole',77,'2013-11-11','2019-04-17','555292',NULL),('871164','Formoterol',32,'2015-03-16','2016-07-08','521467',NULL),('871210','Venlafaxine',33,'2015-05-08','2020-06-08','559665',NULL),('871954','Levodopa',76,'2014-02-25','2016-06-24','587060',NULL),('872057','Ibuprofen',20,'2017-01-20','2019-09-29','539643',NULL),('872894','Beclomethasone',41,'2016-04-07','2016-06-07','554151',NULL),('873580','Dexamethasone',56,'2019-02-03','2021-11-26','580782',NULL),('873640','Imipramine',112,'2017-03-25','2019-04-29','547788',NULL),('874206','Prednisone',63,'2013-11-25','2016-01-06','507781',NULL),('874930','Diclofenac',40,'2013-04-10','2021-11-15','539824',NULL),('875352','Amitriptyline',94,'2015-05-14','2016-01-23','597292',NULL),('875614','Duloxetine',11,'2016-09-01','2019-05-09','556673',NULL),('876538','Glibenclamide',124,'2018-08-16','2020-04-11','507128',NULL),('876539','Imipramine',50,'2018-09-10','2018-12-01','525418',NULL),('876824','Atorvastatin',68,'2016-06-29','2021-09-20','551964',NULL),('876838','Alprazolam',18,'2020-06-20','2020-07-01','578822',NULL),('877298','Metformin',47,'2015-03-05','2021-04-09','581361',NULL),('877618','Quetiapine',115,'2014-02-17','2022-01-28','583808',NULL),('877684','Morphine',72,'2017-08-06','2021-10-04','523956',NULL),('881571','Metformin',60,'2013-05-26','2015-04-04','503091',NULL),('882033','Amlodipine',87,'2014-04-06','2019-10-17','521509',NULL),('882314','Salmeterol',78,'2017-11-30','2022-10-16','532102',NULL),('882704','Fluoxetine',101,'2016-11-08','2021-03-25','549122',NULL),('882929','Olanzapine',44,'2016-10-30','2018-04-12','584837',NULL),('883380','Montelukast',84,'2015-10-19','2020-10-24','595456',NULL),('883899','Haloperidol',127,'2013-08-03','2014-05-01','516322',NULL),('884085','Insulin detemir',41,'2016-09-18','2020-03-20','550837',NULL),('884188','Insulin aspart',8,'2014-09-10','2019-07-31','555251',NULL),('885009','Meloxicam',125,'2020-09-08','2020-12-12','525676',NULL),('885740','Pregabalin',108,'2020-08-28','2022-09-30','559665',NULL),('886034','Donepezil',13,'2014-09-25','2017-09-23','537679',NULL),('886989','Enalapril',37,'2021-02-19','2021-12-18','516305',NULL),('887219','Fluoxetine',44,'2013-09-29','2020-02-04','595456',NULL),('887272','Olanzapine',29,'2019-09-19','2022-04-08','529625',NULL),('887817','Ibuprofen',112,'2018-03-07','2020-02-17','570810',NULL),('889561','Domperidone',79,'2016-02-09','2016-09-01','595683',NULL),('889990','Escitalopram',40,'2015-03-15','2017-06-20','593956',NULL),('891169','Sertraline',68,'2015-01-28','2017-06-26','589788',NULL),('891704','Diclofenac',1,'2016-05-02','2020-04-28','509784',NULL),('891866','Risperidone',98,'2017-09-21','2017-09-21','510110',NULL),('892179','Amitriptyline',25,'2018-12-03','2020-05-18','597862',NULL),('893063','Zolpidem',49,'2017-12-22','2020-01-17','505638',NULL),('893407','Metoclopramide',56,'2014-07-21','2016-01-30','551919',NULL),('893638','Atorvastatin',52,'2021-01-25','2021-08-05','519951',NULL),('894917','Aspirin',93,'2014-02-20','2018-05-21','567401',NULL),('895109','Atorvastatin',56,'2017-09-25','2020-10-20','522761',NULL),('897096','Naproxen',55,'2016-04-01','2021-09-25','515116',NULL),('897287','Formoterol',67,'2017-09-06','2017-09-29','548311',NULL),('897913','Montelukast',5,'2015-01-30','2020-02-15','549122',NULL),('898193','Alprazolam',54,'2016-09-01','2020-07-19','590291',NULL),('898770','Zolpidem',4,'2020-08-29','2023-02-04','594906',NULL);
/*!40000 ALTER TABLE `obat` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER check_tanggalPengobatan
BEFORE INSERT ON obat
FOR EACH ROW
BEGIN
  DECLARE tglMasuk DATE;
  DECLARE tglKeluar DATE;
  
  
  SELECT tanggalMasuk, tanggalKeluar
  INTO tglMasuk, tglKeluar
  FROM rekamMedis
  WHERE idRekamMedis = NEW.idRekamMedis;
  
  
  IF (NEW.tanggalMulai < tglMasuk OR 
    NEW.tanggalMulai > tglKeluar OR
    NEW.tanggalSelesai < tglMasuk) THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'tanggalMulai is not within the date range of the corresponding rekamMedis row';
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `pasien`
--

DROP TABLE IF EXISTS `pasien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pasien` (
  `idPasien` char(6) NOT NULL,
  `namaDepanPasien` varchar(50) NOT NULL,
  `namaBelakangPasien` varchar(50) NOT NULL,
  `tanggalLahir` date NOT NULL,
  `jenisKelamin` char(1) NOT NULL CHECK (`jenisKelamin` in ('L','P')),
  `nomorTelepon` varchar(15) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `jalan` varchar(50) DEFAULT NULL,
  `kelurahan` varchar(50) DEFAULT NULL,
  `namaKontakDarurat` varchar(50) NOT NULL,
  `nomorKontakDarurat` varchar(15) NOT NULL,
  PRIMARY KEY (`idPasien`),
  UNIQUE KEY `nomorTelepon` (`nomorTelepon`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pasien`
--

LOCK TABLES `pasien` WRITE;
/*!40000 ALTER TABLE `pasien` DISABLE KEYS */;
INSERT INTO `pasien` VALUES ('101426','Sarge','Hanwright','1992-01-05','L','085762006861','sarge.hanwright@gmail.com','Jl. Gatot Subroto','Cilandak Timur','Sarge Hanwright','083285205871'),('101595','Maressa','Cayser','1985-02-25','L','081035662803','maressa.cayser@gmail.com','Jl. Raya Tarakan','Jagakarsa','Maressa Cayser','087134003924'),('101773','Goddart','Vertigan','1966-11-30','L','082092654997','goddart.vertigan@gmail.com','Jl. Raya Sofifi','Tamansari','Goddart Vertigan','083523924564'),('101861','Lonnie','Wasbey','1969-05-08','L','088108987411','lonnie.wasbey@gmail.com','Jl. Imam Bonjol','Menteng','Lonnie Wasbey','088159929974'),('102329','Eyde','Soloway','1981-03-24','L','085243954683','eyde.soloway@gmail.com','Jl. Raya Depok','Pesanggrahan','Eyde Soloway','084299124020'),('105052','Jade','Cuxson','1968-08-22','L','085601024003','jade.cuxson@gmail.com','Jl. Raya Merauke','Cipulir','Jade Cuxson','084477481353'),('105119','Spencer','Ettritch','2019-05-11','L','085252771830','spencer.ettritch@gmail.com','Jl. Raya Fakfak','Kebon Jeruk','Spencer Ettritch','088605227453'),('107779','Aharon','Deeth','2010-03-30','P','082479849752','aharon.deeth@gmail.com','Jl. Raya Jembrana','Pondok Labu','Aharon Deeth','089876782549'),('107781','Zilvia','Ollerearnshaw','1951-06-08','L','082451006086','zilvia.ollerearnshaw@gmail.com','Jl. Raya Gilimanuk','Ulujami','Zilvia Ollerearnshaw','089471921296'),('109136','Therine','MacLeese','1990-09-17','P','086733441998','therine.macleese@gmail.com','Jl. Sudirman','Tebet','Therine MacLeese','089694425424'),('111190','Tabor','Reade','2014-10-25','P','087421801781','tabor.reade@gmail.com','Jl. Raya Sofifi','Tebet Timur','Tabor Reade','083565397715'),('112042','Manny','Seamen','1996-07-27','L','088677164750','manny.seamen@gmail.com','Jl. Raya Manado-Bitung','Jatipulo','Manny Seamen','089036584417'),('112941','Sarine','Ortiga','1965-11-01','L','085929191663','sarine.ortiga@gmail.com','Jl. Raya Manokwari','Wijaya Kusuma','Sarine Ortiga','086312524097'),('114266','Myrta','Milksop','2000-09-16','P','082812680671','myrta.milksop@gmail.com','Jl. Raya Cikampek','Karet Tengsin','Myrta Milksop','087189979901'),('115931','Sabina','Cheavin','1963-12-01','L','083118360244','sabina.cheavin@gmail.com','Jl. Raya Manado','Kuningan Barat','Sabina Cheavin','082155273889'),('116903','Agna','Duckerin','1994-05-25','P','085439834824','agna.duckerin@gmail.com','Jl. Raya Jogja','Tebet','Agna Duckerin','087218191174'),('117631','Hermine','Bullier','1966-01-06','L','082293918382','hermine.bullier@gmail.com','Jl. Raya Pangkal Pinang','Bangka','Hermine Bullier','087872997831'),('117637','Maitilde','Wormald','2020-11-17','P','088642172035','maitilde.wormald@gmail.com','Jl. Raya Padang','Lenteng Agung','Maitilde Wormald','082713067566'),('117796','Putnam','Strode','1977-06-17','L','089332520993','putnam.strode@gmail.com','Jl. Raya Serpong','Jatinegara','Putnam Strode','084279855047'),('119280','Jackson','Donizeau','2004-08-05','L','082033442031','jackson.donizeau@gmail.com','Jl. Diponegoro','Penjaringan','Jackson Donizeau','085489652523'),('120735','Gottfried','Goldberg','2018-07-27','P','087175537260','gottfried.goldberg@gmail.com','Jl. Diponegoro','Pejaten Barat','Gottfried Goldberg','081579810966'),('121116','Eimile','Stickford','2005-04-17','L','081706096203','eimile.stickford@gmail.com','Jl. Raya Palopo','Kemang','Eimile Stickford','084162302957'),('121551','Rollie','Randerson','2006-09-02','P','087591446416','rollie.randerson@gmail.com','Jl. Raya Jambi','Jelambar','Rollie Randerson','089153168307'),('122134','Nannette','Iglesia','2013-08-01','P','089166069855','nannette.iglesia@gmail.com','Jl. Raya Parepare','Pademangan','Nannette Iglesia','083592699059'),('123247','Dani','Hathway','1995-01-08','P','088067988711','dani.hathway@gmail.com','Jl. Raden Saleh','Kebon Melati','Dani Hathway','084862151738'),('126454','Merrile','Casement','1962-07-31','L','086245488213','merrile.casement@gmail.com','Jl. Raya Semarang','Sukabumi Selatan','Merrile Casement','085228676617'),('126924','Elsey','Lefwich','2011-05-30','L','089312254841','elsey.lefwich@gmail.com','Jl. Raya Mojokerto','Kebayoran Lama Utara','Elsey Lefwich','086279308813'),('130144','Amie','Moss','2009-10-16','P','087418149761','amie.moss@gmail.com','Jl. Thamrin','Pasar Baru','Amie Moss','084758484257'),('130790','Gustaf','Scothern','2002-02-18','P','088073739423','gustaf.scothern@gmail.com','Jl. Raya Denpasar','Gambir','Gustaf Scothern','089988359891'),('131099','Noach','Condy','2018-10-20','P','083851858341','noach.condy@gmail.com','Jl. Raya Palu','Meruya Utara','Noach Condy','082688693073'),('132651','Consuelo','Giacomozzo','2002-04-26','P','088718320042','consuelo.giacomozzo@gmail.com','Jl. Raya Samarinda','Pademangan','Consuelo Giacomozzo','083071994119'),('133605','Anthea','Northcott','2014-12-21','L','083801314892','anthea.northcott@gmail.com','Jl. Raya Bontang','Cempaka Putih','Anthea Northcott','088423418808'),('133649','Finlay','Omar','2014-12-01','P','086667824870','finlay.omar@gmail.com','Jl. Raya Depok','Lebak Bulus','Finlay Omar','088651898201'),('134557','Kory','Mobius','2017-08-08','L','086019041952','kory.mobius@gmail.com','Jl. Raya Medan','Tebet Timur','Kory Mobius','081834667244'),('136137','Janenna','Whiston','1948-08-29','P','089004351366','janenna.whiston@gmail.com','Jl. Thamrin','Gandaria Selatan','Janenna Whiston','084086128905'),('137548','Nowell','Avey','1960-07-03','P','085368076043','nowell.avey@gmail.com','Jl. Raya Subang','Pejaten Barat','Nowell Avey','086766615046'),('137718','Alicia','Fellibrand','2007-08-14','L','081089287761','alicia.fellibrand@gmail.com','Jl. Raya Manado','Tebet Barat','Alicia Fellibrand','086046437982'),('137776','Benedict','Huscroft','1945-05-11','P','082869081130','benedict.huscroft@gmail.com','Jl. Raya Manokwari','Pasar Baru','Benedict Huscroft','086173515076'),('139609','Trixie','Snassell','1955-06-11','P','084934023045','trixie.snassell@gmail.com','Jl. Raya Bekasi','Wijaya Kusuma','Trixie Snassell','083181828721'),('140549','Twila','Lanphier','1998-05-09','L','083043730535','twila.lanphier@gmail.com','Jl. Raya Makassar','Manggarai Selatan','Twila Lanphier','088202696664'),('142953','Germana','Geddis','2009-06-28','L','086512191028','germana.geddis@gmail.com','Jl. Raya Jembrana','Menteng','Germana Geddis','086341578224'),('144552','Tanitansy','Pavel','1952-01-02','P','082417541111','tanitansy.pavel@gmail.com','Jl. Raya Ende','Kelapa Dua','Tanitansy Pavel','083966376222'),('144634','Kimmi','Iamittii','1997-08-30','P','082848382369','kimmi.iamittii@gmail.com','Jl. Raya Mojokerto','Cilandak Barat','Kimmi Iamittii','081387975090'),('144673','Orran','Raincin','1948-04-05','L','084733680082','orran.raincin@gmail.com','Jl. Raya Purwakarta','Kebon Jeruk','Orran Raincin','086463800924'),('144718','Carmine','Featherstone','1972-11-29','P','089211970192','carmine.featherstone@gmail.com','Jl. Raya Biak','Pondok Labu','Carmine Featherstone','083617971182'),('144757','Carl','Althorp','1949-02-23','P','086126154853','carl.althorp@gmail.com','Jl. Raya Praya','Pejaten Barat','Carl Althorp','088374062162'),('147016','Brandi','Westbrook','1979-03-31','L','089115808730','brandi.westbrook@gmail.com','Jl. Sudirman','Lebak Bulus','Brandi Westbrook','087371534783'),('147643','Jackquelin','Sulley','2016-06-19','P','086935100382','jackquelin.sulley@gmail.com','Jl. Raya Timika','Johar Baru','Jackquelin Sulley','085441119345'),('148072','Corabella','Aberdalgy','1947-03-13','P','084569604345','corabella.aberdalgy@gmail.com','Jl. Imam Bonjol','Cakung','Corabella Aberdalgy','084407646795'),('149538','Gwendolin','Lambricht','2001-01-03','P','082028703043','gwendolin.lambricht@gmail.com','Jl. M.H. Thamrin','Srengseng Sawah','Gwendolin Lambricht','081836581395'),('150445','Kara-lynn','Denley','2000-08-15','P','086513694698','kara-lynn.denley@gmail.com','Jl. Raya Makassar','Ulujami','Kara-lynn Denley','083303808043'),('151653','Leslie','Dies','1981-04-25','P','089215057303','leslie.dies@gmail.com','Jl. MH. Yamin','Mangga Dua','Leslie Dies','088088471550'),('151841','Byrann','Goater','1954-09-19','P','083905165556','byrann.goater@gmail.com','Jl. Raya Praya','Karet Tengsin','Byrann Goater','081414468907'),('151900','Brig','Yarnall','2021-11-14','P','085202247524','brig.yarnall@gmail.com','Jl. Raya Palu','Sukabumi Selatan','Brig Yarnall','085775776645'),('152519','Agnesse','Hemshall','1956-08-09','L','081395507540','agnesse.hemshall@gmail.com','Jl. Raya Balikpapan','Cilandak Timur','Agnesse Hemshall','085226390772'),('152679','Smitty','Egar','1992-04-16','P','085192629367','smitty.egar@gmail.com','Jl. Raya Manokwari','Tebet Barat','Smitty Egar','086722040661'),('154768','Corbett','LeEstut','1983-03-18','L','083688374045','corbett.leestut@gmail.com','Jl. Raya Pasuruan','Pejaten Barat','Corbett LeEstut','089378048630'),('154911','Vevay','Tooby','1959-09-06','P','084162903514','vevay.tooby@gmail.com','Jl. Sudirman','Jelambar','Vevay Tooby','084109270980'),('155076','Deeyn','Humphris','1963-06-02','P','089864097730','deeyn.humphris@gmail.com','Jl. Raya Cirebon','Pancoran','Deeyn Humphris','082381101054'),('156870','Joya','Bemlott','1982-06-25','L','082754657867','joya.bemlott@gmail.com','Jl. Raya Serpong','Tamansari','Joya Bemlott','081424823221'),('158055','Kasper','Weatherill','1991-09-21','P','081402773353','kasper.weatherill@gmail.com','Jl. Raya Palopo','Meruya Utara','Kasper Weatherill','083662069799'),('159919','Bailie','Jerram','1960-02-05','P','084874095438','bailie.jerram@gmail.com','Jl. Raya Ende','Bangka Tengah','Bailie Jerram','081378205603'),('160148','Cammi','Casterot','2011-02-10','P','088737250678','cammi.casterot@gmail.com','Jl. Raya Pasuruan','Wijaya Kusuma','Cammi Casterot','087443413971'),('160583','Doralia','Waby','1984-06-11','P','087542538709','doralia.waby@gmail.com','Jl. Raya Cikampek','Duri Kepa','Doralia Waby','084256393015'),('160678','Maison','Carriage','2012-06-08','L','086332998452','maison.carriage@gmail.com','Jl. Raya Jambi','Bintaro','Maison Carriage','089764288460'),('160966','Marilin','Collinson','1951-10-01','P','081612883073','marilin.collinson@gmail.com','Jl. Raya Tabanan','Lenteng Agung','Marilin Collinson','089169098465'),('161934','Winslow','Van der Brug','1947-03-21','L','087418194778','winslow.van der brug@gmail.com','Jl. Raya Palu','Tanah Abang','Winslow Van der Brug','088025451812'),('166566','Bernita','Aldhouse','1992-02-22','P','087047834502','bernita.aldhouse@gmail.com','Jl. Raya Sentani','Pejaten Timur','Bernita Aldhouse','083825107213'),('167213','Paula','Croot','2001-12-04','P','085253397387','paula.croot@gmail.com','Jl. Raya Depok','Cilandak Barat','Paula Croot','089594653392'),('167416','Margit','Small','1966-03-31','P','085598329721','margit.small@gmail.com','Jl. Raya Bontang','Pulo Gadung','Margit Small','084748451213'),('167581','Norma','Egginson','1963-11-30','L','089417203145','norma.egginson@gmail.com','Jl. Raya Palu','Kemang','Norma Egginson','081845205213'),('168892','Tedie','Usborn','2008-12-01','L','085253116831','tedie.usborn@gmail.com','Jl. Raya Maumere','Lebak Bulus','Tedie Usborn','084253393388'),('171053','Myrtice','Groucock','1954-12-25','L','089796143996','myrtice.groucock@gmail.com','Jl. Raya Bogor','Johar Baru','Myrtice Groucock','084202354580'),('171857','Evelina','Annakin','1982-09-12','P','085334524340','evelina.annakin@gmail.com','Jl. Raya Serpong','Tebet Timur','Evelina Annakin','085319011043'),('172729','Regina','Tall','2015-11-08','P','085685641913','regina.tall@gmail.com','Jl. Raya Balikpapan','Pancoran','Regina Tall','085278308219'),('172757','Burnaby','McKinty','2000-02-08','L','088024776652','burnaby.mckinty@gmail.com','Jl. MH. Yamin','Jelambar','Burnaby McKinty','085674766154'),('173674','Kirsteni','Hamshar','1974-04-10','P','082534173752','kirsteni.hamshar@gmail.com','Jl. Raya Pasuruan','Rawamangun','Kirsteni Hamshar','082618056413'),('174777','Cad','Garnam','2009-02-18','L','084732208785','cad.garnam@gmail.com','Jl. Raya Fakfak','Tebet','Cad Garnam','084016517640'),('175855','Hildegarde','Biasini','2018-01-24','L','086341758149','hildegarde.biasini@gmail.com','Jl. Raya Jatinangor','Cilandak Timur','Hildegarde Biasini','087679807497'),('178236','Verna','Braghini','2005-05-14','P','088536814794','verna.braghini@gmail.com','Jl. M.H. Thamrin','Tebet','Verna Braghini','082869985152'),('180171','Marina','Danter','1995-11-19','P','086464870593','marina.danter@gmail.com','Jl. Raya Jayawijaya','Cipulir','Marina Danter','088455961064'),('180917','Vicky','Lobe','1971-08-12','L','085226429380','vicky.lobe@gmail.com','Jl. Raya Banda Aceh','Kebayoran Lama Selatan','Vicky Lobe','087408596045'),('181384','Melisandra','Petofi','2020-07-06','P','089003598911','melisandra.petofi@gmail.com','Jl. Raya Larantuka','Pesanggrahan','Melisandra Petofi','081249848795'),('183878','Lezley','Merrett','1999-04-30','P','083152261736','lezley.merrett@gmail.com','Jl. Hasyim Ashari','Kalibata','Lezley Merrett','081161158445'),('183906','Livvie','Naulls','2002-06-18','L','082256923801','livvie.naulls@gmail.com','Jl. MT. Haryono','Cilandak Barat','Livvie Naulls','084314955713'),('185699','Cleo','Haxbie','1986-09-27','L','087705162869','cleo.haxbie@gmail.com','Jl. Raya Sentani','Tanah Abang','Cleo Haxbie','084319275817'),('185866','Lovell','Mardling','1991-06-26','L','089964904057','lovell.mardling@gmail.com','Jl. Raya Fakfak','Sunter','Lovell Mardling','083274193777'),('185901','Alicea','enzley','2000-09-03','L','089622092947','alicea.enzley@gmail.com','Jl. Raya Bogor','Grogol Petamburan','Alicea enzley','082969782767'),('186902','Stefania','Hamer','1990-04-29','L','084828290017','stefania.hamer@gmail.com','Jl. Raya Bekasi','Pesanggrahan','Stefania Hamer','084833585157'),('188009','Jeffrey','Dorro','1997-02-14','P','085977428621','jeffrey.dorro@gmail.com','Jl. Raya Gorontalo','Sawah Besar','Jeffrey Dorro','083962051170'),('188088','Kincaid','McIlwrick','2000-09-07','L','085505544693','kincaid.mcilwrick@gmail.com','Jl. Raya Pasuruan','Setiabudi','Kincaid McIlwrick','088286033182'),('190535','Torrance','Franchi','2021-02-14','L','086037890249','torrance.franchi@gmail.com','Jl. Raya Padang','Petogogan','Torrance Franchi','083857916668'),('191076','Melonie','Bauduccio','1998-02-02','L','081773871504','melonie.bauduccio@gmail.com','Jl. Raya Pasuruan','Pondok Labu','Melonie Bauduccio','083711911223'),('194227','Jamey','Harland','1963-09-16','L','083503482027','jamey.harland@gmail.com','Jl. Thamrin','Manggarai Timur','Jamey Harland','084011103865'),('196260','Genni','Brandt','1976-02-16','L','081138865755','genni.brandt@gmail.com','Jl. Raya Ende','Petogogan','Genni Brandt','082939487933'),('197089','Raddy','Schimek','1987-03-03','L','086582623724','raddy.schimek@gmail.com','Jl. Raya Karawang','Kemang','Raddy Schimek','082003158278'),('199039','Zola','Grolle','2023-01-06','L','085652171768','zola.grolle@gmail.com','Jl. Raya Waingapu','Senayan','Zola Grolle','084983287108'),('199213','Tabor','Dunbobin','1990-12-30','P','086199907553','tabor.dunbobin@gmail.com','Jl. Sisingamangaraja','Senayan','Tabor Dunbobin','089233402785'),('199548','Bertie','Cassar','1962-02-10','L','084186353552','bertie.cassar@gmail.com','Jl. Raya Mojokerto','Ulujami','Bertie Cassar','083454906324'),('199902','Sherm','Pechet','1987-01-15','P','085404059990','sherm.pechet@gmail.com','Jl. Raya Solo','Bangka Tengah','Sherm Pechet','089137607897');
/*!40000 ALTER TABLE `pasien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perawat`
--

DROP TABLE IF EXISTS `perawat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perawat` (
  `idPerawat` char(6) NOT NULL,
  PRIMARY KEY (`idPerawat`),
  CONSTRAINT `perawat_ibfk_1` FOREIGN KEY (`idPerawat`) REFERENCES `tenagamedis` (`idTenagaMedis`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perawat`
--

LOCK TABLES `perawat` WRITE;
/*!40000 ALTER TABLE `perawat` DISABLE KEYS */;
INSERT INTO `perawat` VALUES ('202009'),('202686'),('208946'),('211560'),('213643'),('220498'),('221074'),('224385'),('224736'),('226810'),('228479'),('230146'),('233030'),('235318'),('236706'),('237940'),('238172'),('241292'),('241448'),('241483'),('241759'),('242215'),('243483'),('244124'),('244526'),('246219'),('247797'),('248301'),('248859'),('249091'),('249602'),('253611'),('254028'),('255609'),('259028'),('259086'),('259152'),('260385'),('262455'),('263083'),('263979'),('268462'),('269336'),('270970'),('273510'),('278444'),('280959'),('282305'),('284406'),('287043'),('292385'),('293112'),('293916'),('294840'),('295183');
/*!40000 ALTER TABLE `perawat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perusahaanasuransi`
--

DROP TABLE IF EXISTS `perusahaanasuransi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perusahaanasuransi` (
  `idPerusahaan` char(3) NOT NULL,
  `namaKontak` varchar(50) NOT NULL,
  `nomorTelepon` varchar(15) NOT NULL,
  PRIMARY KEY (`idPerusahaan`),
  UNIQUE KEY `nomorTelepon` (`nomorTelepon`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perusahaanasuransi`
--

LOCK TABLES `perusahaanasuransi` WRITE;
/*!40000 ALTER TABLE `perusahaanasuransi` DISABLE KEYS */;
INSERT INTO `perusahaanasuransi` VALUES ('101','Sibeal Surman','087176922453'),('102','Charis Lambot','087878495817'),('103','Marcie Eisak','085335070606'),('104','Liana Engley','086484841073'),('105','Zorina Chatt','087858298568'),('106','Skipp Nollet','086507764810'),('107','Mohandas Powrie','082022506637'),('108','Marina Errol','082432941504'),('109','Britney Peto','086726838535'),('110','Gratiana Ryland','082193595064'),('111','Archie Hanlin','084312916383'),('112','Dulci Darley','082312043106'),('113','Danna Nunson','087193273510'),('114','Dagmar Skillman','081408309855'),('115','Ardella McCloid','082238276490'),('116','Laina Rochewell','088752222315'),('117','Deane Petrulis','089885737630'),('118','Adah Reubens','085636732953'),('119','Felice Cabena','086535542610'),('120','Pembroke Leathard','085748975751'),('121','Finlay Buckerfield','087637297793'),('122','Marven Yvens','088065086807'),('123','Lucine Greenwell','084056288629'),('124','Moyra Guyers','081221277612'),('125','Araldo Ilyenko','082673636309'),('126','Patty Lenoir','083387974606'),('127','Nappy Jagoe','083191406518'),('128','Eldon Dyerson','087812489145'),('129','Ysabel Rogerot','086067108794'),('130','Nora Balfour','083902423608'),('131','Magdalena Lodovichi','081735982454'),('132','Eugenius Yuryaev','089783681721'),('133','Ax Van Halen','084201065393'),('134','Sophia Fryett','089801237701'),('135','Lanae Bruni','087002012311'),('136','Babbie Gapp','088482301485'),('137','Kim Giovanitti','083936045933'),('138','Debra Foat','089574197681'),('139','Charil Eckery','081793238787'),('140','Hayden Stanlack','088453605114'),('141','Brooks Treffrey','082551900480'),('142','Odelle Kirke','086218212523'),('143','Weber Carleman','084565314279'),('144','Evyn Jukes','085275834926'),('145','Brig Roselli','081249175403'),('146','Rayshell Steinham','084436666912'),('147','Isaak Pawlata','087341334410'),('148','Catha Scemp','082209011148'),('149','Tab Sleany','085612253447'),('150','Winifield Andell','084852235177'),('151','Melonie Doidge','086637182892'),('152','Sabina Thickpenny','087205849088'),('153','Ranice Leopard','089602562454'),('154','Roanna Cuttings','089732632348'),('155','Gaby Tidy','086416651328'),('156','Dillie Atwater','081526285647'),('157','Dory Mullenger','087269324450'),('158','Hansiain Camamill','086656733786'),('159','Gallagher Belham','083579420256'),('160','Rorke Eddington','086531353730'),('161','Wilona Gresly','083529581447'),('162','Nils Guerreru','086019287345'),('163','Theobald Seddon','085032098807'),('164','Clovis MacDougall','081578524658'),('165','Lebbie Ruffey','083328640902'),('166','Harriott Peert','088577200543'),('167','Dana Aliberti','082268856656'),('168','Tiffi Rozalski','085292701681'),('169','Celie Frensche','086709591144'),('170','Lorraine Bedding','083534347548'),('171','Fredek Lortz','086105034103'),('172','Theodosia McGucken','087633592875'),('173','Jackqueline Beenham','083397439985'),('174','Dominic Tilliards','083054193329'),('175','Hayden Tutsell','089035587543'),('176','Shem Witherden','087315669968'),('177','Conn VanBrugh','082034630423'),('178','Fernando Piburn','083131022970'),('179','Brynna Erdes','087185304412'),('180','Sauveur Brodbin','082048452223'),('181','Toni McCrudden','084576097622'),('182','Etan Mardle','089908813478'),('183','Patricio Kinworthy','084695216468'),('184','Geneva Gimblett','081165719554'),('185','Issie Paviour','085493992707'),('186','Corena Bocock','088247046765'),('187','Wileen Neesam','088446279896'),('188','Florrie Bickley','089318797882'),('189','Daniele O\'Hannay','084047902079'),('190','Artur Barbisch','083809995169'),('191','Noam Peagrim','088366191106'),('192','Warren Jennison','083511398830'),('193','Hurley Mc Ilwrick','081658567473'),('194','Rafe Sharville','085358724210'),('195','Horatia Curm','087718522492'),('196','Barbara-anne Moyse','085139793422'),('197','Riva Bosma','082896805320'),('198','Lavina Darter','084665283597'),('199','Berenice Slegg','087802520124'),('200','Alex Cornford','088073140898');
/*!40000 ALTER TABLE `perusahaanasuransi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prosedur`
--

DROP TABLE IF EXISTS `prosedur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prosedur` (
  `idProsedur` char(6) NOT NULL,
  `namaProsedur` varchar(50) NOT NULL,
  `tanggalProsedur` date NOT NULL,
  `idRekamMedis` char(6) DEFAULT NULL,
  `biaya` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`idProsedur`),
  KEY `idRekamMedis` (`idRekamMedis`),
  CONSTRAINT `prosedur_ibfk_1` FOREIGN KEY (`idRekamMedis`) REFERENCES `rekammedis` (`idRekamMedis`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prosedur`
--

LOCK TABLES `prosedur` WRITE;
/*!40000 ALTER TABLE `prosedur` DISABLE KEYS */;
INSERT INTO `prosedur` VALUES ('602516','Tes Visual','2017-01-29','514435',NULL),('603998','Operasi bedah','2021-08-30','520692',NULL),('604430','Tes Genetik','2019-03-04','566679',NULL),('604501','Radioterapi','2017-11-08','551964',NULL),('605071','Tes Darah','2021-03-11','528092',NULL),('605605','Terapi Rehabilitasi','2022-05-30','590969',NULL),('606303','Bedah Laser','2021-06-26','528092',NULL),('606569','Bedah Mikro','2017-07-03','532102',NULL),('607929','Terapi Fisik','2015-04-16','504526',NULL),('608789','Bedah Mikro','2022-06-02','594744',NULL),('609232','Bedah Mikro','2017-03-04','528024',NULL),('609881','Terapi Okupasi','2019-04-15','554393',NULL),('610933','Tes Patologi','2019-04-09','564323',NULL),('611115','Bedah Onkologi','2019-03-03','550837',NULL),('611403','Radioterapi','2017-03-14','568052',NULL),('614274','Bedah Mikro','2016-08-22','543450',NULL),('615271','Terapi Virus','2016-08-26','560687',NULL),('616281','Bedah Onkologi','2013-07-08','591456',NULL),('617693','Bedah Laparoskopi','2021-05-27','564323',NULL),('619553','Bedah Endoskopi','2021-11-30','569365',NULL),('620121','Terapi Fisik','2014-07-08','595172',NULL),('622128','Tes Darah','2019-03-13','568938',NULL),('622236','Terapi Suara','2022-06-29','541623',NULL),('622587','Terapi Radiasi','2021-04-04','537744',NULL),('625190','Bedah Vaskular','2015-03-02','528092',NULL),('626026','Bedah Bariatric','2015-11-21','593193',NULL),('626277','Tes Imunologi','2018-01-01','555503',NULL),('628925','Terapi Sirkulasi','2015-06-16','573975',NULL),('630919','Tes Darah','2022-08-30','515116',NULL),('631264','Bedah Laser','2015-07-22','508544',NULL),('631809','Bedah Laser','2022-10-27','526336',NULL),('632017','Tes Genetik','2014-06-30','586087',NULL),('632233','Bedah Laparoskopi','2019-07-31','551683',NULL),('632234','Bedah Saraf','2016-08-03','519540',NULL),('634028','Bedah Orthopedi','2019-07-07','586929',NULL),('636603','Bedah Umum','2019-05-20','573598',NULL),('637336','Bedah Orthopedi','2022-05-01','598616',NULL),('638363','Bedah Onkologi','2013-05-03','597862',NULL),('638576','Bedah Laser','2020-06-28','568052',NULL),('641176','Bedah Laparoskopi','2020-08-14','520309',NULL),('641269','Bedah Bariatric','2022-06-07','598990',NULL),('642651','Terapi Genetik','2022-01-17','521467',NULL),('647748','Terapi Sirkulasi','2020-03-30','590291',NULL),('649077','Tes Genetik','2018-12-29','510672',NULL),('649136','Terapi Wicara','2019-09-15','551683',NULL),('649228','Bedah Onkologi','2019-07-25','551919',NULL),('649610','Terapi Wicara','2020-01-12','551402',NULL),('652220','Bedah Endovaskular','2015-01-22','543182',NULL),('652632','Bedah Robotic','2015-09-27','575431',NULL),('652729','Bedah Bariatric','2021-09-06','566975',NULL),('653524','Tes Radiologi','2015-04-17','551130',NULL),('653813','Bedah Laparotomi','2018-12-19','551402',NULL),('654623','Terapi Radiasi','2019-02-28','519540',NULL),('654789','Terapi Virus','2017-06-06','514435',NULL),('654934','Bedah Orthopedi','2013-05-31','529625',NULL),('655002','Terapi Transfusi','2019-01-24','551683',NULL),('655339','Terapi Sirkulasi','2015-09-20','549122',NULL),('656725','Bedah Umum','2015-12-17','525676',NULL),('657845','Bedah Plastik','2017-01-26','578362',NULL),('659661','Bedah Laser','2018-09-18','510110',NULL),('659806','Kemoterapi','2016-10-18','577382',NULL),('659898','Bedah toraks','2022-10-27','528024',NULL),('660211','Bedah Endoskopi','2013-09-09','529435',NULL),('660881','Bedah Onkologi','2019-09-20','516322',NULL),('661036','Terapi Genetik','2014-01-15','550837',NULL),('661405','Bedah Laparotomi','2021-09-04','532172',NULL),('661910','Bedah Mikro','2019-11-17','568958',NULL),('662872','Bedah Jantung','2017-04-17','505638',NULL),('663213','Tes Visual','2023-02-01','578505',NULL),('663857','Terapi Wicara','2018-06-30','577382',NULL),('663922','Terapi Okupasi','2015-03-16','520692',NULL),('664068','Terapi Suara','2019-10-27','591456',NULL),('665019','Tes Radiologi','2022-01-27','519740',NULL),('665265','Bedah Bariatric','2015-10-19','555292',NULL),('665678','Terapi Virus','2013-12-13','539824',NULL),('666202','Bedah Laparotomi','2017-07-22','507128',NULL),('666999','Terapi Rehabilitasi','2016-03-16','507128',NULL),('669932','Tes Darah','2018-10-27','564323',NULL),('671015','Bedah Endoskopi','2021-04-24','568938',NULL),('671600','Tes Radiologi','2019-12-30','555503',NULL),('672705','Bedah Robotic','2016-10-11','597862',NULL),('674437','Operasi bedah','2018-06-15','584837',NULL),('675059','Bedah toraks','2018-11-08','514435',NULL),('675427','Bedah Saraf','2017-07-06','557301',NULL),('676001','Bedah Thorakoskopi','2014-02-19','540184',NULL),('676324','Terapi Suara','2019-07-29','527306',NULL),('680254','Terapi Bicara','2017-05-11','598224',NULL),('680973','Bedah Jantung','2014-02-19','536663',NULL),('681849','Tes Radiologi','2020-04-03','500193',NULL),('682366','Terapi Genetik','2016-01-29','593193',NULL),('684096','Bedah toraks','2019-09-22','562019',NULL),('684956','Bedah Jantung','2016-11-02','525406',NULL),('685353','Terapi Transfusi','2015-09-19','598224',NULL),('686510','Tes Radiologi','2019-02-27','591456',NULL),('688151','Bedah Bariatric','2020-08-29','593193',NULL),('692947','Bedah Mikro','2020-08-17','551683',NULL),('695150','Terapi Genetik','2021-09-10','510084',NULL),('697853','Terapi Rehabilitasi','2013-09-04','517367',NULL),('698840','Kemoterapi','2019-05-21','515116',NULL),('699338','Terapi Rehabilitasi','2023-03-11','598616',NULL);
/*!40000 ALTER TABLE `prosedur` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER check_tanggalProsedur
BEFORE INSERT ON prosedur
FOR EACH ROW
BEGIN
  DECLARE tglMasuk DATE;
  DECLARE tglKeluar DATE;
  
  
  SELECT tanggalMasuk, tanggalKeluar
  INTO tglMasuk, tglKeluar
  FROM rekamMedis
  WHERE idRekamMedis = NEW.idRekamMedis;
  
  
  IF (NEW.tanggalProsedur < tglMasuk OR NEW.tanggalProsedur > tglKeluar) THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'tanggalProsedur is not within the date range of the corresponding rekamMedis row';
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `rekammedis`
--

DROP TABLE IF EXISTS `rekammedis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rekammedis` (
  `idRekamMedis` char(6) NOT NULL,
  `tanggalMasuk` date NOT NULL,
  `tanggalKeluar` date DEFAULT NULL,
  `totalBiaya` bigint(20) DEFAULT NULL,
  `diagnosis` varchar(255) NOT NULL,
  `idPasien` char(6) DEFAULT NULL,
  `idRuang` char(3) DEFAULT NULL,
  PRIMARY KEY (`idRekamMedis`),
  KEY `idPasien` (`idPasien`),
  KEY `idRuang` (`idRuang`),
  CONSTRAINT `rekamMedis_ibfk_1` FOREIGN KEY (`idPasien`) REFERENCES `pasien` (`idPasien`),
  CONSTRAINT `rekamMedis_ibfk_2` FOREIGN KEY (`idRuang`) REFERENCES `ruangrawat` (`idRuang`),
  CONSTRAINT `check_tanggalKeluar` CHECK (`tanggalKeluar` is null or `tanggalKeluar` >= `tanggalMasuk`),
  CONSTRAINT `check_biaya` CHECK (`totalBiaya` > 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rekammedis`
--

LOCK TABLES `rekammedis` WRITE;
/*!40000 ALTER TABLE `rekammedis` DISABLE KEYS */;
INSERT INTO `rekammedis` VALUES ('500007','2017-11-26','2018-08-02',4665000,'Kanker Serviks','114266','170'),('500193','2022-06-07','2022-08-25',5120000,'Kanker Serviks','120735','196'),('500426','2018-01-21','2021-05-05',2679000,'Hemofilia','144673','168'),('500813','2014-05-12','2021-06-14',9071000,'Tumor Otak','119280','155'),('503091','2015-01-05','2021-05-26',9924000,'Sirosis Hepatis','132651','170'),('504526','2017-11-23','2019-08-04',7883000,'Skizofrenia','144552','187'),('505638','2016-07-24','2018-09-13',4453000,'Torsio Testis','107781','124'),('506909','2014-08-27','2019-03-05',4686000,'Osteoartritis','121551','161'),('507128','2013-07-17','2021-10-26',2588000,'Tumor Otak','101861','133'),('507233','2014-04-11','2019-11-22',9679000,'Tersingkap (Pneumonia)','180917','184'),('507304','2013-12-17','2017-07-30',7585000,'Penyakit Crohn','185901','122'),('507781','2013-09-13','2018-07-23',6173000,'Gagal Hati','101861','159'),('508544','2018-05-07','2019-12-18',4273000,'Spondilitis Ankilosa','149538','128'),('509784','2013-05-28','2021-09-11',3692000,'Varicella (Cacar Air)','112042','163'),('510084','2014-10-14','2015-03-23',3335000,'Tukak Lambung','152519','130'),('510110','2014-04-14','2016-10-25',1978000,'Hepatitis B','105052','165'),('510275','2014-01-28','2014-08-19',5335000,'Klamidia','199902','134'),('510672','2013-06-09','2018-01-15',1781000,'Varicella (Cacar Air)','160678','175'),('511041','2015-12-09','2019-08-09',1010000,'Stroke','180171','176'),('513317','2013-08-26','2016-07-14',6898000,'Asma','101426','154'),('514435','2021-03-18','2022-09-23',6586000,'Gondok (Goiter)','194227','141'),('515116','2015-01-14','2016-07-23',7211000,'Hemoroid','152519','144'),('516305','2014-09-26','2017-02-15',6275000,'Endometriosis','142953','197'),('516322','2013-04-21','2021-09-09',6317000,'Spondilitis Ankilosa','117796','153'),('517367','2014-10-15','2018-09-25',6530000,'Alzheimer','185866','173'),('517930','2015-12-03','2020-11-06',8336000,'Sindrom Turner','174777','110'),('518157','2016-03-03','2019-02-17',6109000,'Kanker Pankreas','167416','131'),('518351','2013-12-28','2015-03-26',582000,'Hepatitis E','130790','126'),('518418','2013-08-15','2017-07-04',8834000,'Zika','180917','135'),('518550','2017-12-02','2018-06-17',8651000,'Kanker Kulit','167213','100'),('519540','2017-02-16','2018-12-14',8072000,'Miopia','123247','195'),('519740','2014-10-30','2022-01-16',5921000,'Kanker Payudara','149538','176'),('519951','2021-11-12','2022-03-06',6535000,'Skizofrenia','144718','194'),('520309','2019-12-05','2021-10-18',7006000,'Gonore','136137','142'),('520692','2019-01-29','2023-03-10',2934000,'Ebola','120735','128'),('521467','2017-08-06','2023-03-27',9776000,'Miopia','183878','116'),('521509','2016-03-02','2018-02-01',8671000,'Osteoartritis','148072','198'),('522761','2014-09-11','2018-04-13',7246000,'Kanker Kulit','102329','140'),('523956','2020-03-05','2022-07-31',5224000,'Astigmatisme','144634','107'),('524634','2015-11-25','2016-06-13',8956000,'Batu Ginjal','188088','117'),('525304','2013-06-24','2022-01-19',6777000,'Hepatitis B','191076','162'),('525406','2022-09-08','2022-12-31',2447000,'Autisme','194227','161'),('525418','2014-12-28','2023-03-09',1086000,'Kanker Kulit','121551','121'),('525676','2013-12-08','2014-04-25',7123000,'Sindrom Klinefelter','191076','120'),('526067','2017-07-28','2019-01-21',1137000,'Kanker Prostat','102329','139'),('526336','2014-05-23','2018-06-10',8706000,'Fatty Liver (Hati Berlemak)','133605','134'),('526416','2017-06-23','2019-06-09',3221000,'Hemofilia','159919','152'),('527306','2019-08-24','2021-08-13',1243000,'SARS (Severe Acute Respiratory Syndrome)','137718','161'),('528024','2018-02-18','2019-03-23',4459000,'Kanker Darah','115931','149'),('528092','2014-02-12','2014-09-24',727000,'Tifus','144673','161'),('528305','2016-03-14','2022-11-07',9198000,'Malaria','172729','158'),('528994','2016-02-28','2016-05-23',2063000,'Leukemia','134557','108'),('529435','2016-09-15','2021-04-28',2827000,'Batu Ginjal','107779','169'),('529625','2021-10-12','2021-11-28',5956000,'Hepatitis A','160678','120'),('529643','2018-10-24','2020-09-05',3691000,'Hernia','158055','194'),('529930','2016-10-20','2022-02-03',8538000,'OCD (Obsessive-Compulsive Disorder)','147643','109'),('530174','2016-02-12','2021-07-18',6337000,'Rubella (Campak Jerman)','167416','163'),('530796','2016-06-10','2019-10-14',5455000,'Kanker Lambung','134557','191'),('531362','2017-09-23','2018-08-18',1730000,'Kanker Otak','101595','164'),('532069','2019-04-18','2020-09-04',2830000,'Gagal Napas','144718','148'),('532102','2018-07-27','2022-02-15',483000,'Depresi','183906','149'),('532172','2014-06-28','2023-04-04',5999000,'Anemia','188009','103'),('534659','2018-01-10','2022-05-21',8426000,'Meningitis','167581','166'),('536238','2020-05-29','2020-10-30',6872000,'Epilepsi','115931','123'),('536663','2016-11-05','2020-01-27',1218000,'Myasthenia Gravis','115931','117'),('537679','2021-06-06','2021-09-27',1069000,'Malaria','154768','117'),('537744','2018-01-21','2021-12-17',8412000,'Anemia','173674','133'),('539643','2018-07-09','2020-05-15',8669000,'Colitis Ulserativa','150445','115'),('539824','2013-07-02','2014-02-21',3634000,'Kanker Hati','107779','177'),('540047','2017-06-23','2021-04-04',3822000,'Ebola','185901','142'),('540125','2014-01-28','2021-02-22',4258000,'Demam Berdarah','161934','177'),('540184','2017-10-29','2020-01-25',2168000,'Klamidia','132651','159'),('541623','2018-10-19','2020-09-10',5718000,'Epilepsi','144673','166'),('543182','2015-08-28','2021-08-16',1500000,'Myasthenia Gravis','137548','151'),('543450','2016-04-09','2023-02-04',3333000,'Sifilis','190535','160'),('543955','2022-11-12','2023-02-22',9486000,'Penyakit Paru Obstruktif Kronis (PPOK)','105052','145'),('546303','2020-09-12','2020-11-10',5740000,'Tersingkap (Pneumonia)','160966','148'),('547437','2013-05-03','2021-06-07',9168000,'Kanker Hati','133649','104'),('547788','2013-09-16','2018-12-14',6811000,'Kanker Paru-paru','181384','179'),('548080','2013-05-13','2021-07-09',9865000,'Flu','199902','181'),('548311','2015-10-16','2016-08-27',6817000,'Tumor Otak','144757','171'),('548364','2013-04-27','2020-11-09',817000,'Kanker Paru-paru','191076','112'),('548409','2015-12-17','2022-03-31',9758000,'Campak','144634','149'),('548415','2018-11-16','2022-02-02',9168000,'Penyakit Paru Obstruktif Kronis (PPOK)','160678','107'),('549122','2017-05-07','2021-11-07',9927000,'Klamidia','199548','188'),('549504','2014-05-16','2018-02-15',6018000,'Osteoporosis','154911','119'),('550837','2015-03-26','2022-05-27',9520000,'Gagal Hati','136137','133'),('551130','2013-09-09','2014-09-22',3882000,'Tifus','107781','108'),('551402','2013-10-02','2018-10-28',6428000,'Gagal Ginjal','101773','140'),('551683','2018-03-20','2021-06-19',7721000,'Kanker Payudara','130144','177'),('551919','2019-10-19','2021-02-28',8254000,'Batu Empedu','155076','164'),('551964','2017-11-22','2023-03-31',5212000,'Penyakit Paru Obstruktif Kronis (PPOK)','112941','191'),('552289','2017-10-06','2020-11-30',2716000,'OCD (Obsessive-Compulsive Disorder)','168892','163'),('552680','2017-02-02','2021-06-07',8835000,'Sindrom Down','109136','144'),('553114','2014-06-05','2020-05-03',1231000,'Cacar Monyet (Monkeypox)','194227','129'),('553927','2014-08-12','2020-04-11',2676000,'Penyakit Paru Obstruktif Kronis (PPOK)','101595','113'),('554151','2016-08-26','2022-03-23',2982000,'Penyakit Gigi dan Gusi','175855','180'),('554393','2013-10-10','2018-12-30',8760000,'Nyeri Persendian','115931','159'),('554402','2016-08-18','2016-08-30',3544000,'Zika','185699','158'),('554594','2014-07-22','2021-12-07',6324000,'SARS (Severe Acute Respiratory Syndrome)','155076','112'),('555251','2014-10-10','2015-12-09',4369000,'Kanker Darah','166566','185'),('555292','2017-12-02','2022-08-17',3780000,'Kanker','116903','192'),('555503','2015-02-14','2021-12-31',3363000,'Limfoma','139609','107'),('556673','2019-07-08','2021-08-17',3714000,'Kanker Hati','111190','157'),('556906','2021-08-23','2021-09-19',2479000,'Campak','139609','164'),('557301','2016-12-14','2020-01-10',3007000,'Kanker Paru-paru','117637','151'),('558507','2020-05-10','2021-04-15',7031000,'Endometriosis','152519','163'),('559037','2014-09-04','2021-05-09',4680000,'Gagal Jantung','160966','164'),('559665','2013-12-22','2015-07-28',6845000,'Kanker Serviks','199039','129'),('560687','2016-10-15','2022-07-19',9633000,'Colitis Ulserativa','151841','154'),('561790','2016-08-22','2023-01-17',5771000,'Sindrom Klinefelter','140549','183'),('562019','2018-09-29','2022-12-02',534000,'Skizofrenia','149538','153'),('562577','2016-10-08','2020-05-20',8786000,'Osteoporosis','158055','119'),('562795','2014-09-23','2015-02-02',7341000,'Kanker Paru-paru','160678','133'),('564323','2015-04-01','2020-07-26',8773000,'Hepatitis A','105052','112'),('565044','2016-05-12','2023-01-04',6756000,'Kanker Usus Besar','186902','159'),('565895','2017-09-22','2021-03-12',122000,'Asma','154768','158'),('566679','2014-12-29','2020-08-13',5574000,'Gangguan Pencernaan','151900','116'),('566975','2016-07-28','2017-01-09',5846000,'Kanker Kulit','132651','107'),('567401','2015-08-28','2022-03-22',7044000,'Demam Berdarah','185866','188'),('567501','2020-03-22','2023-01-01',7058000,'Fatty Liver (Hati Berlemak)','107779','119'),('568052','2016-10-13','2022-02-22',6718000,'Kanker Hati','185866','133'),('568565','2015-10-05','2015-10-26',47000,'Bipolar','178236','106'),('568587','2020-09-29','2021-08-09',8730000,'OCD (Obsessive-Compulsive Disorder)','147016','134'),('568938','2019-07-26','2022-08-16',8677000,'Hepatitis A','149538','152'),('568958','2013-07-27','2018-07-23',9766000,'Gagal Jantung','105119','157'),('569305','2018-08-30','2022-12-15',2501000,'Infeksi Saluran Kemih','199548','130'),('569365','2018-04-01','2020-12-31',3290000,'Demam Berdarah','111190','180'),('570491','2013-12-11','2014-02-20',6922000,'Hemofilia','144552','110'),('570810','2016-02-01','2017-11-25',8617000,'Penyakit Paru Obstruktif Kronis (PPOK)','191076','110'),('570840','2017-09-20','2018-03-11',7353000,'Osteoartritis','186902','122'),('573598','2018-09-20','2022-12-06',4370000,'Hiperhidrosis (Keringat Berlebih)','154768','178'),('573749','2013-10-28','2019-02-06',2092000,'Gonore','160148','127'),('573975','2016-01-11','2019-02-01',4251000,'Sifilis','147643','103'),('574172','2015-02-07','2015-05-15',9257000,'Hepatitis C','137548','131'),('575242','2017-02-13','2019-07-19',4814000,'Batu Ginjal','126454','148'),('575431','2014-11-02','2015-02-06',9294000,'Gangguan Pencernaan','111190','146'),('577382','2018-09-10','2019-03-25',7145000,'Alzheimer','171857','189'),('577449','2020-05-19','2022-07-22',8497000,'Batu Ginjal','122134','107'),('578362','2016-11-12','2019-06-04',5377000,'Autisme','160678','168'),('578505','2018-09-02','2022-04-27',3712000,'Hepatitis','190535','121'),('578822','2019-06-15','2021-04-14',8805000,'Spondilitis Ankilosa','140549','102'),('579052','2013-05-08','2013-09-21',3321000,'Astigmatisme','167213','148'),('579621','2015-08-15','2020-04-23',9296000,'Lupus Eritematosus Sistemik','152679','132'),('580063','2015-05-02','2017-07-07',6707000,'Stroke','112042','116'),('580588','2013-10-29','2015-09-09',5939000,'Sindrom Down','117631','186'),('580782','2016-05-24','2016-08-16',8414000,'TBC','159919','182'),('581361','2017-07-23','2018-04-22',859000,'Kusta','197089','152'),('581555','2016-07-23','2018-11-25',4028000,'Osteoporosis','156870','114'),('582384','2016-03-26','2021-07-16',884000,'Infeksi Saluran Kemih','191076','115'),('583808','2018-08-14','2022-01-18',7820000,'SARS (Severe Acute Respiratory Syndrome)','121551','136'),('584837','2014-01-21','2020-02-23',2365000,'Hepatitis B','101773','133'),('586087','2013-06-23','2019-12-15',9508000,'Thalassemia','131099','157'),('586929','2021-06-12','2022-07-01',9321000,'Epilepsi','172729','187'),('587060','2013-05-11','2018-04-26',2350000,'TBC','107779','163'),('589788','2018-01-17','2019-07-04',2371000,'Glaukoma','172757','154'),('590108','2014-12-20','2019-12-08',9318000,'Astigmatisme','154768','185'),('590214','2017-03-29','2022-10-12',7112000,'Alzheimer','196260','160'),('590291','2014-03-02','2021-07-16',9452000,'Cacar Monyet (Monkeypox)','172757','148'),('590969','2022-02-18','2022-09-13',2574000,'Gagal Jantung','149538','160'),('591456','2016-08-23','2020-09-03',3609000,'OCD (Obsessive-Compulsive Disorder)','151653','157'),('593116','2022-11-05','2023-03-22',6647000,'Penyakit Gigi dan Gusi','116903','106'),('593193','2020-06-17','2022-02-23',4381000,'Torsio Testis','137776','157'),('593614','2019-02-26','2020-02-24',7201000,'Thalassemia','185866','168'),('593819','2014-11-25','2021-08-12',2169000,'Rubella (Campak Jerman)','144757','169'),('593956','2013-11-28','2017-09-04',3919000,'Kanker Serviks','101426','143'),('594511','2016-09-15','2017-01-13',8130000,'Gondok (Goiter)','121116','110'),('594744','2014-11-03','2019-01-18',40000,'Herpes Simplex','171053','119'),('594906','2016-02-04','2018-07-09',3940000,'Hernia','126924','165'),('595172','2019-02-01','2022-08-13',5523000,'Ebola','111190','168'),('595292','2015-12-18','2019-06-20',5262000,'Malaria','109136','148'),('595456','2019-11-20','2021-05-17',2589000,'Kanker Payudara','101773','134'),('595683','2014-03-10','2014-10-06',7160000,'Leukemia','199213','127'),('597292','2013-07-13','2019-01-25',4312000,'Skizofrenia','199548','135'),('597693','2020-08-21','2022-04-21',1161000,'Kanker Hati','137548','196'),('597862','2013-10-06','2017-03-05',81000,'Depresi','171857','173'),('598224','2015-04-20','2016-09-15',8034000,'Limfoma','160583','179'),('598616','2014-02-14','2016-03-13',7623000,'Hepatitis B','148072','176'),('598990','2015-04-19','2016-07-23',1139000,'Tukak Lambung','183906','143');
/*!40000 ALTER TABLE `rekammedis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ruangrawat`
--

DROP TABLE IF EXISTS `ruangrawat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ruangrawat` (
  `idRuang` char(3) NOT NULL,
  `lantai` tinyint(4) NOT NULL,
  `kelas` varchar(10) NOT NULL,
  `kapasitas` tinyint(4) NOT NULL,
  PRIMARY KEY (`idRuang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ruangrawat`
--

LOCK TABLES `ruangrawat` WRITE;
/*!40000 ALTER TABLE `ruangrawat` DISABLE KEYS */;
INSERT INTO `ruangrawat` VALUES ('100',2,'I',4),('101',3,'III',5),('102',1,'I',6),('103',3,'II',4),('104',3,'VIP',4),('105',4,'II',3),('106',3,'VIP',3),('107',4,'I',7),('108',4,'VIP',4),('109',5,'I',3),('110',2,'III',5),('111',1,'II',3),('112',2,'II',6),('113',2,'VIP',6),('114',1,'VIP',3),('115',1,'VIP',7),('116',1,'I',8),('117',3,'I',10),('118',2,'II',3),('119',5,'I',8),('120',5,'VIP',7),('121',5,'I',6),('122',1,'II',5),('123',3,'VIP',10),('124',3,'III',5),('125',4,'III',5),('126',4,'III',3),('127',4,'VIP',8),('128',5,'II',8),('129',4,'VIP',1),('130',5,'III',3),('131',5,'VIP',7),('132',4,'VIP',3),('133',3,'I',4),('134',2,'I',4),('135',1,'II',8),('136',4,'III',1),('137',5,'I',10),('138',5,'I',6),('139',1,'II',7),('140',4,'I',9),('141',3,'VIP',7),('142',5,'II',8),('143',5,'III',10),('144',4,'I',10),('145',5,'VIP',10),('146',2,'II',5),('147',4,'I',6),('148',2,'I',9),('149',1,'III',9),('150',3,'VIP',6),('151',5,'VIP',1),('152',1,'I',1),('153',5,'II',7),('154',3,'I',9),('155',3,'I',2),('156',2,'VIP',3),('157',1,'VIP',1),('158',1,'II',8),('159',3,'III',6),('160',5,'VIP',4),('161',2,'I',7),('162',5,'I',7),('163',5,'III',4),('164',3,'II',6),('165',3,'II',5),('166',2,'I',6),('167',2,'I',2),('168',4,'II',3),('169',2,'I',2),('170',4,'I',7),('171',4,'II',5),('172',2,'II',1),('173',4,'III',7),('174',3,'I',5),('175',3,'VIP',1),('176',4,'I',9),('177',5,'VIP',8),('178',5,'I',5),('179',4,'II',7),('180',4,'I',3),('181',3,'III',9),('182',2,'III',2),('183',5,'III',9),('184',4,'I',5),('185',3,'VIP',8),('186',4,'VIP',1),('187',4,'II',4),('188',1,'I',6),('189',1,'I',10),('190',1,'I',8),('191',5,'III',6),('192',2,'VIP',5),('193',2,'I',2),('194',4,'III',3),('195',3,'I',4),('196',3,'III',9),('197',1,'III',9),('198',2,'I',1),('199',1,'III',7);
/*!40000 ALTER TABLE `ruangrawat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tenagamedis`
--

DROP TABLE IF EXISTS `tenagamedis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tenagamedis` (
  `idTenagaMedis` char(6) NOT NULL,
  `namaDepan` varchar(50) NOT NULL,
  `namaBelakang` varchar(50) NOT NULL,
  `tanggalLahir` date NOT NULL,
  `jenisKelamin` varchar(1) NOT NULL CHECK (`jenisKelamin` in ('L','P')),
  `nomorTelepon` varchar(15) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `jalan` varchar(50) DEFAULT NULL,
  `kelurahan` varchar(50) DEFAULT NULL,
  `nomorLisensi` varchar(15) NOT NULL,
  `tipe` varchar(10) NOT NULL,
  PRIMARY KEY (`idTenagaMedis`),
  UNIQUE KEY `nomorTelepon` (`nomorTelepon`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tenagamedis`
--

LOCK TABLES `tenagamedis` WRITE;
/*!40000 ALTER TABLE `tenagamedis` DISABLE KEYS */;
INSERT INTO `tenagamedis` VALUES ('200022','Cobb','Riggs','1966-10-17','L','086265184124','cobb.riggs@gmail.com','Jl. Raya Manokwari','Duren Tiga','1309170777','DOKTER'),('201168','Adair','Llewhellin','1991-11-20','P','085744610461','adair.llewhellin@gmail.com','Jl. Raya Bekasi','Pejaten Barat','1999266587','DOKTER'),('202009','Ardelle','Graddon','2000-05-29','L','089181265400','ardelle.graddon@gmail.com','Jl. Sudirman','Mampang Prapatan','1952091720','PERAWAT'),('202686','Ginger','Back','1983-10-17','P','088964243987','ginger.back@gmail.com','Jl. Raya Timika','Bangka','1685240799','PERAWAT'),('207696','Thomasine','Purveys','1984-08-30','L','089182355289','thomasine.purveys@gmail.com','Jl. Sudirman','Penjaringan','1438405846','DOKTER'),('207746','Bendix','Shaw','1963-10-07','L','086259096285','bendix.shaw@gmail.com','Jl. Raya Bandar Lampung','Glodok','1631609087','DOKTER'),('208946','Mitchael','Bengall','2005-07-08','P','083502270750','mitchael.bengall@gmail.com','Jl. Raya Palembang','Manggarai','1957632104','PERAWAT'),('210381','Jerrome','Jeppe','2012-09-13','P','082941476733','jerrome.jeppe@gmail.com','Jl. M.H. Thamrin','Bangka Tengah','1966235271','DOKTER'),('211560','Emilia','Terrazzo','1999-02-13','P','086836071563','emilia.terrazzo@gmail.com','Jl. Raya Bengkulu','Kembangan Utara','1711709497','PERAWAT'),('212680','Bren','Gabler','2010-05-20','P','088442742744','bren.gabler@gmail.com','Jl. Raya Jatinangor','Srengseng Sawah','1529658625','DOKTER'),('213643','Nona','Worlidge','1992-04-19','P','081842522222','nona.worlidge@gmail.com','Jl. MH. Yamin','Kebon Jeruk','1029316948','PERAWAT'),('213990','Chester','Bolus','1961-10-02','L','087581890220','chester.bolus@gmail.com','Jl. Raya Subang','Senayan','1644589823','DOKTER'),('214171','Suellen','Vanlint','2018-04-08','P','082944896029','suellen.vanlint@gmail.com','Jl. Raya Parepare','Jatipulo','1558583030','DOKTER'),('218749','Gusta','Carlino','1967-11-18','L','085257129731','gusta.carlino@gmail.com','Jl. Raya Kendari','Lenteng Agung','1132784285','DOKTER'),('219063','Mozes','Gyorffy','1997-10-28','P','086664404694','mozes.gyorffy@gmail.com','Jl. Raya Tomohon','Slipi','1957956265','DOKTER'),('219130','Hersch','Groomebridge','1982-09-13','L','088536391638','hersch.groomebridge@gmail.com','Jl. Raya Bitung','Duri Kepa','1783352177','DOKTER'),('220076','Dennie','Corde','1977-03-27','P','084949681558','dennie.corde@gmail.com','Jl. Raya Manokwari','Menteng','1970422011','DOKTER'),('220498','Tally','Stenett','1997-09-20','P','081749222441','tally.stenett@gmail.com','Jl. Raya Mojokerto','Mangga Dua','1910276825','PERAWAT'),('221074','Dario','Olliff','1997-03-22','L','084029322316','dario.olliff@gmail.com','Jl. Raya Mojokerto','Duri Kepa','1915904712','PERAWAT'),('221956','Hubie','Wishart','1968-06-01','P','083489277251','hubie.wishart@gmail.com','Jl. Raya Pekanbaru','Mampang Prapatan','1754077351','DOKTER'),('222522','Osmond','Crewther','1982-08-27','L','089286625551','osmond.crewther@gmail.com','Jl. Raya Jayawijaya','Tamansari','1674625025','DOKTER'),('224385','Tirrell','Craister','1990-12-05','P','089955856278','tirrell.craister@gmail.com','Jl. Raya Bogor','Srengseng Sawah','1490255022','PERAWAT'),('224736','Susanna','Northbridge','2008-04-25','P','088199603119','susanna.northbridge@gmail.com','Jl. Raya Parepare','Cakung','1739090474','PERAWAT'),('225424','Daisy','Philipart','1987-12-14','P','081003114137','daisy.philipart@gmail.com','Jl. Raya Bekasi','Senayan','1730859864','DOKTER'),('226810','Thurstan','McCumesky','2014-10-14','L','085069448957','thurstan.mccumesky@gmail.com','Jl. Raya Gorontalo','Jatinegara','1006313921','PERAWAT'),('227611','Raimondo','Ainsbury','2008-08-09','L','084509683437','raimondo.ainsbury@gmail.com','Jl. Raya Maumere','Cempaka Putih','1604680303','DOKTER'),('228479','Claudia','Oldmeadow','2017-07-13','P','083191596041','claudia.oldmeadow@gmail.com','Jl. Raya Ambon','Slipi','1546505164','PERAWAT'),('229289','Anthia','Fihelly','1957-03-14','L','085822282987','anthia.fihelly@gmail.com','Jl. Raya Subang','Cilandak Barat','1958017287','DOKTER'),('230146','Adele','Freiberg','1952-08-16','P','082506133426','adele.freiberg@gmail.com','Jl. Sudirman','Manggarai Timur','1739028773','PERAWAT'),('233030','Cori','Burtonwood','1964-01-07','L','088411778340','cori.burtonwood@gmail.com','Jl. Raya Banda Aceh','Sunter','1128770792','PERAWAT'),('235318','Sharla','Float','1952-08-30','P','087666735015','sharla.float@gmail.com','Jl. Raya Medan','Karet Tengsin','1931348698','PERAWAT'),('236706','Barty','Berrow','1961-03-19','L','085948859738','barty.berrow@gmail.com','Jl. Raya Bima','Bangka Selatan','1152010154','PERAWAT'),('237715','Stefa','Pinks','2013-07-23','P','083167249470','stefa.pinks@gmail.com','Jl. Raya Ternate','Jatipulo','1448017345','DOKTER'),('237940','Kathryne','Plumridege','1976-04-07','L','085685736844','kathryne.plumridege@gmail.com','Jl. Gajah Mada','Petogogan','1441441528','PERAWAT'),('238172','Brena','Glew','1965-05-17','L','083077254133','brena.glew@gmail.com','Jl. Raya Bitung','Bangka Selatan','1997688863','PERAWAT'),('240738','Drucill','Masser','1980-12-23','L','085754540656','drucill.masser@gmail.com','Jl. Raden Saleh','Kota Bambu Utara','1026429016','DOKTER'),('241094','Linnet','Maysor','1976-08-17','L','088784664050','linnet.maysor@gmail.com','Jl. Raya Karawang','Tebet Barat','1063844644','DOKTER'),('241292','Saloma','Hodgon','1958-06-24','L','087551741819','saloma.hodgon@gmail.com','Jl. Raya Mataram','Kembangan Selatan','1648329290','PERAWAT'),('241448','Northrop','MacGoun','2008-12-21','L','088462737709','northrop.macgoun@gmail.com','Jl. M.H. Thamrin','Permata Hijau','1821655778','PERAWAT'),('241483','Abe','Limpkin','1966-04-21','P','084844565341','abe.limpkin@gmail.com','Jl. Raya Parepare','Tanjung Priok','1938927264','PERAWAT'),('241759','Jermayne','Hanner','1955-10-08','L','087872100465','jermayne.hanner@gmail.com','Jl. Gajah Mada','Tomang','1091496189','PERAWAT'),('242215','Katrinka','Cornehl','1950-12-29','L','089328217655','katrinka.cornehl@gmail.com','Jl. Raya Gorontalo','Pesanggrahan','1424294244','PERAWAT'),('243483','Aksel','Thorndycraft','1946-05-27','P','085361359667','aksel.thorndycraft@gmail.com','Jl. Raya Jayapura','Manggarai Timur','1554803146','PERAWAT'),('243947','Jefferson','Mainds','1987-09-19','P','083501073837','jefferson.mainds@gmail.com','Jl. Raya Padang','Kemanggisan','1798836095','DOKTER'),('244124','Nolan','Fazakerley','1963-10-27','P','087218092082','nolan.fazakerley@gmail.com','Jl. M.H. Thamrin','Lenteng Agung','1608088692','PERAWAT'),('244526','Colan','Gilstin','2005-07-04','P','087126018676','colan.gilstin@gmail.com','Jl. Raya Sofifi','Bintaro','1711277760','PERAWAT'),('245744','Sile','Kubiak','2019-01-04','P','084307251887','sile.kubiak@gmail.com','Jl. Raya Depok','Kebayoran Lama Utara','1650414995','DOKTER'),('246219','Baily','Prise','1963-11-03','L','082511637837','baily.prise@gmail.com','Jl. MT. Haryono','Kembangan Utara','1542532321','PERAWAT'),('246275','Grenville','Pirdue','1951-06-08','P','082877798857','grenville.pirdue@gmail.com','Jl. Raya Sorong','Lenteng Agung','1773071156','DOKTER'),('247797','Andrea','Grinham','1955-04-16','P','081399880768','andrea.grinham@gmail.com','Jl. Raya Medan','Kebayoran Lama Selatan','1985247686','PERAWAT'),('248301','Livvie','Stuchburie','1958-10-01','P','084146196542','livvie.stuchburie@gmail.com','Jl. Raya Jatinangor','Wijaya Kusuma','1973190301','PERAWAT'),('248809','Pollyanna','Skudder','2001-10-25','L','086501813512','pollyanna.skudder@gmail.com','Jl. Hasyim Ashari','Pademangan','1509252937','DOKTER'),('248859','Gabriell','Pardy','1975-07-24','L','082248159633','gabriell.pardy@gmail.com','Jl. Raya Pekanbaru','Rawamangun','1645938618','PERAWAT'),('249091','Holly-anne','Leeuwerink','1956-02-28','P','085653304169','holly-anne.leeuwerink@gmail.com','Jl. Raya Balikpapan','Rawamangun','1699086540','PERAWAT'),('249602','Modestine','Djurevic','1975-06-19','P','084096349433','modestine.djurevic@gmail.com','Jl. Raya Tarakan','Bangka','1115948381','PERAWAT'),('252087','Jacquenette','Haberjam','1976-11-02','P','088895122967','jacquenette.haberjam@gmail.com','Jl. Raya Mojokerto','Tomang','1780975080','DOKTER'),('252357','Dorey','Yakebovich','1997-11-01','L','087456986987','dorey.yakebovich@gmail.com','Jl. Raya Pangkal Pinang','Palmerah','1525533855','DOKTER'),('253611','Coreen','Commucci','1951-07-27','P','085202945005','coreen.commucci@gmail.com','Jl. Raya Malang','Jatinegara','1119632303','PERAWAT'),('254028','Tressa','Vairow','2021-01-30','P','087774532138','tressa.vairow@gmail.com','Jl. Raya Cirebon','Kedoya Selatan','1696817917','PERAWAT'),('255609','Ettore','Witherington','1949-07-01','L','088125488800','ettore.witherington@gmail.com','Jl. Raya Malang','Tebet Timur','1504418638','PERAWAT'),('256347','Ronnie','Nisen','1952-02-24','L','087767473651','ronnie.nisen@gmail.com','Jl. Raya Tanjung Pinang','Pondok Labu','1218663902','DOKTER'),('259028','Giorgia','Foucher','2002-01-05','L','088958236942','giorgia.foucher@gmail.com','Jl. Raya Solo','Pinangsia','1987992104','PERAWAT'),('259086','Haley','Glowacha','2016-07-27','L','087839888315','haley.glowacha@gmail.com','Jl. Hasyim Ashari','Kebayoran Lama Utara','1835161751','PERAWAT'),('259152','Finlay','Lambshine','1956-02-16','L','081418965235','finlay.lambshine@gmail.com','Jl. Raden Saleh','Kota Bambu Utara','1103538850','PERAWAT'),('260301','Lind','Di Bartolommeo','1946-07-25','P','082339429941','lind.di bartolommeo@gmail.com','Jl. Raya Sofifi','Meruya Utara','1744717938','DOKTER'),('260385','La verne','Arnowitz','1994-09-25','P','083415843097','la verne.arnowitz@gmail.com','Jl. Gajah Mada','Srengseng Sawah','1822695307','PERAWAT'),('262455','Tamma','Marikhin','2012-03-09','L','082823813512','tamma.marikhin@gmail.com','Jl. Raya Sentani','Kuningan Barat','1119244601','PERAWAT'),('263020','Wenda','Gristock','1961-04-09','L','084939451726','wenda.gristock@gmail.com','Jl. Raya Palembang','Mampang Prapatan','1090605708','DOKTER'),('263083','Editha','Sandbach','1994-04-12','P','083876335864','editha.sandbach@gmail.com','Jl. Raya Pangkal Pinang','Johar Baru','1121864463','PERAWAT'),('263809','Madelaine','Mertel','1972-01-18','P','083882958482','madelaine.mertel@gmail.com','Jl. Raya Solo','Tanjung Priok','1816785476','DOKTER'),('263979','Tore','Joannet','1989-12-10','L','084456383885','tore.joannet@gmail.com','Jl. Raya Pangkal Pinang','Pejaten Timur','1925050227','PERAWAT'),('268462','Elsey','Borley','1963-11-09','P','083563231950','elsey.borley@gmail.com','Jl. Raya Kendari','Bendungan Hilir','1289745345','PERAWAT'),('269336','Eadie','Learmond','1958-08-07','P','083513841017','eadie.learmond@gmail.com','Jl. Raya Mamuju','Taman Sari','1181775664','PERAWAT'),('270970','Antoni','Ladyman','1971-04-08','P','083808269038','antoni.ladyman@gmail.com','Jl. Raya Jambi','Wijaya Kusuma','1363750926','PERAWAT'),('272144','Bamby','Halfhyde','1949-12-03','L','085253139254','bamby.halfhyde@gmail.com','Jl. Raya Kendari','Pademangan','1302436891','DOKTER'),('273160','Fielding','Bertrand','1993-02-05','L','089258308835','fielding.bertrand@gmail.com','Jl. Raya Depok','Bintaro','1105817949','DOKTER'),('273510','Buck','Kleingrub','1998-11-13','P','087995840597','buck.kleingrub@gmail.com','Jl. Raya Ternate','Palmerah','1807244852','PERAWAT'),('274421','Kaine','Klassman','1982-05-19','P','086083901802','kaine.klassman@gmail.com','Jl. Raya Makassar','Kembangan Utara','1741149286','DOKTER'),('276188','Jammie','Pritchitt','1997-09-17','P','081801998119','jammie.pritchitt@gmail.com','Jl. Raya Manado','Manggarai Timur','1008698318','DOKTER'),('278444','Batholomew','Veck','2019-11-26','L','089505362266','batholomew.veck@gmail.com','Jl. Raya Bengkulu','Tebet Barat','1136545734','PERAWAT'),('280959','Gert','Wellsman','2011-09-02','P','084698408897','gert.wellsman@gmail.com','Jl. Raya Gorontalo','Kebon Jeruk','1587197378','PERAWAT'),('282305','Moise','Simioli','2011-04-18','L','083532190665','moise.simioli@gmail.com','Jl. Raya Maumere','Kalibata','1448603858','PERAWAT'),('284406','Shayla','Cuesta','1953-06-05','P','082987981751','shayla.cuesta@gmail.com','Jl. Sisingamangaraja','Pancoran','1360811685','PERAWAT'),('284670','Willow','Bethel','1948-11-08','L','082648507415','willow.bethel@gmail.com','Jl. Raya Bima','Lenteng Agung','1667390005','DOKTER'),('287043','Ethel','Benoix','2022-10-03','L','084993167722','ethel.benoix@gmail.com','Jl. Raya Pekanbaru','Kebayoran Lama Utara','1534221812','PERAWAT'),('287077','Colet','Harby','1997-09-08','P','082367305107','colet.harby@gmail.com','Jl. Raya Banda Aceh','Ulujami','1005799957','DOKTER'),('287090','Christyna','Tomadoni','2013-12-24','L','086357383366','christyna.tomadoni@gmail.com','Jl. Raya Gorontalo','Rawamangun','1606906919','DOKTER'),('288581','Meghann','Polly','1954-11-04','L','086666416275','meghann.polly@gmail.com','Jl. Raya Praya','Bangka Barat','1246805022','DOKTER'),('290920','Roberta','McGucken','2011-11-15','L','081639621891','roberta.mcgucken@gmail.com','Jl. Sisingamangaraja','Pademangan','1638059507','DOKTER'),('292385','Nicoline','Wintringham','2010-05-26','P','084072849319','nicoline.wintringham@gmail.com','Jl. Raya Cikampek','Pancoran','1635819255','PERAWAT'),('293112','Fin','Chicotti','1978-01-15','P','086523458802','fin.chicotti@gmail.com','Jl. Raya Pasuruan','Manggarai Selatan','1728446729','PERAWAT'),('293332','Darb','Purdon','2013-01-28','L','081883377520','darb.purdon@gmail.com','Jl. Raya Denpasar','Gandaria Selatan','1137343667','DOKTER'),('293916','Windham','Van Der Straaten','2022-05-11','L','087042121922','windham.van der straaten@gmail.com','Jl. Pahlawan','Kelapa Gading','1083777660','PERAWAT'),('294840','Maxwell','Beresford','2003-11-16','L','089246503203','maxwell.beresford@gmail.com','Jl. Raya Solo','Tebet Barat','1616650911','PERAWAT'),('295123','Brewer','Aleksashin','1986-07-04','P','085361656774','brewer.aleksashin@gmail.com','Jl. Raya Merauke','Tebet','1968422868','DOKTER'),('295183','Salvidor','Antunes','1973-02-17','L','087646502511','salvidor.antunes@gmail.com','Jl. Sudirman','Kedoya Utara','1841514922','PERAWAT'),('295413','Vannie','Haylett','1959-03-16','L','084868870184','vannie.haylett@gmail.com','Jl. Raya Ende','Taman Sari','1950239404','DOKTER'),('296890','Marlo','Jolliss','2011-03-09','P','081264421856','marlo.jolliss@gmail.com','Jl. Raya Gilimanuk','Petogogan','1203073046','DOKTER'),('298376','Sherie','Madrell','1976-07-02','P','086649237110','sherie.madrell@gmail.com','Jl. Raya Serpong','Kota Bambu Selatan','1516555017','DOKTER'),('299975','Walden','Di Frisco','1999-01-23','L','089117359489','walden.di frisco@gmail.com','Jl. Raya Serpong','Kedoya Baru','1590596617','DOKTER');
/*!40000 ALTER TABLE `tenagamedis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `jumlah_pasien_per_bulan`
--

/*!50001 DROP TABLE IF EXISTS `jumlah_pasien_per_bulan`*/;
/*!50001 DROP VIEW IF EXISTS `jumlah_pasien_per_bulan`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `jumlah_pasien_per_bulan` AS select date_format(`rekammedis`.`tanggalMasuk`,'%Y-%m') AS `bulan`,`ruangrawat`.`kelas` AS `kelas`,count(0) AS `jumlah_pasien` from (`rekammedis` join `ruangrawat` on(`rekammedis`.`idRuang` = `ruangrawat`.`idRuang`)) group by date_format(`rekammedis`.`tanggalMasuk`,'%Y-%m'),`ruangrawat`.`kelas` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-05 22:36:56
