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

