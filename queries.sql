
CREATE TABLE COUNTRY(
ID INT IDENTITY(1,1),
NAME VARCHAR(256) NOT NULL,
PRIMARY KEY (ID) );

CREATE TABLE OPPURTUNITY_SALES_STAGE(
ID INT IDENTITY(1,1),
NAME VARCHAR(128) NOT NULL,
PRIMARY KEY (ID) );

CREATE TABLE CONTACT_STATUS(
ID INT IDENTITY(1,1),
NAME VARCHAR(128) NOT NULL,
PRIMARY KEY (ID) );

CREATE TABLE ACCOUNT(
ID INT IDENTITY(1,1),
NAME VARCHAR(128) NOT NULL,
PARENT_ACCOUNT_ID INT,
REVENUE NUMERIC,
COUNTRY INT,
DESCRIPTION TEXT,
PRIMARY KEY (ID),
FOREIGN KEY (PARENT_ACCOUNT_ID) REFERENCES ACCOUNT(ID),
FOREIGN KEY (COUNTRY) REFERENCES COUNTRY(ID));

CREATE TABLE CONTACT(
ID INT IDENTITY(1,1),
FIRSTNAME VARCHAR(128),
LASTNAME VARCHAR(128) NOT NULL,
DEPARTMENT VARCHAR(128),
STATUS INT NOT NULL,
ACCOUNT_ID INT NOT NULL,
REPORTS_TO_ID INT,
LEFT_THE_ORG TINYINT(1),
PRIMARY KEY (ID),
FOREIGN KEY (STATUS) REFERENCES CONTACT_STATUS(ID),
FOREIGN KEY (ACCOUNT_ID) REFERENCES ACCOUNT(ID),
FOREIGN KEY (REPORTS_TO_ID) REFERENCES CONTACT(ID));

CREATE TABLE OPPURTUNITY(
ID INT IDENTITY(1,1),
NAME VARCHAR(128) NOT NULL,
SALES_STAGE INT NOT NULL,
AMOUNT NUMERIC,
CLOSE_DATE DATE,
ACCOUNT_ID INT NOT NULL,
CONTACT_ID INT NOT NULL,
PRIMARY KEY (ID),
FOREIGN KEY (SALES_STAGE) REFERENCES OPPURTUNITY_SALES_STAGE(ID),
FOREIGN KEY (ACCOUNT_ID) REFERENCES ACCOUNT(ID),
FOREIGN KEY (CONTACT_ID) REFERENCES CONTACT(ID));

INSERT INTO OPPURTUNITY_SALES_STAGE (ID, NAME) VALUES 
(1,'Prospecting'),(2,'Qualification'),(3,'Needs Analysis'),
(4,'Value Proposition'),(5,'Decision Makers'),
(6,'Perception Analysis'),(7,'Proposal/Price Quote'),
(8,'Negotiation/Review'),(9,'Closed won'),(10,'Closed lost');

INSERT INTO COUNTRY (ID, NAME) VALUES
(1, 'Afghanistan'),
(2, 'Aland Islands'),
(3, 'Albania'),
(4, 'Algeria'),
(5, 'American Samoa'),
(6, 'Andorra'),
(7, 'Angola'),
(8, 'Anguilla'),
(9, 'Antarctica'),
(10, 'Antigua and Barbuda'),
(11, 'Argentina'),
(12, 'Armenia'),
(13, 'Aruba'),
(14, 'Australia'),
(15, 'Austria'),
(16, 'Azerbaijan'),
(17, 'Bahamas'),
(18, 'Bahrain'),
(19, 'Bangladesh'),
(20, 'Barbados'),
(21, 'Belarus'),
(22, 'Belgium'),
(23, 'Belize'),
(24, 'Benin'),
(25, 'Bermuda'),
(26, 'Bhutan'),
(27, 'Bolivia'),
(28, 'Bonaire, Sint Eustatius and Saba'),
(29, 'Bosnia and Herzegovina'),
(30, 'Botswana'),
(31, 'Bouvet Island'),
(32, 'Brazil'),
(33, 'British Indian Ocean Territory'),
(34, 'Brunei Darussalam'),
(35, 'Bulgaria'),
(36, 'Burkina Faso'),
(37, 'Burundi'),
(38, 'Cambodia'),
(39, 'Cameroon'),
(40, 'Canada'),
(41, 'Cape Verde'),
(42, 'Cayman Islands'),
(43, 'Central African Republic'),
(44, 'Chad'),
(45, 'Chile'),
(46, 'China'),
(47, 'Christmas Island'),
(48, 'Cocos (Keeling) Islands'),
(49, 'Colombia'),
(50, 'Comoros'),
(51, 'Congo'),
(52, 'Congo, Democratic Republic of the Congo'),
(53, 'Cook Islands'),
(54, 'Costa Rica'),
(55, 'Cote D Ivoire'),
(56, 'Croatia'),
(57, 'Cuba'),
(58, 'Curacao'),
(59, 'Cyprus'),
(60, 'Czech Republic'),
(61, 'Denmark'),
(62, 'Djibouti'),
(63, 'Dominica'),
(64, 'Dominican Republic'),
(65, 'Ecuador'),
(66, 'Egypt'),
(67, 'El Salvador'),
(68, 'Equatorial Guinea'),
(69, 'Eritrea'),
(70, 'Estonia'),
(71, 'Ethiopia'),
(72, 'Falkland Islands (Malvinas)'),
(73, 'Faroe Islands'),
(74, 'Fiji'),
(75, 'Finland'),
(76, 'France'),
(77, 'French Guiana'),
(78, 'French Polynesia'),
(79, 'French Southern Territories'),
(80, 'Gabon'),
(81, 'Gambia'),
(82, 'Georgia'),
(83, 'Germany'),
(84, 'Ghana'),
(85, 'Gibraltar'),
(86, 'Greece'),
(87, 'Greenland'),
(88, 'Grenada'),
(89, 'Guadeloupe'),
(90, 'Guam'),
(91, 'Guatemala'),
(92, 'Guernsey'),
(93, 'Guinea'),
(94, 'Guinea-Bissau'),
(95, 'Guyana'),
(96, 'Haiti'),
(97, 'Heard Island and Mcdonald Islands'),
(98, 'Holy See (Vatican City State)'),
(99, 'Honduras'),
(100, 'Hong Kong'),
(101, 'Hungary'),
(102, 'Iceland'),
(103, 'India'),
(104, 'Indonesia'),
(105, 'Iran, Islamic Republic of'),
(106, 'Iraq'),
(107, 'Ireland'),
(108, 'Isle of Man'),
(109, 'Israel'),
(110, 'Italy'),
(111, 'Jamaica'),
(112, 'Japan'),
(113, 'Jersey'),
(114, 'Jordan'),
(115, 'Kazakhstan'),
(116, 'Kenya'),
(117, 'Kiribati'),
(118, 'Korea, Democratic People s Republic of'),
(119, 'Korea, Republic of'),
(120, 'Kosovo'),
(121, 'Kuwait'),
(122, 'Kyrgyzstan'),
(123, 'Lao People s Democratic Republic'),
(124, 'Latvia'),
(125, 'Lebanon'),
(126, 'Lesotho'),
(127, 'Liberia'),
(128, 'Libyan Arab Jamahiriya'),
(129, 'Liechtenstein'),
(130, 'Lithuania'),
(131, 'Luxembourg'),
(132, 'Macao'),
(133, 'Macedonia, the Former Yugoslav Republic of'),
(134, 'Madagascar'),
(135, 'Malawi'),
(136, 'Malaysia'),
(137, 'Maldives'),
(138, 'Mali'),
(139, 'Malta'),
(140, 'Marshall Islands'),
(141, 'Martinique'),
(142, 'Mauritania'),
(143, 'Mauritius'),
(144, 'Mayotte'),
(145, 'Mexico'),
(146, 'Micronesia, Federated States of'),
(147, 'Moldova, Republic of'),
(148, 'Monaco'),
(149, 'Mongolia'),
(150, 'Montenegro'),
(151, 'Montserrat'),
(152, 'Morocco'),
(153, 'Mozambique'),
(154, 'Myanmar'),
(155, 'Namibia'),
(156, 'Nauru'),
(157, 'Nepal'),
(158, 'Netherlands'),
(159, 'Netherlands Antilles'),
(160, 'New Caledonia'),
(161, 'New Zealand'),
(162, 'Nicaragua'),
(163, 'Niger'),
(164, 'Nigeria'),
(165, 'Niue'),
(166, 'Norfolk Island'),
(167, 'Northern Mariana Islands'),
(168, 'Norway'),
(169, 'Oman'),
(170, 'Pakistan'),
(171, 'Palau'),
(172, 'Palestinian Territory, Occupied'),
(173, 'Panama'),
(174, 'Papua New Guinea'),
(175, 'Paraguay'),
(176, 'Peru'),
(177, 'Philippines'),
(178, 'Pitcairn'),
(179, 'Poland'),
(180, 'Portugal'),
(181, 'Puerto Rico'),
(182, 'Qatar'),
(183, 'Reunion'),
(184, 'Romania'),
(185, 'Russian Federation'),
(186, 'Rwanda'),
(187, 'Saint Barthelemy'),
(188, 'Saint Helena'),
(189, 'Saint Kitts and Nevis'),
(190, 'Saint Lucia'),
(191, 'Saint Martin'),
(192, 'Saint Pierre and Miquelon'),
(193, 'Saint Vincent and the Grenadines'),
(194, 'Samoa'),
(195, 'San Marino'),
(196, 'Sao Tome and Principe'),
(197, 'Saudi Arabia'),
(198, 'Senegal'),
(199, 'Serbia'),
(200, 'Serbia and Montenegro'),
(201, 'Seychelles'),
(202, 'Sierra Leone'),
(203, 'Singapore'),
(204, 'Sint Maarten'),
(205, 'Slovakia'),
(206, 'Slovenia'),
(207, 'Solomon Islands'),
(208, 'Somalia'),
(209, 'South Africa'),
(210, 'South Georgia and the South Sandwich Islands'),
(211, 'South Sudan'),
(212, 'Spain'),
(213, 'Sri Lanka'),
(214, 'Sudan'),
(215, 'Suriname'),
(216, 'Svalbard and Jan Mayen'),
(217, 'Swaziland'),
(218, 'Sweden'),
(219, 'Switzerland'),
(220, 'Syrian Arab Republic'),
(221, 'Taiwan, Province of China'),
(222, 'Tajikistan'),
(223, 'Tanzania, United Republic of'),
(224, 'Thailand'),
(225, 'Timor-Leste'),
(226, 'Togo'),
(227, 'Tokelau'),
(228, 'Tonga'),
(229, 'Trinidad and Tobago'),
(230, 'Tunisia'),
(231, 'Turkey'),
(232, 'Turkmenistan'),
(233, 'Turks and Caicos Islands'),
(234, 'Tuvalu'),
(235, 'Uganda'),
(236, 'Ukraine'),
(237, 'United Arab Emirates'),
(238, 'United Kingdom'),
(239, 'United States'),
(240, 'United States Minor Outlying Islands'),
(241, 'Uruguay'),
(242, 'Uzbekistan'),
(243, 'Vanuatu'),
(244, 'Venezuela'),
(245, 'Viet Nam'),
(246, 'Virgin Islands, British'),
(247, 'Virgin Islands, U.s.'),
(248, 'Wallis and Futuna'),
(249, 'Western Sahara'),
(250, 'Yemen'),
(251, 'Zambia'),
(252, 'Zimbabwe');

INSERT INTO CONTACT_STATUS (ID, NAME) VALUES 
(1,'Aware Negative'),(2,'Unaware'),(3,'Aware Neutral'),
(4,'Aware Positive'),(5,'Champion');


INSERT INTO ACCOUNT( ID,NAME,REVENUE,COUNTRY) VALUES( 1 , 'ICBC',249.5,46),(2,'JPMorgan Chase',464.8,239),
(3,'Berkshire Hathaway',624.6,239),
(4,'China Construction Bank',210,46),
(5,'Saudi Arabian Oil Company (Saudi Aramco)',1897,197);

INSERT INTO ACCOUNT( ID,NAME,PARENT_ACCOUNT_ID,REVENUE,COUNTRY) VALUES( 6 , 'Apple',1,2252,239),
(7,'Bank of America',2,336,239),
(8,'Ping An Insurance Group',3,211,46),
(9,'Agricultural Bank of China',4,140,46),
(10,'Amazon',5,1711,239),
(11,'Samsung Electronics',1,510,118),
(12,'Toyota Motor',1,216,112),
(13,'Alphabet',6,1538,239),
(14,'Bank of China',7,1167,46),
(15,'Microsoft',3,1966,239),
(17,'Citigroup',9,151,239),
(18,'Volkswagen Group',10,147,83),
(19,'Walmart',15,3961,239),
(20,'Wells Fargo',12,181,239);



INSERT INTO CONTACT
(ID,FIRSTNAME,LASTNAME,DEPARTMENT,STATUS,ACCOUNT_ID,LEFT_THE_ORG) 
VALUES 
(1,'Dinesh ','Koppula','Devoleper',1,1,0),
(2,'Rajesh ','Enumla','Sales',2,10,0),
(3,'suresh ','Kotha','Engineer',3,20,0),
(4,'ganesh','Baira','Networing',4,11,0),
(5,'ravi','Sura','It',5,15,1);  

INSERT INTO CONTACT
(ID,FIRSTNAME,LASTNAME,DEPARTMENT,STATUS,ACCOUNT_ID,REPORTS_TO_ID,LEFT_THE_ORG)
VALUES (6,'kamala','Singh','Marketing',2,14,1,0),
(7,'eshwar','Taluk','Security',3,19,2,0),
(8,'chaithanya','Meshra','Sales',4,20,3,0),
(9,'charanya','Gowda','Networing',2,15,4,0),
(10,'sai gnan','Rampi','Marketing',5,16,5,0),
(11,'shashi ','Suren','Networing',2,17,6,0),
(12,'varun ','Varus','Devoleper',1,17,7,0),
(13,'dileep','Ganne','Marketing',1,2,8,0),
(14,'gowardhan','Yentha','Engineer',3,15,9,0),
(15,'sai kumar','Chudum','Engineer',4,5,10,1),
(16,'sandeep','Goura','Administration',3,5,5,0),
(17,'chintu','Naren','Devoleper',4,8,4,0),
(18,'soujanya','Maloth','Sales',2,1,9,0),
(19,'ramya','Gugloth','Finanace',5,9,10,1),
(20,'rachana','Atla','Finanace',2,10,12,0),
(21,'swathi ','Raveena','Administration',5,11,18,0),
(22,'soundarya','Survi','Networing',4,13,20,1),
(23,'savitha','Kareem','Devoleper',3,18,15,0),
(24,'surabhi','Menthula','Sales',2,5,6,0),
(25,'malek ','Atkula','Engineer',2,12,5,0),
(26,'kumar','Malek','Manager',5,9,3,0),
(27,'kavitha','Souvik','Finanace',4,7,12,0),
(28,'anitha','menthik','Manager',3,8,10,0),
(29,'sabitha','Mahula','Engineer',1,10,11,0),
(30,'soumya','Suowv','Marketing',2,9,19,0),
(31,'sreeja','Chengg','Engineer',5,8,20,0),
(32,'sruthi','Gulabi','Devoleper',2,3,17,0),
(33,'pravalika','Katkam','Administration',4,2,15,1),
(34,'gayathri ','Kavi','Marketing',2,14,16,0),
(35,'mythir','Kalesha','Sales',1,16,30,0),
(36,'pranav','Kuravi','Finanace',3,19,20,0),
(37,'sharath','Kesavi','Administration',4,20,30,0),
(38,'praeep a','Kameen','Marketing',2,1,19,0),
(39,'arpitha','Sanku','Devoleper',5,3,1,0),
(40,'amarendhar','Sastha','Networing',2,7,8,1),
(41,'aravind','Sarosha','Manager',1,8,18,0),
(42,'nagateja','Sabeena','Engineer',3,9,40,0),
(43,'praveen','Gowrdha','Finanace',4,5,16,0),
(44,'arun','Goaadhi','Manager',3,4,15,0),
(45,'raju','Galeen','Devoleper',2,6,14,0),
(46,'Sonu','Puppala','Sales',1,1,20,0),
(47,'Pandu','Puresh','Marketing',2,1,22,0),
(48,'Koushik','Puruva','Networing',2,2,28,0),
(49,'Karthika','Purvam','Manager',1,3,39,1),
(50,'vignesh','Bandi','Marketing',4,4,45,0);

INSERT INTO OPPURTUNITY VALUES 
(1,'A',1,100000,44262,1,1),
(2,'B',2,500000,44372,2,2),
(3,'C',3,200000,44205,3,3),
(4,'D',4,600059,44412,4,4),
(5,'E',5,748503,44252,5,5),
(6,'F',6,945683,44428,6,6),
(7,'G',7,153166,44397,7,7),
(8,'H',8,132563,44422,8,8),
(9,'I',9,555578,44446,9,9),
(10,'J',10,215245,44273,10,10),
(11,'K',4,454631,44483,11,2),
(12,'L',8,545464,44456,12,4),
(13,'M',5,545576,44308,13,6),
(14,'N',9,125212,44466,14,8),
(15,'O',3,125643,44355,15,10),
(16,'P',6,478565,44238,16,12),
(17,'Q',7,478452,44385,17,14),
(18,'R',8,894121,44405,18,16),
(19,'S',4,541238,44211,19,18),
(20,'T',1,574516,44221,20,20),
(21,'U',2,452185,44298,2,22),
(22,'V',3,456565,44420,4,24),
(23,'W',4,456987,44212,6,26),
(24,'X',9,456321,44444,8,28),
(25,'Y',1,123456,44423,10,30),
(26,'Z',10,589521,44369,12,33),
(27,'AA',3,523895,44414,14,36),
(28,'AB',3,689986,44233,16,39),
(29,'AC',5,456985,44465,18,40),
(30,'AD',8,785985,44357,20,44),
(31,'AE',4,512245,44462,3,48),
(32,'AF',6,632563,44300,6,50),
(33,'AG',9,548985,44481,9,5),
(34,'AH',1,564895,44220,12,10),
(35,'AI',2,521638,44277,15,15),
(36,'AJ',10,412365,44431,18,20),
(37,'AK',9,425631,44216,4,25),
(38,'AL',8,162351,44392,8,30),
(39,'AM',7,589659,44257,12,35),
(40,'AN',6,678956,44371,16,40),
(41,'AO',5,568956,44454,20,45),
(42,'AP',4,456952,44224,5,50),
(43,'AQ',3,859685,44328,10,7),
(44,'AR',2,525252,44435,15,14),
(45,'AS',1,252525,44398,20,21),
(46,'AT',1,626262,44471,6,28),
(47,'AU',2,333333,44443,12,35),
(48,'AV',3,856595,44446,18,42),
(49,'AW',5,456595,44351,7,49),
(50,'AX',6,758595,44425,14,8),
(51,'AY',4,456525,44322,8,16),
(52,'AZ',8,565263,44351,16,24),
(53,'BA',9,523452,44339,9,32),
(54,'BB',7,526865,44240,18,40),
(55,'BC',6,548653,44259,10,9),
(56,'BD',5,356265,44260,20,18),
(57,'BE',3,398789,44371,3,27),
(58,'BF',2,389987,44297,6,36),
(59,'BG',4,356954,44268,15,45),
(60,'BH',5,385451,44258,9,10),
(61,'BI',6,652214,44303,19,20),
(62,'BJ',10,152364,44307,20,30),
(63,'BK',5,159753,44210,4,40),
(64,'BL',8,573591,44463,5,50),
(65,'BM',7,582561,44223,16,11),
(66,'BN',9,486279,44381,20,22),
(67,'BO',7,426879,44407,15,33),
(68,'BP',6,971346,44265,16,44),
(69,'BQ',1,134679,44352,12,12),
(70,'BR',4,895646,44305,13,24),
(71,'BS',8,568923,44469,11,36),
(72,'BT',6,545615,44460,11,48),
(73,'BU',3,545658,44393,11,13),
(74,'BV',10,525252,44439,12,26),
(75,'BW',5,546528,44385,1,39),
(76,'BX',9,159854,44238,13,14),
(77,'BY',10,126536,44264,18,28),
(78,'BZ',7,259864,44280,19,42),
(79,'CA',8,987456,44278,1,15),
(80,'CB',2,987654,44213,1,30),
(81,'CC',4,654897,44260,1,45),
(82,'CD',5,953621,44205,2,3),
(83,'CE',6,456789,44400,2,7),
(84,'CF',8,123456,44454,2,9),
(85,'CG',4,789456,44338,3,11),
(86,'CH',2,123789,44212,3,13),
(87,'CI',8,987321,44331,3,17),
(88,'CJ',7,987654,44289,5,26),
(89,'CK',8,654321,44359,5,40),
(90,'CL',9,654987,44239,5,50),
(91,'CM',10,654753,44432,6,49),
(92,'CN',5,621459,44349,6,8),
(93,'CO',8,323456,44447,6,7),
(94,'CP',2,126987,44320,8,3),
(95,'CQ',5,126328,44376,9,17),
(96,'CR',8,159634,44299,9,29),
(97,'CS',9,985614,44366,10,39),
(98,'CT',7,941645,44409,10,40),
(99,'CU',6,529624,44213,18,50),
(100,'CV',5,943871,44323,18,33);




--get list of all accounts, contacts & opportunities

/*SELECT * FROM ACCOUNT;
SELECT * FROM OPPURTUNITY;
SELECT * FROM CONTACT;*/



--get list of all parent accounts & child accounts


/*SELECT ID,NAME FROM ACCOUNT WHERE ID IN ( SELECT PARENT_ACCOUNT_ID FROM ACCOUNT);
SELECT ID,NAME FROM ACCOUNT WHERE PARENT_ACCOUNT_ID IN ( SELECT ID FROM ACCOUNT);
*/


--get list of all parent accounts where there are no child accounts
--SELECT * FROM ACCOUNT WHERE ID NOT IN (SELECT B.PARENT_ACCOUNT_ID FROM ACCOUNT A INNER JOIN ACCOUNT B ON A.ID=B.PARENT_ACCOUNT_ID);


--show account wise child accounts count
--SELECT A.ID,A.NAME,COUNT(B.PARENT_ACCOUNT_ID)FROM ACCOUNT A INNER JOIN ACCOUNT B WHERE A.ID=B.PARENT_ACCOUNT_ID GROUP BY (B.PARENT_ACCOUNT_ID);

--show account wise Contacts and oppurtunities count
--SELECT A.ID,A.NAME,COUNT(B.ACCOUNT_ID)FROM ACCOUNT A INNER JOIN CONTACT B WHERE A.ID=B.ACCOUNT_ID GROUP BY (B.ACCOUNT_ID);
--SELECT A.ID,A.NAME,COUNT(B.ACCOUNT_ID)FROM ACCOUNT A INNER JOIN OPPURTUNITY B WHERE A.ID=B.ACCOUNT_ID GROUP BY (B.ACCOUNT_ID);


--get account name which contains highest number of child account 

--SELECT A.ID,A.NAME,COUNT(B.PARENT_ACCOUNT_ID)FROM ACCOUNT A INNER JOIN ACCOUNT B WHERE A.ID=B.PARENT_ACCOUNT_ID GROUP BY (B.PARENT_ACCOUNT_ID) ORDER BY (COUNT(B.PARENT_ACCOUNT_ID)) DESC LIMIT 1;
 
--get account name which contains highest number of contacts
SELECT A.ID,A.NAME,COUNT(B.ACCOUNT_ID)FROM ACCOUNT A INNER JOIN CONTACT B WHERE A.ID=B.ACCOUNT_ID GROUP BY (B.ACCOUNT_ID) ORDER BY (COUNT(B.ACCOUNT_ID)) DESC ;
--get account name which contains highest number of opportunities
-- SELECT A.ID,A.NAME,COUNT(B.ACCOUNT_ID)FROM ACCOUNT A INNER JOIN OPPURTUNITY B WHERE A.ID=B.ACCOUNT_ID GROUP BY (B.ACCOUNT_ID) ORDER BY (COUNT(B.ACCOUNT_ID)) DESC LIMIT 1;


--show all won opportunities whose amount is greater than 1 million
SELECT O.ID,O.NAME,SALES.NAME FROM OPPURTUNITY O INNER JOIN OPPURTUNITY_SALES_STAGE SALES ON O.SALES_STAGE=SALES.ID WHERE SALES.NAME like '%Closed Won' AND O.AMOUNT>10000;

--show contact name in formatted matter
--SELECT ID,CONCAT(" ",FIRSTNAME,LASTNAME) AS FULLNAME FROM CONTACT;


--show status wise contact count

SELECT  CS.ID,CS.NAME, COUNT(C.ID)FROM CONTACT_STATUS CS INNER JOIN CONTACT C ON CS.ID=C.STATUS GROUP BY CS.ID;

-- show all aware negative contacts who are associated with opportunities
SELECT * FROM CONTACT C INNER JOIN CONTACT_STATUS CS ON C.STATUS=CS.ID WHERE CS.NAME='Aware Negative' AND C.ID IN (SELECT OPPURTUNITY.CONTACT_ID FROM OPPURTUNITY);

--OPTIONAL QUERIES

/*
get account name which contains second highest number of contacts
get account name which contains second highest number of opportunities

get account name which contains nth highest number of contacts
get account name which contains nth highest number of opportunities

*/

SELECT A.ID,A.NAME,COUNT(B.ACCOUNT_ID)FROM ACCOUNT A INNER JOIN CONTACT B WHERE A.ID=B.ACCOUNT_ID GROUP BY (B.ACCOUNT_ID) ORDER BY (COUNT(B.ACCOUNT_ID)) DESC LIMIT 1,1;

SELECT A.ID,A.NAME,COUNT(B.ACCOUNT_ID)FROM ACCOUNT A INNER JOIN OPPURTUNITY B WHERE A.ID=B.ACCOUNT_ID GROUP BY (B.ACCOUNT_ID) ORDER BY (COUNT(B.ACCOUNT_ID)) DESC LIMIT 1,1;

SELECT @NTH_HIGHEST=10;

SELECT A.ID,A.NAME,COUNT(B.ACCOUNT_ID)FROM ACCOUNT A INNER JOIN CONTACT B WHERE A.ID=B.ACCOUNT_ID GROUP BY (B.ACCOUNT_ID) ORDER BY (COUNT(B.ACCOUNT_ID)) DESC LIMIT @NTH_HIGHEST-1,1;



