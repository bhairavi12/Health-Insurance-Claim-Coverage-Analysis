SELECT * FROM [dbo].[healthcare_dataset]


Create view Heathcare As 
SELECT * FROM [dbo].[healthcare_dataset]

Select * from Heathcare

SELECT INITCAP(Name) AS CapitalizedName
FROM Heathcare;

SELECT UPPER(LEFT(,1))+LOWER(SUBSTRING(word,2,LEN(word))) FROM [yourtable]


------------------------------------------


Select * from [dbo].[healthcare_dataset]


--Total Approved Billing
Select sum([Billing_Amount] )from healthcare_dataset
where [Billing_Amount]<=45000


--Total Rejected Billing
Select sum([Billing_Amount] )from healthcare_dataset
where [Billing_Amount]>=45000

--Avg Claim amount
Select avg([Billing_Amount] )from healthcare_dataset
where [Billing_Amount]<=45000


WITH ClaimsSummary AS (
    SELECT 
        COUNT(*) AS TotalClaims,
        COUNT(CASE WHEN [Billing_Amount]<=45000 THEN 1 END) AS ApprovedClaims
    FROM [dbo].[healthcare_dataset]
)
SELECT 
    ApprovedClaims * 1.0 / TotalClaims AS ClaimApprovalRate
FROM ClaimsSummary;