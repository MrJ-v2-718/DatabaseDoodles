CREATE TABLE NONCAT (
    ITEM_ID CHAR(4) PRIMARY KEY NOT NULL,
    DESCRIPTION CHAR(30),
	ON_HAND INT,
	CATEGORY CHAR(3),
	PRICE DECIMAL(6,2)
);