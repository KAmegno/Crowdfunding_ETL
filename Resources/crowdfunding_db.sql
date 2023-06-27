DROP TABLE Campaign
;

CREATE TABLE Category (
    category_id CHAR(4)   NOT NULL,
	category VARCHAR(255)   NOT NULL,
    PRIMARY KEY (category_id)
	);

SELECT *
FROM Category
;

CREATE TABLE Subcategory (
    subcategory_id VARCHAR   NOT NULL,
    subcategory VARCHAR(255)   NOT NULL,
    PRIMARY KEY (subcategory_id)
);

SELECT *
FROM Subcategory
;

CREATE TABLE Contacts (
    contact_id INTEGER   NOT NULL,
    first_name VARCHAR(255)   NOT NULL,
    last_name VARCHAR(255)   NOT NULL,
    email VARCHAR(255)   NOT NULL,
    PRIMARY KEY (contact_id)
);

SELECT *
FROM Contacts
;

CREATE TABLE Campaign (
    cf_id INT   NOT NULL,
    contact_id INT   NOT NULL,
    company_name VARCHAR(255)   NOT NULL,
    description VARCHAR(255)   NOT NULL,
    goal DECIMAL   NOT NULL,
    pledged DECIMAL   NOT NULL,
    outcome CHAR(20)   NOT NULL,
    backers_count INT   NOT NULL,
    country CHAR(2)   NOT NULL,
    currency CHAR(3)   NOT NULL,
    launched_date DATE   NOT NULL,
    end_date DATE   NOT NULL,
    category_id CHAR(4)   NOT NULL,
    subcategory_id VARCHAR(10)   NOT NULL,
    PRIMARY KEY (cf_id),
	FOREIGN KEY (category_id) REFERENCES Category(category_id),
	FOREIGN KEY (contact_id) REFERENCES Contacts (contact_id),
	FOREIGN KEY (subcategory_id) REFERENCES Subcategory (subcategory_id)
);

SELECT *
FROM Campaign
;