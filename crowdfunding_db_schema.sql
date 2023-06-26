-- Create the Department Table
CREATE TABLE "Crowdfunding_Category" (
    "Category_ID" VARCHAR(10)   NOT NULL,
    "Category_Name" VARCHAR(100)   NOT NULL,
    CONSTRAINT "pkCrowdfunding_Category" PRIMARY KEY (
        "Category_ID"
     )
);
-- Create the Titles Table
CREATE TABLE "Crowdfunding_Sub_Category" (
    "Sub_Category_ID" VARCHAR(10)   NOT NULL,
    "Sub_Category_Name" Varchar(100)   NOT NULL,
    CONSTRAINT "pk_Crowdfunding_Sub_Category" PRIMARY KEY (
        "Sub_Category_ID"
     )
);
