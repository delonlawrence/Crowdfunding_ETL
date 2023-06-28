
CREATE TABLE "CrowdFunding_Category" (
    "Category_ID" varchar(10)   NOT NULL,
    "Category_Name" VARCHAR(100)   NOT NULL,
    CONSTRAINT "pk_CrowdFunding_Category" PRIMARY KEY (
        "Category_ID"
     )
);

CREATE TABLE "Crowdfunding_Sub_Category" (
    "Sub_Category_ID" varchar(10)   NOT NULL,
    "Sub_Category_Name" Varchar(100)   NOT NULL,
    CONSTRAINT "pk_Crowdfunding_Sub_Category" PRIMARY KEY (
        "Sub_Category_ID"
     )
);

CREATE TABLE "Contact" (
    "Contact_ID" int   NOT NULL,
    "First_Name" varchar(100)   NOT NULL,
    "Last_Name" Varchar(100)   NOT NULL,
    "Email_Address" varchar(100)   NOT NULL,
    CONSTRAINT "pk_Contact" PRIMARY KEY (
        "Contact_ID"
     )
);

-- Table documentation comment 1 (try the PDF/RTF export)
CREATE TABLE "Crowdfunding_Activity" (
    "CF_ID" int   NOT NULL,
    "Contact_ID" int   NOT NULL,
    "Company_Name" varchar(100)   NOT NULL,
    "Description" varchar(250)   NOT NULL,
    "Goal" float   NOT NULL,
    "Pledged" float   NOT NULL,
    "Outcome" Varchar(12)   NOT NULL,
    "Backers_Count" Int   NOT NULL,
    "Country" Varchar(10)   NOT NULL,
    "Currency" varchar(10)   NOT NULL,
    "launch_date" Date   NOT NULL,
    "end_date" Date   NOT NULL,
    "Category_ID" varchar(10)   NOT NULL,
    "Sub_Category_ID" varchar(10)   NOT NULL,
    CONSTRAINT "pk_Crowdfunding_Activity" PRIMARY KEY (
        "CF_ID"
     )
);

ALTER TABLE "Crowdfunding_Activity" ADD CONSTRAINT "fk_Crowdfunding_Activity_Contact_ID" FOREIGN KEY("Contact_ID")
REFERENCES "Contact" ("Contact_ID");

ALTER TABLE "Crowdfunding_Activity" ADD CONSTRAINT "fk_Crowdfunding_Activity_Category_ID" FOREIGN KEY("Category_ID")
REFERENCES "CrowdFunding_Category" ("Category_ID");

ALTER TABLE "Crowdfunding_Activity" ADD CONSTRAINT "fk_Crowdfunding_Activity_Sub_Category_ID" FOREIGN KEY("Sub_Category_ID")
REFERENCES "Crowdfunding_Sub_Category" ("Sub_Category_ID");

