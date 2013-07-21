CREATE TABLE `accounts` (
`ID` int(11) NOT NULL,
`FIRST_NAME` varchar(255) DEFAULT NULL,
`LAST_NAME` varchar(255) DEFAULT NULL,
`EMAIL` varchar(255) DEFAULT NULL,
PRIMARY KEY (`ID`)
);

CREATE TABLE `product` (
`id` int(11) NOT NULL,
`shortName` varchar(45) NOT NULL,
`price` int(11) DEFAULT NULL,
PRIMARY KEY (`id`),
UNIQUE KEY `shortName_UNIQUE` (`shortName`)
);

CREATE TABLE `basket` (
`id` int(11) NOT NULL,
`accountId` varchar(45) NOT NULL,
`datecreated` datetime NOT NULL,
`datecheckout` datetime DEFAULT NULL,
PRIMARY KEY (`id`)
);

CREATE TABLE `basketProduct` (
`basketId` int(11) NOT NULL DEFAULT '0',
`productId` int(11) NOT NULL DEFAULT '0',
`quantity` varchar(45) NOT NULL,
PRIMARY KEY (`productId`,`basketId`)
);

INSERT INTO `accounts` VALUES (1,'Matias','Juan','mymail@mail.com'),(2,'John','Doe','jdoe@mail.com');

INSERT INTO `product` VALUES (1,'Mac Book Pro 15 2010',1500),(2,'Mac Book Pro 13 2012',1300),(3,'Apple TV 2013',300),(4,'Mac Book Air 2011',1500),(5,'Mouse 123',20),(6,'IPhone 5 16GB unlocked',600);

INSERT INTO `basket` VALUES (1,'1','2013-01-01 00:00:00','2013-01-01 00:00:00'),(2,'2','2012-05-19 00:00:00','2012-05-25 00:00:00');

INSERT INTO `basketProduct` VALUES (2,1,'2'),(1,2,'1'),(1,4,'2'),(2,5,'1');
