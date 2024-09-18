CREATE TABLE SUMMER_SCHOOL_RENTALS (
    PROPERTY_ID NUMERIC PRIMARY KEY NOT NULL,
    OFFICE_NUM NUMERIC,
    ADDRESS VARCHAR(100),
    SQR_FT SMALLINT,
    FLOORS TINYINT,
    WEEKLY_RENT SMALLINT,
    OWNER_NUM CHAR(5)
);