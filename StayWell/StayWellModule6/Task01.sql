CREATE TABLE LARGE_PROPERTY (
    OFFICE_NUM DECIMAL(2,0) NOT NULL,
    ADDRESS CHAR(25) NOT NULL,
    BDRMS DECIMAL(2,0),
    FLOORS DECIMAL(2,0),
    MONTHLY_RENT DECIMAL(6,2),
    OWNER_NUM CHAR(5),
    PRIMARY KEY (OFFICE_NUM, ADDRESS)
);