SELECT COUNT(*) FROM "CrowdFunding_Category"
;
SELECT COUNT(*) FROM "Crowdfunding_Sub_Category"
;
SELECT COUNT(*) FROM "Contact"
;
SELECT COUNT(*) FROM "Crowdfunding_Activity"
;

SELECT * FROM "CrowdFunding_Category"
;
SELECT * FROM "Crowdfunding_Sub_Category"
;
SELECT * FROM "Contact"
;
SELECT * FROM "Crowdfunding_Activity"
;


--Join the tables together:

SELECT CA."CF_ID", 
       CT."First_Name", CT."Last_Name",CT."Email_Address" 
	   ,CA."Company_Name", CA."Description", CA."Goal", CA."Pledged", CA."Outcome", CA."Backers_Count", CA."Country", CA."Currency", CA."launch_date", CA."end_date" 
	   ,CC."Category_Name"
	   ,CSC."Sub_Category_Name"
	FROM public."Crowdfunding_Activity" CA,
	     public."Contact" CT,
		 public."CrowdFunding_Category" CC,
		 public."Crowdfunding_Sub_Category" CSC
	WHERE CA."Contact_ID" = CT."Contact_ID"
	  AND CA."Category_ID" = CC."Category_ID"
	  AND CA."Sub_Category_ID" = CSC."Sub_Category_ID"
;