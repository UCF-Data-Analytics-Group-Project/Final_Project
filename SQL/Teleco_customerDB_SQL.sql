-- Creating tables for Customer

CREATE TABLE IF NOT EXISTS "Customer"    (
     customerID VARCHAR(20) NOT NULL,
     gender VARCHAR(10),	
	 SeniorCitizen smallint,
	 Partner VARCHAR(4),
	 Dependents VARCHAR(4),
	 tenure integer,
	 Churn  VARCHAR(4), 
     PRIMARY KEY (CustomerID)     
);

-- Creating tables for Services
CREATE TABLE IF NOT EXISTS "Services"  (
     CustomerSVC_id VARCHAR(20) NOT NULL,
     OnlineBackup VARCHAR(20),
	 DeviceProtection VARCHAR(20),		 	 
	 StreamingTV VARCHAR(20),
	 StreamingMovies VARCHAR(20),
	 Contract VARCHAR(20),
	 TechSupport VARCHAR(20),
	 OnlineSecurity VARCHAR(20),
     PRIMARY KEY (CustomerSVC_id)     
);

-- Creating tables for Products
CREATE TABLE IF NOT EXISTS "Products" (
     customerPrdct_id VARCHAR(20) NOT NULL,
     PhoneService VARCHAR(20),
	 MultipleLines VARCHAR(20),
	 InternetService VARCHAR(20),	
     PRIMARY KEY (customerPrdct_id)     
);


-- Creating tables for Billing Department
Drop TABLE if EXISTS
CREATE TABLE Billing (
     customer_billing_id VARCHAR(20) NOT NULL,
     PaperBilling VARCHAR(40),
	 PaymentMethod VARCHAR(40),
	 MonthlyCharges double PRECISION,
	 TotalCharges DOUBLE PRECISION,
     PRIMARY KEY (customer_billing_id)     
);

