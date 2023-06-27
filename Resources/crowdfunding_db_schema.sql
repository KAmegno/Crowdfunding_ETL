-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Campaign" (
    "cf_id" INTEGER   NOT NULL,
    "contact_id" INTEGER   NOT NULL,
    "company_name" VARCHAR(255)   NOT NULL,
    "description" VARCHAR(255)   NOT NULL,
    "goal" DECIMAL   NOT NULL,
    "pledged" DECIMAL   NOT NULL,
    "outcome" INTEGER   NOT NULL,
    "backers_count" INTEGER   NOT NULL,
    "country" CHAR(2)   NOT NULL,
    "currency" CHAR(3)   NOT NULL,
    "launched_date" DATE   NOT NULL,
    "end_date" DATE   NOT NULL,
    "category_id" CHAR(4)   NOT NULL,
    "subcategory_id" VARCHAR(10)   NOT NULL,
    CONSTRAINT "pk_Campaign" PRIMARY KEY (
        "cf_id"
     )
);

CREATE TABLE "Category" (
    "category_id" CHAR(4)   NOT NULL,
    "category" VARCHAR(255)   NOT NULL,
    CONSTRAINT "pk_Category" PRIMARY KEY (
        "category_id"
     )
);

CREATE TABLE "Subcategory" (
    "subcategory_id" VARCHAR   NOT NULL,
    "subcategory" VARCHAR(255)   NOT NULL,
    CONSTRAINT "pk_Subcategory" PRIMARY KEY (
        "subcategory_id"
     )
);

CREATE TABLE "Contacts" (
    "contact_id" INTEGER   NOT NULL,
    "first_name" VARCHAR(255)   NOT NULL,
    "last_name" VARCHAR(255)   NOT NULL,
    "email" VARCHAR(255)   NOT NULL,
    CONSTRAINT "pk_Contacts" PRIMARY KEY (
        "contact_id"
     )
);

ALTER TABLE "Category" ADD CONSTRAINT "fk_Category_category_id" FOREIGN KEY("category_id")
REFERENCES "Campaign" ("category_id");

ALTER TABLE "Subcategory" ADD CONSTRAINT "fk_Subcategory_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "Campaign" ("subcategory_id");

ALTER TABLE "Contacts" ADD CONSTRAINT "fk_Contacts_contact_id" FOREIGN KEY("contact_id")
REFERENCES "Campaign" ("contact_id");

