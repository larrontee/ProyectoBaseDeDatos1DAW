-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: spotify
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `albun`
--

DROP TABLE IF EXISTS `albun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `albun` (
  `idalbun` int NOT NULL,
  `nombre` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `idArtista` int NOT NULL,
  PRIMARY KEY (`idalbun`),
  KEY `fk_Álbun_Artista1_idx` (`idArtista`),
  CONSTRAINT `fk_Álbun_Artista1` FOREIGN KEY (`idArtista`) REFERENCES `artista` (`idArtista`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `albun`
--

LOCK TABLES `albun` WRITE;
/*!40000 ALTER TABLE `albun` DISABLE KEYS */;
INSERT INTO `albun` VALUES (1,'Inéditos',3),(2,'Wopster',5),(3,'El Madrileño',1),(4,'Desde el Fin del Mundo',8),(5,'KNOWLEDGE',10),(6,'Hyper-Core',11),(7,'Free TC (Deluxe Edition)',13),(8,'La Oscuridad',15),(9,'Maravilla',18),(10,'Lazos y Nudos',19),(11,'Olvídate',20),(12,'En otra historia',22),(13,'Hijos de la ruina, vol. 3',23),(14,'El Dorado',24),(15,'No le Bajes',26),(16,'Una Niña Inútil',27),(17,'Tot ho farem',30),(18,'Hammu Nation',31),(19,'Oro Negro',33),(20,'Lo Que Somos',36),(21,'Heavy Roots Vol.1',37),(22,'Dolores (Remix)',39),(23,'Marea Baja',41),(24,'Sangre',42),(25,':) EP',43),(26,'Justice',46),(27,'Rodeos',48),(28,'Los Legendarios 001',49),(29,'Future Nostalgia',50),(30,'MONTERO (Call Me By Your Name)',52),(31,'Mil Días',53),(32,'Se Va Pero Vuelve',55),(33,'Ayer (feat. Lía Kali)',56),(34,'Moonlight922',65),(35,'The Eminem Show',66),(36,'Un Tipo Cualquiera',67),(37,'Carne Picá',68),(38,'Las 13 Técnicas Del Maestro',69),(39,'Bajo la Piel',70),(40,'Un Fajo Más',72),(41,'Red Dot',74),(42,'Me Llama Ami',77),(43,'Hong Kong',78),(44,'Ella No Es Tuya (Remix)',80),(45,'Te Acuerdas',82),(46,'Down Music',83),(47,'Nunca Sabrás Cuanto',87),(48,'Cuando Bebe',90),(49,'Astronaut In The Ocean',96),(50,'4Life',97),(51,'BENZ | I Know REMIX',99),(52,'Shoot For The Stars Aim For The Moon (Deluxe)',100),(53,'The Massacre',3),(54,'SWISH',5),(55,'Tyler Herro',7),(56,'HIGHEST IN THE ROOM',8),(57,'Shoot For The Stars Aim For The Moon',10),(58,'Laugh Now Cry Later (feat. Lil Durk)',11),(59,'Vasilon',13),(60,'VISIÓN TÚNEL',15),(61,'La Placita',18),(62,'Una Parte de Mí',19),(63,'Quédate',20),(64,'El Síndrome Anuel',22),(65,'\"5 A.M”',23),(66,'Cnv Vol. 30 (Kionstudio)',24),(67,'Fantasia Sexual',26),(68,'Alpha',27),(69,'LUNA',30),(70,'Lo Real',31),(71,'Cielo',33),(72,'BOCAPESTE',36),(73,'Hijo del Sol y la Luna (Veneno Crew)',37),(74,'GRIS',39),(75,'Amiga Mia',41),(76,'Yo Tengo Un Ángel',42),(77,'Hood Queen',43),(78,'X 100PRE',46),(79,'Ruina y Gloria',48),(80,'Ojalá',49),(81,'Flexin\'',50),(82,'Lejos',52),(83,'20 años',53),(84,'Between Heaven & Hell',55),(85,'Volver',56),(86,'Make It Bun Dem',65),(87,'Try It Out',66),(88,'Bangarang EP',67),(89,'Recess',68),(90,'Cute Tapes',69),(91,'Medicina',70),(92,'Minivan',72),(93,'Mala Mía',74),(94,'Desahogo (feat. Carla Morrison)',77),(95,'Más Negro Que Rojo',78),(96,'Moon',80),(97,'Siempre Parriba',82),(98,'Berlanga',83),(99,'PB.DB. The Mixtape',87),(100,'DÁKITI',90),(101,'HASTA SIEMPRE',96),(102,'Mariposas Negras',97),(103,'Problemas',99),(104,'Tú Me Dejaste De Querer',100),(105,'Blood (Remix)',3),(106,'La Luz',5),(107,'Oro Rosa',7),(108,'12 Arriba (Remix)',8),(109,'cómo te va?',10),(110,'Tu Pollo',11),(111,'Ramé',13),(112,'Paz Feelin\'s',15),(113,'Jaleo',18),(114,'GHOSTÉAME',19),(115,'Pensando en Llamarte',20),(116,'Pa\'l Coche',22),(117,'Maracucho Bueno Muere Chiquito',23),(118,'Calentón',24),(119,'Guaguancó',26),(120,'Dollah',27),(121,'One-X',30),(122,'Ganzúa',31),(123,'Plusmarca',33),(124,'Por Ti',36),(125,'Me Gusta (with Cardi B & Myke Towers)',37),(126,'BACK TO ROCKPORT',39),(127,'Llegará',41),(128,'En Tu Cuerpo',42),(129,'Pasa El Canutito',43),(130,'Recuerdos',46),(131,'Nuevo mundo (feat. Juancho Marqués)',48),(132,'Atrevido',49),(133,'Loca',50),(134,'B.U.H.O',52),(135,'Ayer Me Llamó Mi Ex (feat. Lenny Santos)',53),(136,'Legends Never Die',55),(137,'Dime Que Sí',56),(138,'Te Lo Juro',65),(139,'Platonicos',66),(140,'3:45',67),(141,'Vuela',68),(142,'La Tour Liffee',69),(143,'YHLQMDLG',70),(144,'Me Noto Distinto',72),(145,'Todo Va a Arder',74),(146,'Detalles',77),(147,'Patata',78),(148,'Realidad',80),(149,'Dicen',82),(150,'Falta',83),(151,'Tarde',87),(152,'Colegas',90),(153,'H.I.E.L.O.',96),(154,'3 de abril',97),(155,'M.D.L.R 2.0',99),(156,'Easy Money Baby',100),(157,'FERXXO (VOL 1: M.O.R)',3),(158,'Colores',5),(159,'Birds In The Trap Sing McKnight',7),(160,'Dead Or Alive',8),(161,'Siempre',10),(162,'Independiente',11),(163,'Sed y Hambre',13),(164,'Ratones Coloraos',15),(165,'De Nadie',18),(166,'Los Pibes',19),(167,'Y a mi qué?',20),(168,'La Primavera del Invierno',22),(169,'Sigues Con El',23),(170,'Qué Dice la Juventud?',24),(171,'Generación Perdida',26),(172,'Aleluya',27),(173,'Dime Cuánto',30),(174,'Onward',31),(175,'Hazme Five',33),(176,'Lobo',36),(177,'The Rising Tied',37),(178,'Los Veteranos',39),(179,'El Patrón',41),(180,'Que Calor',42),(181,'Don\'t Start Now',43),(182,'Cuando Quieras',46),(183,'No Soy Tuyo',48),(184,'El Techo de Mi Habitación',49),(185,'Money Dreams',50),(186,'Berlín',52),(187,'London',53),(188,'Belfast',55),(189,'El Lado Oscuro De Gandhi',56),(190,'Pa\' Siempre',65),(191,'Cheese Jardala',66),(192,'Salud',67),(193,'Let’s Fall In Love For The Night',68),(194,'Invierno 2',69),(195,'Presidente',70),(196,'La Cabra',72),(197,'Colocaos x Madrid',74),(198,'Blue Sundays',77),(199,'Clean',78),(200,'Puff Daddy',80),(201,'Music To Be Murdered By',82),(202,'Paz Feelin´s',83),(203,'The Music of Kingdom',87),(204,'Aeternum',90),(205,'Mvp',96),(206,'Nocturnal',97),(207,'Digo Diego Style',99),(208,'Green Or White (La Vendicion Remix)',100),(209,'Clásico',3),(210,'Tras la Corteza',5),(211,'Etapas raras',7),(212,'Lista de Invitados',8),(213,'Al Sur de la Luna',10),(214,'El Real One Love',11),(215,'Mereció La Pena',13),(216,'Rumors',15),(217,'No Encajes',18),(218,'Barco a la deriva',19),(219,'Donde Duele Inspira',20),(220,'Botella para dos',22),(221,'Pedigrí',23),(222,'Survival',24),(223,'Lebron (Remix)',26),(224,'Inéditos 2',27),(225,'Veni, Vidi, Vici',30),(226,'Black Label',31),(227,'Hazme Five (Remix)',33),(228,'Pena',36),(229,'Miedos',37),(230,'Llegó el Patrón',39),(231,'Si Quiere Estar Conmigo',41),(232,'Rounders',42),(233,'Al Lado',43),(234,'Suave',46),(235,'Mar de Males',48),(236,'Un Perro Andaluz',49),(237,'Modo Vacilon',50),(238,'Don\'t Know',52),(239,'Vegeta',53),(240,'Veneno',55),(241,'Nada Que Añadir',56),(242,'X.O.X.O. (feat. Rvfv & Chiki El De La Vaina) [Remix]',65),(243,'Sota, Caballo y Yo',66),(244,'Si Tu Perro',67),(245,'Déjame volar',68),(246,'Ahora O Nunca',69),(247,'Rookie Luck',70),(248,'24H',72),(249,'Cuéntame Otra',74),(250,'Eclipse',77),(251,'No Te Veo',78),(252,'Remixes y Regalos (Edición Spotify)',80),(253,'Entre las Luces',82),(254,'Si Me Gano Un Grammy',83),(255,'Nébula',87),(256,'Azul/Rojo',90),(257,'Still Rapping (feat. Steve Lean)',96),(258,'She Don\'t Give a Fo',97),(259,'Desequilibrios',99),(260,'Robotcop',100),(261,'Easy',3),(262,'Benicàssim',5),(263,'Calle Y Fe',7),(264,'Bendición',8),(265,'Libra',10),(266,'Wild Ones',11),(267,'Celébrate',13),(268,'Pronto Llegará',15),(269,'Peaky Blinders',18),(270,'Dispuestos a morir',19),(271,'Tell Me',20),(272,'Balas Perdidas',22),(273,'YYANOSÉ',23),(274,'Tanga de Seda',24),(275,'Flores de Papel',26),(276,'Esto Es Así',27),(277,'Cambios',30),(278,'Amor a la Calle (Unplugged)',31),(279,'Ojitos Aguaos',33),(280,'Ganas',36),(281,'Invictus',37),(282,'Kanima',39),(283,'Mi Nena',41),(284,'Pluit Ignem',42),(285,'Cae la Noche (Remix)',43),(286,'Fenix',46),(287,'M.I.A',48),(288,'Callaita',49),(289,'Moonchies',50),(290,'Black Roses',52),(291,'Real Hasta la Muerte',53),(292,'Brindis',55),(293,'Prendío',56),(294,'Comunicado de prensa',65),(295,'Mis Triunfos',66),(296,'Boys Don\'t Cry',67),(297,'Ready to Fight',68),(298,'Someone To Stay',69),(299,'I Know',70),(300,'La Alianza',72),(301,'En Alma y Hueso (Versión Comentada)',74),(302,'The Score (Expanded Edition)',77),(303,'Plan B',78),(304,'Round 1',80),(305,'Yo',82),(306,'Ya Ni Me Quemo',83),(307,'Kaos Nomada',87),(308,'La Lengua Chivata',90),(309,'Flamenco es... Camaron',96),(310,'Lágrimas desordenadas',97),(311,'Tocado y hundido',99),(312,'Que El Cielo Espere Sentao..',100),(313,'16h de Plaza, Vol. 3',3),(314,'Gato de callejón',5),(315,'Gan-Ga',7),(316,'Mar de cristal',8),(317,'Maltratándome',10),(318,'Insano Juicio',11),(319,'Trueno: Bzrp Freestyle Sessions, Vol. 6',13),(320,'Sevillan History H',15),(321,'Malquerer',18),(322,'No Hay Rencor',19),(323,'Viejos Sabios',20),(324,'Que Me Baile',22),(325,'Velitas',23),(326,'Mi Legado',24),(327,'Temor 2014',26),(328,'Positronics Vibes, Vol. 2',27),(329,'Dora la Exploradora',30),(330,'Calavera no chilla',31),(331,'Charloteo',33),(332,'Bubblegums',36),(333,'Replay',37),(334,'Come Over When You\'re Sober, Pt. 2',39),(335,'Otro Trago (Remix)',41),(336,'China',42),(337,'Con un porrito en la mano',43),(338,'Rómpeme',46),(339,'Valknut',48),(340,'Climaxxx',49),(341,'Old Town Road',50),(342,'Viernes de Perreo',52),(343,'X',53),(344,'Fénix',55),(345,'La Temperatura (feat. Eli Palacios)',56),(346,'Esquizofrenia',65),(347,'Atlantis',66),(348,'Yipiyou',67),(349,'Vacilando',68),(350,'Carnaza',69),(351,'Soltera (Remix)',70),(352,'Vértigo',72),(353,'Por Partes',74),(354,'Homerun',77),(355,'Kamikaze',78),(356,'The Marshall Mathers LP2 (Deluxe)',80),(357,'King Of Kings',82),(358,'Dile/Intocable',83),(359,'Zapatillas',87),(360,'The Marshall Mathers LP - Tour Edition (International Version)',90),(361,'Curtain Call (Deluxe)',96),(362,'Baila Baila Baila',97),(363,'Aura',99),(364,'Alex Gargolas Greatest Hits',100),(365,'Odisea',3),(366,'Necesitamos Tiempo',5),(367,'Judas',7),(368,'Clique',8),(369,'Hustlers',10),(370,'Essentia Vol 3',11),(371,'Dime Dónde Voy',13),(372,'Habla Mi Mirada',15),(373,'Las Mejores Canciones del Pop Rock Romántico en Español. Lo Mejor de la Música Romántica de los Años 90\'s y 2000\'s',18),(374,'La Voz de la Gente Vuelve a Ser',19),(375,'Bellakeo',20),(376,'Atemporal',22),(377,'Me llama',23),(378,'Ansiedad y recuerdos (feat. Prok)',24),(379,'Mocca',26),(380,'Equilibrio',27),(381,'No More',30),(382,'Fuego',31),(383,'Arte y Paciencia',33),(384,'Bubalu',36),(385,'Pa Mí (Remix)',37),(386,'Si Se Da',39),(387,'Forever Alone',41),(388,'Quien Dijo Amigos',42),(389,'Un Romantico en el Ghetto',43),(390,'Lebron',46),(391,'Parabellum',48),(392,'A Flor De Piel',49),(393,'Loyalty II',50),(394,'Exigencias',52),(395,'Three Days Grace (Deluxe Version)',53),(396,'Quién Eres Tú',55),(397,'Streetshark',56),(398,'Antes de Morirme (feat. Rosalía)',65),(399,'Pa\' Llamar Tu Atención (feat. MC Bin Laden)',66),(400,'A Mí',67),(401,'La Dura Vida del Joven Rapero',68),(402,'Quiero Gritar',69),(403,'Entertainer',70),(404,'Hipi Hapa Vacilanduki',72),(405,'Bambino',74),(406,'Híbrido el despertar',77),(407,'Meid In Espein (Vol. 2)',78),(408,'Stand By',80),(409,'Living Dread',82),(410,'Stony Hill',83),(411,'Bombay',87),(412,'I.R.A.(Instinto, Razon, Autobiografia)',90),(413,'Doce Lunas',96),(414,'Anthology: The Best Of Marvin Gaye',97),(415,'Las Calles de Oro',99),(416,'#RapSinCorte, Vol. 3',100),(417,'#RapSinCorte, Vol. 2',3),(418,'Rojo y Negro',5),(419,'Contradicziones',7),(420,'The Last Don II',8),(421,'The Reunion',10),(422,'Adan y Eva',11),(423,'Fantastic Magic',13),(424,'Versus',15),(425,'El principio del fin',18),(426,'Fronteamos Porque Podemos (feat. Daddy Yankee, Yandel & Nengo Flow)',19),(427,'Arabe (feat. N-Fasis, Messiah, Tali, Kapuchino & Kiubbah Malon)',20),(428,'God\'s Plan',22),(429,'Cuando No Estoy Yo',23),(430,'Lately',24),(431,'Esto es rojo y negro',26),(432,'Graduation',27),(433,'Human',30),(434,'Monstercat 012 - Aftermath',31),(435,'In the Name of Love',33),(436,'Professional Rapper',36),(437,'Bellyache (Marian Hill Remix)',37),(438,'Bellyache',39),(439,'Taste (feat. Offset)',41),(440,'Cuando Te Besé',42),(441,'GEMINI',43),(442,'The Heist',46),(443,'Grande',48),(444,'Prende y Pasa',49),(445,'Movements - Single',50),(446,'Cicatrices',52),(447,'Muerte',53),(448,'Luciffer',55),(449,'Génesis',56),(450,'Rock&Roll',65),(451,'Jamming Sin Fronteras',66),(452,'Alterando la Conciencia',67),(453,'Tempted',68),(454,'1942 (feat. Yo Gotti & YBN Nahmir)',69),(455,'X Anniversarivm',70),(456,'Modo Turbio',72),(457,'Entre Poetas y Presos',74),(458,'Bien Duro',77),(459,'Cara y cruz',78),(460,'Malamanera',80),(461,'Viridarquia',82),(462,'Avida Dollars',83),(463,'Persiguiéndonos',87),(464,'Flakk Daniel\'s Lp',90),(465,'Recopilatorio de Temas Inéditos',96),(466,'?',97),(467,'Let\'s Get It Started',99),(468,'Legend',100),(469,'No Gyals',3),(470,'Torre De Babel',5),(471,'B.U.H.O (feat. Duki & Klave)',7),(472,'No ME Llores',8),(473,'Silencio a Gritos',10),(474,'The Break Up',11),(475,'Lil GZ 1995',13),(476,'Llorando en la Limo (feat. Alizzz)',15),(477,'Trastorno Bipolar',18),(478,'Te Amo',19),(479,'Viejo Marihuano',20),(480,'Dragon Ball Rap Super',22),(481,'King Flakk',23),(482,'The Water (S)',24),(483,'Come Over When You\'re Sober, Pt. 1',26),(484,'The Giant',27),(485,'Igot',30),(486,'Innadiflames',31),(487,'Sin alas',33),(488,'Mi mitad',36),(489,'Redención (Versión Exclusiva Spotify)',37),(490,'Tripl3 Tempo #En Forma 3',39),(491,'Trap Mal',41),(492,'Uncovered',42),(493,'El Final de los Tiempos',43),(494,'Presunto',46),(495,'Russian Roulette',48),(496,'Directo en el Cuartito de la Lavadora',49),(497,'Mentiras',50),(498,'En Boca De Tantos (eMaxi)',52),(499,'Origami',53),(500,'Diferentes planos',55),(501,'Pisando cristales',56),(502,'Amen',65),(503,'Si Te Sentis Sola',66),(504,'Condenado Para el Millon',67),(505,'Lobo Negro 2',68),(506,'Lobo Negro',69),(507,'7 Vidas',70),(508,'Vuelve',72),(509,'Dime Que Me Amas',74),(510,'Sin Salida',77),(511,'Afrohard',78),(512,'Sin Miedo a Vivir (Extended Version)',80),(513,'El Don de Escuchar',82),(514,'Callejero',83),(515,'Tetsuo',87),(516,'Ídolo',90),(517,'FRIENDS',96),(518,'Duro y Suave',97),(519,'Flowesia',99),(520,'Conócete',100),(521,'Ojalá nos perdonen',3),(522,'Relax',5),(523,'Susurro',7),(524,'Quise',8),(525,'Anatomía del sentimiento',10),(526,'Desde Tu Adiós',11),(527,'Camino, Fuego Y Libertad',13),(528,'Prometo Edit',15),(529,'La Amalgama',18),(530,'PLANCHI',19),(531,'That\'s The Spirit (Track by Track Commentary)',20),(532,'2004 - 2013',22),(533,'Postureo',23),(534,'deadroses',24),(535,'Algo Ha Cambiado',26),(536,'Extrayendo del Extracto',27),(537,'Ikki Is Back',30),(538,'Reset',31),(539,'Antónimo',33),(540,'Diosa de mi corazón pagano',36),(541,'Corazón pagano',37),(542,'No Me Canso de Ti',39),(543,'Visceral',41),(544,'I Don\'t Give A Fuck',42),(545,'Por Todo',43),(546,'Curtain Call: The Hits (Deluxe Edition)',46),(547,'Hybrid Theory (Bonus Edition)',48),(548,'Patato',49),(549,'Onirikone',50),(550,'Biribibae',52),(551,'Serendipia',53),(552,'Live Band EP',55),(553,'Curso Básico de Poesía',56),(554,'100% No Modern Talking',65),(555,'Relax (Bizarrap Remix)',66),(556,'995',67),(557,'Magma 91',68),(558,'Extremely Flammable',69),(559,'Next One',70),(560,'El misterioso caso de Efecto Pasillo',72),(561,'Solar',74),(562,'Kaos Nómada, Vol. 1',77),(563,'Píldora #1',78),(564,'The Sky Is A Neighborhood',80),(565,'El Círculo (Versión Exclusiva de Spotify)',82),(566,'Píldora IV',83),(567,'Prometo',87),(568,'The Twilight Saga: Breaking Dawn - Part 1 (Original Motion Picture Soundtrack)',90),(569,'Espejo',96),(570,'She Don\'t Give a FO (feat. Khea)',97),(571,'Melancolía',99),(572,'Imborrable',100),(573,'Mi Mala',3),(574,'El hábito no hace al monje',5),(575,'No soy uno más',7),(576,'Es Mejor',8),(577,'Por Qué',10),(578,'Dinamita',11),(579,'Joga O Bum Bum Tam Tam',13),(580,'Tanto Por Ti',15),(581,'Nueva Generación',18),(582,'Party Animal',19),(583,'First Steps',20),(584,'Bartleby & Co.',22),(585,'La Estanquera de Saigón',23),(586,'Filosofía',24),(587,'idfc (Tarro Remix)',26),(588,'I Feel Like I\'m Drowning',27),(589,'Angels',30),(590,'17',31),(591,'Estaba Escrito',33),(592,'Calma',36),(593,'Nuestra última canción',37),(594,'Dusk Till Dawn (Radio Edit)',39),(595,'Déjame Hablar Contigo',41),(596,'Afrorue, Pt. 1',42),(597,'Sube Sube Sube',43),(598,'Solo se trata de prosperar (2017 Remake)',46),(599,'Dónde Estás',48),(600,'Arriba el Telon',49),(601,'Más de tí',50),(602,'Good Girls Don\'t Lie',52),(603,'Maleza',53),(604,'Old Times in Gotham',55),(605,'Héroe',56),(606,'Si uno no se rinde',65),(607,'drugs',66),(608,'Welcome To The Masquerade (Fan Edition)',67),(609,'Dos Orillas',68),(610,'Quítate las Gafas',69),(611,'All Star Smash Hits',70),(612,'El paso del tiempo',72),(613,'Numb / Encore: MTV Ultimate Mash-Ups Presents Collision Course',74),(614,'Nevermind (Remastered)',77),(615,'Finisterra',78),(616,'I Have Questions',80),(617,'No Sleep (feat. Eff Raps.)',82),(618,'Committed to the Crime',83),(619,'Stoney',87),(620,'Reproches',90),(621,'HUMBLE.',96),(622,'The End Is Where We Begin',97),(623,'Más de ti EP',99),(624,'La Real Música Explícita',100),(625,'Reggae Ambassador',3),(626,'Girlfriend',5),(627,'Maravilloso error',7),(628,'Berzerk',8),(629,'Mira Pa Otro Lao',10),(630,'No Cumples',11),(631,'Sempiternal (Expanded Edition)',13),(632,'Vita',15),(633,'Crying in the Club',18),(634,'En Alma y Hueso',19),(635,'Tenedor y Cuchillo',20),(636,'Algo Ha Cambiado - Versión Comentada',22),(637,'Valhalla',23),(638,'Cae la noche',24),(639,'A/B',26),(640,'El monstruo del armario',27),(641,'Aguacero',30),(642,'Without Me (International Version)',31),(643,'Corazón en llamas',33),(644,'Química',36),(645,'Destino o Casualidad',37),(646,'Alas Rotas',39),(647,'Glory',41),(648,'Donde duele, inspira (2007-2011)',42),(649,'More Life',43),(650,'Mala Mujer',46);
/*!40000 ALTER TABLE `albun` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artista`
--

DROP TABLE IF EXISTS `artista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artista` (
  `idArtista` int NOT NULL,
  `Seguidores` int DEFAULT NULL,
  PRIMARY KEY (`idArtista`),
  CONSTRAINT `fk_Artista_Usuario1` FOREIGN KEY (`idArtista`) REFERENCES `usuario` (`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artista`
--

LOCK TABLES `artista` WRITE;
/*!40000 ALTER TABLE `artista` DISABLE KEYS */;
INSERT INTO `artista` VALUES (1,847),(3,238),(5,309),(7,876),(8,304),(10,675),(11,749),(13,265),(15,493),(18,700),(19,309),(20,760),(22,595),(23,742),(24,774),(26,109),(27,609),(30,216),(31,403),(33,336),(36,99),(37,177),(39,833),(41,24),(42,166),(43,528),(46,773),(48,381),(49,903),(50,638),(52,655),(53,398),(55,69),(56,279),(65,625),(66,416),(67,445),(68,111),(69,789),(70,580),(72,484),(74,89),(77,805),(78,324),(80,503),(82,690),(83,395),(87,397),(90,985),(96,149),(97,655),(99,398),(100,69);
/*!40000 ALTER TABLE `artista` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bajaspremium`
--

DROP TABLE IF EXISTS `bajaspremium`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bajaspremium` (
  `idUsu` int NOT NULL,
  `fecha_baja` date DEFAULT NULL,
  PRIMARY KEY (`idUsu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bajaspremium`
--

LOCK TABLES `bajaspremium` WRITE;
/*!40000 ALTER TABLE `bajaspremium` DISABLE KEYS */;
INSERT INTO `bajaspremium` VALUES (2,'2021-06-14'),(40,'2021-06-14');
/*!40000 ALTER TABLE `bajaspremium` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `canción`
--

DROP TABLE IF EXISTS `canción`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `canción` (
  `Nombre` varchar(100) NOT NULL,
  `genero` varchar(45) DEFAULT NULL,
  `idAlbum` int NOT NULL,
  PRIMARY KEY (`Nombre`,`idAlbum`),
  KEY `fk_Canción_Álbun1_idx` (`idAlbum`),
  CONSTRAINT `fk_Canción_Álbun1` FOREIGN KEY (`idAlbum`) REFERENCES `albun` (`idalbun`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `canción`
--

LOCK TABLES `canción` WRITE;
/*!40000 ALTER TABLE `canción` DISABLE KEYS */;
INSERT INTO `canción` VALUES ('\"5 A.M”','rap',83),('#RapSinCorte XXII','pop',525),('#RapSinCorte XXIII','pop',524),('$ave Dat Money (feat. Fetty Wap & Rich Homie Quan)','opera',581),('1000 leguas','trap',66),('115 clavaos','opera',618),('15 Días en Agosto','trap',82),('1942 (feat. Yo Gotti & YBN Nahmir)','opera',602),('20 años','rap',103),('2000 Clavos','trap',65),('2000 Clavos','jass',402),('24','opera',626),('24H','jass',337),('25/8','jass',247),('3 de abril','rap',183),('3:45','rap',168),('4Life','rap',68),('60 Veces por Minuto','trap',92),('7 Vidas','opera',629),('922 & Heartbreak','rap',146),('922 & Heartbreak - Remix','jass',221),('95 Puñaladas','opera',548),('<3','jass',243),('<3am','rap',110),('A Escondidas','jass',383),('A Flor De Piel','pop',496),('A Fuego','trap',87),('A Medias Verdades','rap',12),('A Mí','pop',504),('A Mi Manera','jass',297),('A Mi Yo de Ayer','opera',40),('A Thousand Years','trap',80),('A veces se me pasa, a veces paso','opera',613),('Abecedario (Outro)','opera',644),('Adan y Eva','opera',560),('Aeternum','jass',286),('Afrohard','pop',537),('Afrohard','opera',640),('Afrorue, Pt. 1','trap',23),('Agua','opera',625),('Aguacero','trap',86),('Ahora O Nunca','jass',333),('Ain\'t No Mountain High Enough - Mono','pop',522),('Al Lado','jass',320),('Alas Rotas','trap',91),('Aleluya','jass',217),('Algo Ha Cambiado','opera',13),('All Star','trap',41),('Alone','jass',432),('Alpha','rap',86),('Amalgama (feat. Leonor Watling)','opera',21),('Amarillo','rap',187),('Ambitious','trap',47),('Amiga Mia','rap',93),('Amigos','opera',544),('Amor a la Calle (Unplugged)','jass',370),('Amor De Gangster (feat. Shabu One Shant)','rap',47),('Amor de Mantis','rap',133),('Amuleto','jass',354),('Anatomía del sentimiento','opera',634),('Angels','trap',13),('Animal I Have Become','rap',147),('Años Muertos','opera',639),('Ansiedad y recuerdos (feat. Prok)','pop',481),('Antes de Morirme (feat. Rosalía)','pop',502),('Arabe (feat. n-Fasis, Messiah, Tali, Kapuchino & Kiubbah Malon)','opera',572),('Arte y Paciencia','pop',486),('Así Son','pop',513),('Astronaut In The Ocean','rap',67),('Atardecer','opera',53),('Atemporal','pop',479),('Atlantis','jass',447),('Atrapado Aquí','opera',569),('Ausente','trap',7),('Avalanche','opera',4),('Ay, si juzgásemos...','opera',617),('Ayer (feat. Lía Kali)','rap',41),('Ayer Me Llamó Mi Ex (feat. Lenny Santos)','rap',162),('B.U.H.O','rap',161),('B.U.H.O (feat. Duki & Klave)','opera',637),('Baila Baila Baila','pop',465),('Baile de la Lluvia (feat. Take A Daytrip)','opera',625),('Balaperdida','rap',170),('Balas Perdidas','jass',363),('Bambino','pop',510),('Bañador y chancletas','opera',609),('Bang Bang','opera',628),('Bangarang (feat. Sirah)','rap',108),('Barco a la deriva','jass',303),('Barfly','trap',81),('Barras en la Cantera','rap',193),('Bartleby & Co.','trap',8),('Bartleby & Co.','opera',38),('Basureta (Tiempos Raros)','trap',77),('BEAST MODE','rap',78),('Belfast','jass',241),('Bellakeo','pop',478),('Belly Danza','opera',582),('bellyache','opera',584),('Bellyache - Marian Hill Remix','opera',583),('Bendición','jass',355),('Benicàssim','jass',353),('BENZ | I Know REMIX','rap',69),('Berlanga','rap',118),('Berlín','jass',239),('Berzerk','trap',67),('Berzerk','pop',462),('Besos','trap',98),('Bicho raro','opera',630),('Bien Duro','opera',607),('Big Dreams','rap',23),('Bilbo','jass',334),('Birra, Humo y Reflexiones','trap',64),('Birra, Humo y Reflexiones','pop',530),('Black Label','jass',313),('Black Label','pop',515),('Black Roses','jass',384),('Blanco y Negro','opera',42),('Blanco y Negro - Live Band Version','opera',47),('Blondapetit','opera',650),('Blood - Remix','rap',125),('BOCAPESTE','rap',90),('Bombay','pop',518),('Bonita Lana','rap',25),('Botella para dos','jass',306),('Brindemos','jass',385),('Brindis','jass',386),('Bubalu','pop',487),('Bubblegums','jass',428),('Buen Viaje','trap',58),('Buenas noches','opera',627),('Buenos Genes','opera',646),('Bumm!! (Yo Soy el Toterreno)','jass',229),('Cae la noche','trap',81),('Cae la Noche','pop',536),('Cae la Noche - Remix','jass',377),('Caja de Cristal','trap',63),('Caja de Cristal','pop',531),('Calavera no chilla','jass',426),('Calentón','rap',141),('Callaita','jass',382),('Callejero','opera',646),('Calma','trap',19),('Cambios','jass',205),('Cambios','jass',369),('Caminando por la vida','jass',407),('Caminaré','opera',594),('Can You Feel My Heart','trap',71),('Can\'t Hold Us - feat. Ray Dalton','opera',589),('Cara B','opera',646),('Carnaza','jass',451),('Carne Picá','rap',45),('Carta Abierta','opera',622),('Carta de Sinceridad','opera',586),('Castillo de Arena','rap',199),('Cayena','opera',553),('Celébrate','jass',358),('Charlando Con Odio','rap',29),('Charloteo','jass',427),('Cheese Jardala','jass',251),('Chicago','opera',545),('Chin Chin','rap',201),('China','jass',434),('Chizpa','jass',436),('Cicatrices','opera',639),('Cielo','rap',89),('Clásico','jass',292),('Clean','jass',267),('Cleanin\' Out My Closet','rap',134),('Clique','pop',471),('Cnv Vol. 30 - Kionstudio','rap',84),('Cobarde','jass',336),('Colegas','rap',181),('Colocaos x Madrid','jass',262),('Coloco Mi Sello','rap',56),('Comando Ketama','jass',356),('Come & Go (with Marshmello)','rap',163),('Comerte Entera','rap',3),('Como Messi','rap',202),('Como por Última Vez','opera',45),('cómo te va?','rap',129),('Comprendí','jass',290),('Comunicado de prensa','jass',388),('Con La Yerba En Los Talones (feat. Fyahbwoy)','rap',48),('Con un porrito en la mano','jass',435),('Condenado Para el Millon','opera',650),('Confesionario','jass',260),('Confite','rap',132),('Conócete','opera',629),('Constancia, Esfuerzo y Dedicación','trap',94),('Contando Lunares (feat. Cruz Cafuné)','pop',505),('Contra Todos','opera',52),('Contradicciones','opera',631),('Control','rap',127),('Controversia','trap',74),('Coquito la Pieza','rap',144),('Corazón en llamas','trap',88),('Corazón pagano','opera',23),('Corner Store (feat. Dave B & Travis Thompson)','opera',588),('Coronado','jass',345),('Cosa mía','opera',612),('Courtesy Call','trap',55),('Crank That (Soulja Boy)','opera',632),('Creador','opera',630),('Creencias Personales','jass',295),('Creí Que Lo Sabías (feat. Capaz)','rap',53),('Criminal','opera',554),('Cristales Rotos','jass',346),('Crowdfunding pa un BMW','pop',534),('Crying in the Club','trap',73),('Cuaderno','jass',440),('Cuando Bebe','rap',66),('Cuando No Estoy Yo','opera',574),('Cuando Quieras','jass',235),('Cuando sale el sol','trap',57),('Cuando Te Besé','opera',587),('Cuenta Conmigo','rap',140),('Cuéntame Otra','jass',338),('Cuentan - Live Band Version','opera',48),('DÁKITI','rap',120),('Dale','trap',88),('Dama de la guadaña','opera',619),('Dame Más','jass',301),('Damelo','opera',629),('Daribenhos','opera',44),('Darkness','jass',281),('De Nadie','jass',210),('De Una, Pt. 2: Ya No Puedo Más','opera',633),('Dead Or Alive','rap',190),('Déjame Hablar Contigo','trap',22),('Déjame volar','jass',332),('Desahogo (feat. Carla Morrison)','rap',114),('Desahucio','opera',608),('Desde Tu Adiós','opera',635),('Desenchufado/Unplugged','trap',71),('Desobey','pop',473),('Destino o Casualidad','trap',38),('Destino o Casualidad','trap',90),('Detalles','rap',175),('Dicen','rap',178),('Dicen de Mí','jass',323),('Diferente','jass',449),('Diferentes planos','opera',645),('Dile','pop',460),('Diles','opera',628),('Dime Cuánto','jass',203),('Dime Cuánto','jass',219),('Dime Dónde Voy','pop',474),('Dime Que Me Amas','opera',636),('Dime Que Sí','rap',164),('Dinamita','trap',96),('Dinero','opera',563),('Diosa','jass',249),('Diosa de mi corazón pagano','opera',22),('Dispuestos a morir','jass',361),('Do It','trap',61),('Do You Feel It?','trap',50),('Dollah','rap',145),('Dolores - Remix','rap',30),('Don\'t Know','jass',325),('Don\'t Start Now','jass',234),('Donde Duele Inspira','jass',305),('Donde Estan Las Gatas (feat. Nicky Jam)','pop',467),('Dónde Estás','trap',26),('Dora la Exploradora','jass',425),('Dos Copas de Más','pop',521),('Dragon Ball Rap','opera',643),('Dragon Ball Rap Super','opera',649),('drugs','trap',34),('Dulce Otoño','trap',43),('Duro y Suave','opera',624),('Dusk Till Dawn - Radio Edit','trap',21),('Easy','jass',352),('EBISU','rap',153),('Eco','jass',327),('El camino','rap',192),('El Final de los Tiempos','opera',637),('El hábito no hace al monje','trap',92),('El Himno De Los Grandes (feat. Sicario)','rap',50),('El monstruo del armario','trap',84),('El niño del recreo','opera',620),('El Ornitólogo','opera',632),('El paso del tiempo','trap',42),('El Patio','opera',636),('El Patrón','jass',232),('El principio del fin','opera',570),('El Run Run (with Rosario)','opera',603),('El Síndrome Anuel','rap',82),('El Síndrome de Peter Pan','trap',83),('El sol pegaba','opera',552),('El Techo de Mi Habitación','jass',237),('El último Dragón','rap',54),('El Vaso de Olvidar','rap',194),('Ella No Es Tuya - Remix','rap',62),('En Bajo Perfil','jass',253),('En Defensa Propia','pop',493),('En otra historia','rap',14),('En Privao','trap',62),('En Su Carro','jass',215),('En Tu Cuerpo','rap',155),('Enemie','jass',285),('Enero','opera',49),('Entertainer','pop',508),('Entre las Luces','rap',200),('Entre las Luces','jass',343),('Es Mejor','trap',94),('Escuela','opera',568),('Ese cosquilleo','opera',611),('Espantapájaros','opera',562),('Esquizofrenia','jass',446),('Esta To Feo','opera',643),('Esto Es Así','jass',368),('Esto es rojo y negro','opera',576),('Esto No Para','trap',35),('Esto No Para (Versión Soziedad Alkoholika)','jass',342),('Esto Si Encaja','trap',84),('Estorbando','opera',566),('Estrés Natura','jass',284),('Etapas raras','jass',294),('Etéreo','opera',643),('Everybody Dies In Their Nightmares','trap',16),('Exigencias','pop',498),('Experimento','trap',66),('Experimento','pop',528),('Extrayendo del Extracto','opera',10),('Extrayendo del Extracto','pop',538),('Fake Love','trap',96),('Falling Down - Bonus Track','jass',430),('Falta','rap',179),('Fantasia Sexual','rap',85),('Farewell','jass',274),('Felicidad','trap',89),('Fiel','rap',36),('Fiesta Pagana','trap',46),('Filosofía','trap',10),('Filosofía','opera',541),('Filosofía de Acera','jass',225),('Fire Hive','opera',50),('Flakk\'s Plan','opera',626),('Flame Skit','rap',197),('Flexin\'','rap',101),('Flight','opera',579),('Flores','jass',204),('Flores de Papel','jass',367),('Flow del 15','opera',649),('Fondo','jass',438),('Foreign','trap',31),('Forever Alone','pop',490),('FRIENDS','opera',623),('Fronteamos Porque Podemos (feat. Daddy Yankee, Yandel & Nengo Flow)','opera',571),('Fuck Love (feat. Trippie Redd)','trap',17),('Fuego','pop',485),('Fuera Llueve','opera',631),('Fuma Mi Ganja','jass',423),('Funky','trap',59),('Gan-Ga','jass',410),('Ganas','jass',372),('Ganja','opera',55),('Gato de callejón','jass',409),('Generación Perdida','jass',216),('Gente Tóxica (feat. Rozalén)','opera',30),('GHOSTÉAME','rap',136),('Girlfriend','trap',65),('Glory','trap',93),('Go Fuck Yourself','trap',4),('God\'s Plan','opera',573),('Godzilla (feat. Juice WRLD)','jass',288),('Golpe de Suerte','pop',520),('Good Girls Don\'t Lie','trap',29),('goosebumps','rap',189),('Got It On Me','rap',70),('Grande','opera',590),('Green Or White (La Vendicion Remix)','jass',291),('GRIS','rap',92),('Gris','jass',222),('Guaguancó','rap',142),('Guaya Guaya','opera',556),('Gusanos de seda','jass',448),('H.I.E.L.O.','rap',182),('Habla Mi Mirada - 2019','pop',475),('Hablan de Unión, Pt. 2','trap',60),('Haciéndonos los muertos','opera',15),('Hardcore','opera',626),('Hasta el Amanecer','jass',444),('HASTA SIEMPRE','rap',121),('Hay un Fuego','jass',213),('Hazme Five','jass',226),('Hazme Five (Remix)','jass',314),('He Venido a Verte','opera',56),('Hecha la Ley, Hecha la Trampa (feat. Porta & Isusko)','opera',597),('Hecha Pa\' Mi','rap',115),('Hereditario','pop',526),('HIGHEST IN THE ROOM','rap',74),('Hijo del Sol y la Luna (Veneno Crew)','rap',91),('Historias de Amor de Barrio','opera',43),('Hola, Buenos Días','jass',403),('Hong Kong','rap',61),('Hou hou hou','opera',616),('Human','opera',578),('HUMBLE.','trap',54),('Hustlers','pop',472),('Hyper-Core','rap',7),('I Don\'t Give a Fuck','opera',26),('I Feel Like I\'m Drowning','trap',12),('I Hate Everything About You','pop',499),('I Have Questions','trap',48),('I Know','trap',64),('I Know','jass',393),('I Promise','rap',21),('I Will (feat. KXNG Crooked, Royce Da 5\'9\" & Joell Ortiz)','jass',273),('Ibiza','pop',466),('idfc','opera',8),('idfc (Tarro Remix)','trap',11),('Ignorantes','jass',245),('Igot','opera',626),('Iguales','opera',647),('Imborrable','trap',90),('In the End','opera',34),('In the Name of Love','opera',580),('In Too Deep','jass',269),('Independiente','jass',207),('Innadiflames','trap',70),('Invictus','jass',373),('Invierno 2','jass',259),('Jaleo','rap',135),('Jamming Sin Fronteras','opera',599),('Jeremías 17-5','opera',595),('Jocelyn Flores','trap',14),('Joga O Bum Bum Tam Tam','trap',97),('Judas','pop',470),('Juliet','opera',639),('Just A Lil Bit','rap',71),('Kamikaze','opera',557),('Kanima','jass',374),('Killing Me Softly With His Song','jass',397),('King Flakk','opera',650),('La Alianza','jass',395),('La Amalgama','opera',2),('La Amalgama','opera',625),('La Bella Y La Bestia (Con Norykko)','opera',644),('La Cabra','jass',261),('La Culpa de Mi','opera',642),('La Curiosidad','rap',166),('La Del Sótano A','jass',424),('La Difícil','rap',172),('La Gente','trap',60),('La Huerta en el Tragaluz','opera',643),('La Llave','rap',198),('La Luz','rap',126),('La Muma','rap',117),('La Perla','rap',24),('La pieza del puzzle (feat. Ambkor)','jass',411),('La Placita','rap',79),('La placita','jass',394),('La Revolución Está en Ti','opera',640),('La Sangre Derramada','opera',633),('La Santa','jass',218),('La Temperatura (feat. Eli Palacios)','rap',119),('La Temperatura (feat. Eli Palacios)','jass',445),('La tormenta','opera',551),('Labios del guero','opera',547),('Lágrimas desordenadas','jass',405),('Las Calles de Oro','pop',523),('Lately','opera',575),('Laugh Now Cry Later (feat. Lil Durk)','rap',76),('Leaving Heaven (feat. Skylar Grey)','jass',280),('Lebron - Remix','jass',310),('Legend','opera',634),('Lejos','rap',102),('Lejos','jass',223),('Let\'s Fall in Love for the Night','jass',255),('Leve','opera',647),('Levitating (feat. DaBaby)','rap',37),('Libera el Estrés','opera',32),('LIL BIT','rap',152),('Lil GZ 1995','pop',540),('Lil GZ 1995','opera',641),('Lions','opera',628),('Little Engine','jass',283),('Living Dread','pop',516),('Llegará','rap',154),('Llegó el Patrón','jass',317),('Llorando en la Limo (feat. Alizzz)','opera',642),('Lo Intenté','opera',642),('Lo Mejore','rap',143),('Lo Que en Silencio Guardo','trap',39),('Lo Que Somos','rap',28),('Lo Real','rap',88),('Lobo','jass',227),('Loca','rap',160),('Lock It Up (feat. Anderson .Paak)','jass',275),('Logro Desbloqueado','trap',83),('Lollypop','opera',649),('London','jass',240),('Los Funkcionarios','opera',638),('Los Pibes','jass',211),('Los PRO (with Nach & SFDK)','pop',519),('Lose Yourself - From \"8 Mile\" Soundtrack','opera',33),('Lose Yourself - From \"8 Mile\" Soundtrack','pop',464),('Love','opera',565),('Low Cost','rap',1),('Loyalty II','pop',497),('Lsd','opera',648),('Lucifer','opera',644),('Luciffer','trap',78),('Lucky You (feat. Joyner Lucas)','pop',511),('LUNA','rap',87),('Luzbel','opera',596),('M.I.A','jass',379),('M3','rap',20),('Made In Taiwan','jass',390),('Make It Bun Dem','rap',106),('Make U Sweat','rap',96),('Mala Mía','rap',113),('Mala Mujer','trap',97),('Malamanera','opera',621),('Malbec','rap',5),('Malquerer','jass',416),('Maltratándome','jass',412),('Mamichula - con Nicki Nicole','rap',167),('Mango','rap',139),('Manos en el Aire','opera',641),('Mar de Males','jass',322),('Maravilla','rap',11),('Mariposas Negras','rap',122),('Marsh','jass',277),('Martyrs','opera',623),('Más Alto','rap',191),('Más de tí','trap',28),('Más de ti (feat. Eva Ruiz)','trap',56),('Más Rollo','trap',63),('Matemática de la Carne','jass',396),('Me estoy dejando la piel con Swan Fyahbwoy','trap',30),('Me Gusta (with Cardi B & Myke Towers)','rap',151),('Me Gustaron Tus Nai','rap',64),('Me Han Hablau De Ti','rap',10),('Me hizo fuerte','opera',615),('Me llama','pop',480),('Me Llama Ami','rap',60),('Me Noto Distinto','rap',173),('Me Queo en Mi Casa','opera',637),('Medication','pop',517),('Mentiras','opera',641),('Mereció la Pena','jass',299),('Meteorito','opera',17),('Mi Casa','trap',52),('Mi Isla / 10k','jass',256),('Mi Legado','jass',421),('Mi Mala','trap',91),('Mi Mejor Amigo','trap',79),('Mi mitad','opera',629),('Mi Mundo','pop',539),('Mi Mundo','opera',640),('Mi Nena','jass',375),('Mi suerte','opera',624),('Miedos','jass',316),('Mierda','opera',542),('Mil Días','rap',39),('Mil Vueltas','jass',311),('Mil vueltas','jass',339),('Mina el Hammani','jass',258),('Minivan','rap',112),('Mira Pa Otro Lao','trap',68),('Miracle / Wherever (feat. TC & D-Loc)','rap',8),('Mirada al Cielo','trap',69),('Mirada al Cielo','pop',532),('Mis Triunfos','jass',389),('Mitad y Mitad (con Najwa)','trap',79),('Mocca','pop',482),('Modo Turbio','opera',604),('Modo Vacilón','jass',324),('Money Dreams','jass',238),('MONTERO (Call Me By Your Name)','rap',38),('Moon','rap',116),('Moonlight','jass',257),('Moonlight','opera',647),('Moraleja','jass',415),('Morir Con las Botas Puestas','jass',381),('Mortales','rap',195),('Movements','opera',593),('Mucho','pop',509),('Muérdeles','opera',606),('Mueve mueve','jass',347),('Mvp','jass',287),('N.T.F (feat. Green Valley)','opera',28),('Nada Cambia','jass',309),('Nada Más Que el Rap','opera',632),('Nada Que Añadir','jass',328),('Nautilus','rap',196),('NBA','jass',242),('Necesitamos Tiempo','pop',469),('Never Love Again','jass',276),('Nietzsche y Salome','opera',614),('No Cumples','trap',69),('No es mona ni na','opera',543),('No Estamos Creyendo','opera',627),('No Gyals','opera',635),('No hago rap','opera',14),('No Hay Rencor','jass',417),('No le Bajes','rap',17),('No Love (feat. Ceerre & Lone)','opera',31),('No Me Canso de Ti','opera',24),('No Me Llores','opera',638),('No Me Llores','opera',650),('No More','pop',484),('No Pudo Ser','opera',600),('No Quiero Ser Uno Más (feat. Green Valley)','opera',29),('No Regrets (feat. Don Toliver)','jass',282),('No Sleep (feat. Eff Raps.)','trap',49),('No Soy Tuyo','jass',236),('No soy uno más','trap',93),('No Te Veo - Remix','jass',341),('No vaya a ser','trap',78),('No volverá','jass',340),('Nocturnal','jass',289),('Norty','jass',224),('Nos Gusta Beber','jass',380),('Nos Vamos a Comer el Mundo','jass',263),('Nuestra última canción','trap',20),('Nueva Generación','trap',2),('Nuevo mundo (feat. Juancho Marqués)','rap',158),('NUMB','opera',630),('Numb / Encore','trap',44),('Nunca Pararé','rap',57),('Nunca Sabrás Cuanto','rap',65),('Oasis - Remix','rap',128),('Oh Child','opera',636),('Ojala','rap',100),('Ojalá','jass',265),('Ojalá','jass',408),('Ojalá nos perdonen','opera',630),('Ojitos Aguaos','rap',42),('Ojitos Aguaos','jass',371),('Old Town Road (feat. Billy Ray Cyrus) - Remix','jass',441),('Olvídate','rap',13),('OMW','rap',33),('Orgullo Banderillero','trap',86),('Orlando','trap',15),('Otro Trago - Remix','jass',433),('Ouh¡ Gyal','rap',169),('Ovarios y Pelotas','opera',642),('Pa Mí - Remix','pop',488),('Pa Que Brille','opera',649),('Pa\' Llamar Tu Atención (feat. MC Bin Laden)','pop',503),('Pa\' Siempre','jass',250),('Paga lo que debes','jass',266),('Palabras Mudas','opera',12),('Pan y mantequilla','opera',58),('Pan, circo, ajo y agua (feat. Carmen Boza)','opera',16),('Parabellum','pop',495),('Paraísos Artificiales','trap',9),('Párteme La Cara','rap',4),('Party Animal','trap',3),('Pasa El Canutito','rap',156),('Pasillo de honor','opera',19),('Patata','rap',176),('Peaches (feat. Daniel Caesar & Giveon)','rap',34),('Peaky Blinders','jass',360),('Pelapavas','jass',206),('Peligroso','opera',39),('Pena','jass',315),('Pensamientos','rap',184),('Pensando en Llamarte','rap',138),('Persiguiéndonos','opera',624),('Píldora #1','trap',72),('Píldora IV','trap',76),('Piratas','trap',70),('Piratas','pop',527),('Piratas','opera',623),('Pisando cristales','opera',646),('Plan B','jass',398),('Plan B','pop',506),('PLANCHI','opera',3),('Planes','rap',148),('Plegarias','rap',157),('Plomo','trap',68),('Plomo','pop',529),('Pluit Ignem','jass',376),('Plusmarca','rap',149),('Pólvora','rap',22),('Pólvora mojada','opera',18),('Pop U','rap',31),('Por amor al odio','trap',95),('Por Eso Vine','pop',456),('Por Mis Santos Cojones (feat. El Sevilla)','rap',51),('Por Partes','pop',454),('Por Qué','trap',95),('Por ti','trap',75),('Por Ti','rap',150),('Por Todo','opera',27),('Por un Beso de la Flaca','pop',476),('Porción De Amor','trap',100),('PORFA','rap',186),('Postureo','opera',7),('Prende y Pasa','opera',591),('Préndelo - Remix','jass',350),('Prendío','jass',387),('Presunto','opera',638),('PRMVR','jass',264),('Problemas','rap',123),('Problems','opera',624),('Prometo - Edit; Versión piano y cuerda','opera',647),('Pronto Llegará','jass',359),('Protocolo','opera',54),('Pruebalo','pop',455),('Puff Daddy','jass',268),('Put Your Hands Up','trap',85),('Puzzle','pop',494),('Que Calor','jass',233),('Que Me Baile','jass',419),('Que Pegue Cuando Pegue','jass',296),('Quédate','rap',81),('Quédate','jass',220),('Queja','rap',18),('Quién Como Tú','pop',492),('Quien Dijo Amigos','pop',491),('Quién Eres Tú','pop',500),('Quiero Gritar','pop',507),('Quiero Marcharme','trap',61),('Química','trap',89),('Quise','opera',633),('Quizás','jass',422),('Rain II','rap',159),('Ramadán','rap',26),('Rap','opera',605),('Ratones Coloraos','jass',209),('Ready to Fight','jass',391),('Realidad','rap',177),('Red Dot','rap',59),('Reggaetonto 1.5','pop',483),('Reina de Pikas','opera',627),('Relax','opera',57),('Relax','opera',631),('Relax - Bizarrap Remix','opera',51),('Remember the Name (feat. Styles of Beyond)','jass',230),('Replay','jass',429),('Reproches','trap',53),('Residuos','rap',99),('Resistiendo por Ti','opera',641),('Rihanna','rap',16),('RLNDT','rap',137),('Robotcop','jass',351),('Rock&Roll','opera',598),('Rodeos','rap',35),('Rolas','opera',564),('Rolas - Remix','rap',130),('Rómpeme','jass',437),('Ronca','rap',185),('Round 1','jass',399),('Rounders','jass',319),('Roxanne','opera',550),('Rumors','jass',300),('S.t.f.u.','opera',644),('SAD!','opera',638),('Safaera','jass',248),('Salió El Sol','pop',459),('Salud','jass',252),('Salvatore Maranzano','opera',549),('Sangre','rap',32),('Sastre de Sonrisas','trap',18),('Se Compone de Amor','opera',46),('Se Va Pero Vuelve','rap',40),('Secretos','pop',535),('Sed y Hambre','jass',208),('Shameless','trap',67),('Shameless','pop',533),('She Don\'t Give a Fo','jass',349),('She Don\'t Give a FO (feat. Khea)','trap',85),('Shut Your Mouth (feat. El Niño Snake)','rap',49),('Si Alguna Vez Nos Fuimos','pop',453),('Si Estuviésemos Juntos','rap',98),('Si Me Gano Un Grammy','jass',344),('Si Quiere Estar Conmigo','jass',318),('Si Se Da','pop',489),('Si Te Sentis Sola','opera',648),('Si Tu Perro','jass',331),('Si Tú Supieras','jass',298),('Si Veo a Tu Mamá','rap',188),('Siempre','jass',228),('Siempre Hablando De Más','trap',1),('Sigue Soñando','pop',477),('Síguelo Bailando','pop',468),('Sigues Con El','jass',214),('Siguiendo el Curso','opera',627),('Silencio a Gritos','opera',639),('Sin alas','opera',628),('Sin Identidad','opera',648),('Sin miedo a mirar atrás','rap',111),('Sin Miedo a Vivir','opera',645),('Sin Salida','opera',637),('Sing For The Moment','rap',43),('Sleepwalking','opera',5),('Smells Like Teen Spirit','trap',45),('So Selfish','rap',104),('Sobran las Palabras','opera',555),('Sol de Marzo','opera',648),('Soliá','jass',246),('Solo se trata de prosperar (2017 Remake)','trap',25),('Soltera - Remix','pop',452),('Someone To Stay','jass',392),('Sota, Caballo y Yo','jass',330),('Spirit','opera',610),('Stand By','pop',514),('Stepdad','jass',278),('Stepping Stone','opera',558),('Still Rapping (feat. Steve Lean)','jass',348),('Still Rapping (feat. Steve Lean)','opera',623),('Streetshark','pop',501),('Stronger','opera',577),('Suave','jass',321),('Sube Sube Sube','trap',24),('Sube Sube Sube','opera',35),('Sudores fríos','rap',15),('Superstars','opera',625),('Survival','jass',308),('Susurro','opera',632),('Sweetest Life','opera',59),('SWISH','rap',72),('Take It Out On Me','trap',36),('Tanga de Seda','jass',366),('Tanta Pena','jass',413),('Tarde','rap',180),('Taste (feat. Offset)','opera',585),('Te Acuerdas','rap',63),('Te Amo','opera',645),('Te Lo Juro','rap',165),('Te Olvidaste','rap',19),('Tell Me','jass',362),('Temblando','trap',37),('Tenedor y Cuchillo','trap',75),('Tentación','jass',304),('Tentaciones','jass',254),('The Break Up','opera',640),('The Monster','pop',458),('The Real Slim Shady - Instrumental Version','pop',463),('the remedy for a broken heart (why am I so in love)','opera',631),('The Sky Is A Neighborhood','trap',73),('The Street in My Pocket','rap',55),('The Woo (feat. 50 Cent & Roddy Ricch)','rap',75),('Those Kinda Nights (feat. Ed Sheeran)','jass',270),('Throne','opera',6),('Tic Tac','rap',27),('Tiraré los dados','opera',546),('TLC','rap',97),('Tocado y hundido','jass',406),('Todo Lo Que Importa','opera',1),('Todo Va a Arder','rap',174),('Todo Va Bien','rap',6),('Tonto (feat. Shotta & Andreas Lutz)','opera',36),('Tranquila','jass',442),('Trap Mal','opera',635),('Tras el Cristal','opera',9),('Tras el Cristal','trap',76),('Tras la Corteza','jass',293),('Tripl3 Tempo #En Forma 3','opera',634),('Triste','rap',9),('Triste','trap',74),('True Love','trap',80),('Trueno: Bzrp Freestyle Sessions, Vol. 6','jass',414),('Try It Out','rap',109),('Try It Out - Neon Mix','rap',107),('Tú Me Dejaste De Querer','rap',124),('Tu Pollo','rap',131),('Twitter','opera',645),('Tyler Herro','rap',73),('Ubuntu','opera',20),('Uh Mama','rap',95),('Un Día Perfecto (feat. Little Pepe)','rap',52),('Un extraño','jass',439),('Un Fajo Más','rap',58),('Unaccommodating (feat. Young M.A)','jass',272),('unravel','opera',561),('Vacilando','jass',450),('Valhalla','trap',77),('Vamos Sin Ná (feat. Rapsuskley)','rap',46),('Vamos Viendo','opera',592),('Vasilon','rap',77),('Vegeta','jass',326),('Velitas','jass',420),('Veneno','opera',11),('Veneno','rap',171),('Venga Lo Que Venga','jass',302),('Venganza','pop',512),('Vengo Desde Abajo','trap',5),('Veni, Vidi, Vici','jass',312),('Venom - Music From The Motion Picture','pop',457),('Ventanas y Terrazas','opera',633),('Verdugo','jass',335),('Vete','jass',244),('Víctima y Verdugo','trap',6),('Vidas Que Se Van','rap',80),('Vidas Que Se Van','jass',365),('Viejos Ciegos (con Xhelazz y Sho-hai)','trap',62),('Viejos Sabios','jass',418),('Visceral','opera',25),('Vita','trap',72),('Volando Voy','jass',404),('Volver','rap',105),('Volver','opera',635),('Volvera','pop',461),('Volverá a llover','trap',40),('Voy a Celebrarlo','trap',33),('Voy A....','trap',32),('Vuelve','opera',634),('Warriors','jass',431),('Way down We Go','trap',82),('Weah','opera',567),('Welcome','opera',41),('Whistle','jass',357),('White Iverson','trap',51),('Wifi','jass',307),('Without Me - Instrumental','trap',87),('Woh! (Part 2) / El Serranito (feat. Príncipe Palanca)','opera',37),('Wopster','rap',2),('X','jass',443),('X.O.X.O. (feat. Rvfv & Chiki El De La Vaina) - Remix','jass',329),('Y a mi qué?','jass',212),('Y\'all Don\'t Wanna','opera',559),('Ya Ni Me Quemo','jass',401),('Yah Yah (feat. Royce Da 5\'9\", Black Thought, Q-Tip & Denaun)','jass',279),('Yo','jass',400),('Yo Creo','jass',231),('Yo Tengo Un Ángel','rap',94),('You Dont Play','jass',378),('You Gon’ Learn (feat. Royce Da 5\'9\" & White Gold)','jass',271),('YYANOSÉ','jass',364),('Zapatillas','trap',27),('Zapatillas','trap',99),('Zenitown','opera',636),('¿Merece la Pena?','rap',44),('• TEMPTED','opera',601);
/*!40000 ALTER TABLE `canción` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colabora`
--

DROP TABLE IF EXISTS `colabora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `colabora` (
  `Canción_Nombre` varchar(100) NOT NULL,
  `idAlbun` int NOT NULL,
  `idArtista` int NOT NULL,
  PRIMARY KEY (`Canción_Nombre`,`idAlbun`,`idArtista`),
  KEY `fk_Canción_has_Artista_Artista1_idx` (`idArtista`),
  KEY `fk_Canción_has_Artista_Canción1_idx` (`Canción_Nombre`,`idAlbun`),
  CONSTRAINT `fk_Canción_has_Artista_Artista1` FOREIGN KEY (`idArtista`) REFERENCES `artista` (`idArtista`),
  CONSTRAINT `fk_Canción_has_Artista_Canción1` FOREIGN KEY (`Canción_Nombre`, `idAlbun`) REFERENCES `canción` (`Nombre`, `idAlbum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colabora`
--

LOCK TABLES `colabora` WRITE;
/*!40000 ALTER TABLE `colabora` DISABLE KEYS */;
INSERT INTO `colabora` VALUES ('15 Días en Agosto',82,3);
/*!40000 ALTER TABLE `colabora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lista_albunes`
--

DROP TABLE IF EXISTS `lista_albunes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lista_albunes` (
  `idusuario` int DEFAULT NULL,
  `idalbum` int DEFAULT NULL,
  KEY `Fk_usuario` (`idusuario`),
  KEY `Fk_album` (`idalbum`),
  CONSTRAINT `Fk_album` FOREIGN KEY (`idalbum`) REFERENCES `albun` (`idalbun`),
  CONSTRAINT `Fk_usuario` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lista_albunes`
--

LOCK TABLES `lista_albunes` WRITE;
/*!40000 ALTER TABLE `lista_albunes` DISABLE KEYS */;
/*!40000 ALTER TABLE `lista_albunes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lista_artistas`
--

DROP TABLE IF EXISTS `lista_artistas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lista_artistas` (
  `idUsuario` int DEFAULT NULL,
  `idArtista` int DEFAULT NULL,
  KEY `FK_usu` (`idUsuario`),
  KEY `FK_art` (`idArtista`),
  CONSTRAINT `FK_art` FOREIGN KEY (`idArtista`) REFERENCES `artista` (`idArtista`),
  CONSTRAINT `FK_usu` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lista_artistas`
--

LOCK TABLES `lista_artistas` WRITE;
/*!40000 ALTER TABLE `lista_artistas` DISABLE KEYS */;
/*!40000 ALTER TABLE `lista_artistas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lista_canciones`
--

DROP TABLE IF EXISTS `lista_canciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lista_canciones` (
  `idPlaylist` int NOT NULL,
  `Canción_Nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`idPlaylist`,`Canción_Nombre`),
  KEY `fk_Playlist_has_Canción_Canción1_idx` (`Canción_Nombre`),
  KEY `fk_Playlist_has_Canción_Playlist_idx` (`idPlaylist`),
  CONSTRAINT `fk_Playlist_has_Canción_Canción1` FOREIGN KEY (`Canción_Nombre`) REFERENCES `canción` (`Nombre`),
  CONSTRAINT `fk_Playlist_has_Canción_Playlist` FOREIGN KEY (`idPlaylist`) REFERENCES `playlist` (`idPlaylist`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lista_canciones`
--

LOCK TABLES `lista_canciones` WRITE;
/*!40000 ALTER TABLE `lista_canciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `lista_canciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lista_playlist`
--

DROP TABLE IF EXISTS `lista_playlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lista_playlist` (
  `idPlaylist` int NOT NULL,
  `idUsuario` int NOT NULL,
  PRIMARY KEY (`idPlaylist`,`idUsuario`),
  KEY `fk_Playlist_has_Usuario_Usuario1_idx` (`idUsuario`),
  KEY `fk_Playlist_has_Usuario_Playlist1_idx` (`idPlaylist`),
  CONSTRAINT `fk_Playlist_has_Usuario_Playlist1` FOREIGN KEY (`idPlaylist`) REFERENCES `playlist` (`idPlaylist`),
  CONSTRAINT `fk_Playlist_has_Usuario_Usuario1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lista_playlist`
--

LOCK TABLES `lista_playlist` WRITE;
/*!40000 ALTER TABLE `lista_playlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `lista_playlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playlist`
--

DROP TABLE IF EXISTS `playlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `playlist` (
  `idPlaylist` int NOT NULL,
  `Nombre` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idPlaylist`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playlist`
--

LOCK TABLES `playlist` WRITE;
/*!40000 ALTER TABLE `playlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `playlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `idUsuario` int NOT NULL,
  `nombre` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `FechaRegistro` date DEFAULT NULL,
  `Tipo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Norman Delgado','2020-07-28','artista'),(2,'Sawyer Owens','2022-02-14','usuario'),(3,'Nathaniel Greer','2020-10-20','artista'),(4,'Oscar Terry','2021-12-09','usuario'),(5,'Germane Peters','2022-06-03','artista'),(6,'Kasper Head','2021-07-01','usuario'),(7,'Ivor Cervantes','2022-03-17','artista'),(8,'Kelly Carey','2020-09-09','artista'),(9,'Travis Britt','2022-01-08','usuario'),(10,'George Fitzgerald','2021-09-16','artista'),(11,'Keiko Chen','2021-06-11','artista'),(12,'Kenyon Lara','2020-08-18','usuario'),(13,'Kaden Mejia','2022-05-09','artista'),(14,'Nash Flores','2022-01-13','usuario'),(15,'Yvonne Stark','2022-01-20','artista'),(16,'Claudia Kline','2022-05-25','usuario'),(17,'Kameko Mcintyre','2021-02-24','usuario'),(18,'April Hodges','2021-07-31','artista'),(19,'Brenden Mays','2021-03-18','artista'),(20,'Roary Greer','2021-01-01','artista'),(21,'Dale Forbes','2021-08-27','usuario'),(22,'Russell Mills','2021-01-25','artista'),(23,'Benedict Rowe','2020-12-24','artista'),(24,'Salvador Boyle','2021-03-21','artista'),(25,'Judah Barlow','2021-12-25','usuario'),(26,'Juliet Porter','2022-03-31','artista'),(27,'Warren Morton','2021-10-06','artista'),(28,'Sopoline Oneil','2022-05-06','usuario'),(29,'Ulric Martin','2022-06-07','usuario'),(30,'Signe Solis','2021-02-01','artista'),(31,'Denise Leon','2020-09-24','artista'),(32,'Bryar Wolf','2021-06-03','usuario'),(33,'Petra Santana','2021-08-14','artista'),(34,'Ann Jenkins','2022-05-04','usuario'),(35,'Josiah Owens','2021-03-20','usuario'),(36,'Kelsie Calhoun','2020-08-31','artista'),(37,'Vanna Preston','2021-09-05','artista'),(38,'Gage Lara','2020-08-30','usuario'),(39,'Ruby Hanson','2021-04-15','artista'),(40,'Neil James','2021-06-14','usuario'),(41,'Amir Bryan','2021-03-17','artista'),(42,'Lyle Price','2021-03-22','artista'),(43,'Kim Rogers','2022-02-26','artista'),(44,'Owen Mccall','2021-03-15','usuario'),(45,'Emi Schroeder','2021-11-22','usuario'),(46,'Quon Herring','2020-12-16','artista'),(47,'Christen Haynes','2021-12-07','usuario'),(48,'Jared Haney','2022-04-28','artista'),(49,'Hayden Delacruz','2022-02-07','artista'),(50,'Rebekah Frederick','2021-10-04','artista'),(51,'Wayne Hale','2021-02-28','usuario'),(52,'Colleen Baker','2022-02-27','artista'),(53,'Elvis Alexander','2020-11-03','artista'),(54,'Kaden Velez','2022-06-04','usuario'),(55,'Tiger Rollins','2020-10-12','artista'),(56,'James Thompson','2022-05-02','artista'),(57,'George Robertson','2020-12-07','usuario'),(58,'Kylynn Knox','2020-11-26','usuario'),(59,'Rashad Harding','2021-09-26','usuario'),(60,'Demetria Lowe','2020-11-27','usuario'),(61,'Brenden Huff','2021-10-16','usuario'),(62,'Mallory Drake','2022-05-04','usuario'),(63,'Rachel Pace','2022-01-09','usuario'),(64,'William Patrick','2020-08-18','usuario'),(65,'Quinn Johns','2021-06-18','artista'),(66,'Emerald Barlow','2021-08-08','artista'),(67,'Tamekah Guy','2022-05-12','artista'),(68,'Erasmus York','2021-06-26','artista'),(69,'Amy Moran','2020-10-07','artista'),(70,'Whilemina Montgomery','2021-02-18','artista'),(71,'Lenore Kennedy','2021-10-20','usuario'),(72,'Derek Munoz','2020-09-18','artista'),(73,'Dominic Cunningham','2020-09-05','usuario'),(74,'Colin Wilcox','2021-10-05','artista'),(75,'Brent Hooper','2022-03-10','usuario'),(76,'August Bradshaw','2022-02-15','usuario'),(77,'Whitney Cote','2021-08-20','artista'),(78,'Tallulah George','2022-04-22','artista'),(79,'Paloma Doyle','2022-01-26','usuario'),(80,'Ocean Pickett','2020-06-15','artista'),(81,'Hillary Dillard','2022-02-18','usuario'),(82,'Rosalyn Walker','2022-03-10','artista'),(83,'Summer Garrison','2021-02-14','artista'),(84,'Flynn Warren','2021-06-15','usuario'),(85,'Avram Glover','2021-10-27','usuario'),(86,'Porter Donovan','2020-06-26','usuario'),(87,'Ignacia Hendrix','2020-08-28','artista'),(88,'Mariam Brewer','2021-09-27','usuario'),(89,'Autumn Rodriguez','2021-08-02','usuario'),(90,'Whilemina Lindsey','2021-11-14','artista'),(91,'Lani Rice','2022-03-14','usuario'),(92,'Nero Rivas','2021-01-15','usuario'),(93,'Pandora Alford','2022-05-30','usuario'),(94,'Bruno Conner','2021-02-24','usuario'),(95,'Oliver David','2021-09-06','usuario'),(96,'Emmanuel Coleman','2021-09-01','artista'),(97,'Fay Wright','2020-07-15','artista'),(98,'Elliott Dale','2021-02-06','usuario'),(99,'Abbot Glover','2021-02-25','artista'),(100,'Jackson King','2022-04-04','artista');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_normal`
--

DROP TABLE IF EXISTS `usuario_normal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario_normal` (
  `Usuario_idUsuario` int NOT NULL,
  PRIMARY KEY (`Usuario_idUsuario`),
  CONSTRAINT `fk_Usuario_normal_Usuario1` FOREIGN KEY (`Usuario_idUsuario`) REFERENCES `usuario` (`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_normal`
--

LOCK TABLES `usuario_normal` WRITE;
/*!40000 ALTER TABLE `usuario_normal` DISABLE KEYS */;
INSERT INTO `usuario_normal` VALUES (2),(4),(6),(9),(12),(14),(16),(17),(21),(25),(28),(29),(32),(34),(35),(38),(40),(44),(45),(47),(51),(54),(57),(58),(59),(60),(61),(62),(63),(64),(71),(73),(75),(76),(79),(81),(84),(85),(86),(88),(89),(91),(92),(93),(94),(95),(98);
/*!40000 ALTER TABLE `usuario_normal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuariopremium`
--

DROP TABLE IF EXISTS `usuariopremium`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuariopremium` (
  `idUsuario` int NOT NULL,
  `FechaVip` date NOT NULL,
  PRIMARY KEY (`idUsuario`,`FechaVip`),
  KEY `fk_UsuarioPremium_Usuario_normal1_idx` (`idUsuario`),
  CONSTRAINT `fk_UsuarioPremium_Usuario_normal1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario_normal` (`Usuario_idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuariopremium`
--

LOCK TABLES `usuariopremium` WRITE;
/*!40000 ALTER TABLE `usuariopremium` DISABLE KEYS */;
INSERT INTO `usuariopremium` VALUES (2,'2021-06-21'),(4,'2021-06-21'),(60,'2021-06-13');
/*!40000 ALTER TABLE `usuariopremium` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `bajaspremium` BEFORE DELETE ON `usuariopremium` FOR EACH ROW BEGIN
INSERT INTO bajaspremium values(
        old.idUsuario,
        date(now()));
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Dumping routines for database 'spotify'
--
/*!50003 DROP FUNCTION IF EXISTS `comprarpremium` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `comprarpremium`(id_usu int) RETURNS int
    DETERMINISTIC
begin
	declare filas1 int;
	declare filas2 int;
	
	
	select count(*) into filas1 from usuariopremium u;
	
	insert into usuariopremium values (id_usu, date(now()));

	select count(*) into filas2 from usuariopremium u;
	
	return filas2-filas1;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `premiumcaducado` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `premiumcaducado`() RETURNS varchar(100) CHARSET utf8
    DETERMINISTIC
begin 
	declare filas1 int;
	declare filas2 int;

	select count(*) into filas1 from usuariopremium u ;

	delete from usuariopremium u 
	where round((datediff(date(now()),FechaVip)/30))>3;

	return concat('se han eliminado ',filas1-filas2,' usuarios premium');
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `generos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `generos`(idART int)
BEGIN
DECLARE TOTAL text;
DECLARE generosmusicales CURSOR FOR
SELECT count(*) FROM canción c inner join albun a on a.idalbun = c.idAlbum 
inner join artista a2 on a2.idArtista =a.idArtista 
where a2.idArtista = idART group by c.genero ;
DECLARE CONTINUE HANDLER FOR NOT FOUND SET @hecho = TRUE;
OPEN generosmusicales;


loop1: LOOP
		 FETCH generosmusicales INTO TOTAL;
		 IF @hecho THEN
		 	LEAVE loop1;
		 END IF;
END LOOP loop1;


CLOSE generosmusicales;

SELECT TOTAL;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-21  0:58:43
