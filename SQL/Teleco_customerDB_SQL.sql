BEGIN;


CREATE TABLE IF NOT EXISTS "Teleco"."Customer"
(
    "customerID" character varying NOT NULL,
    gender text,
    "SeniorCitizen" integer NOT NULL,
    "Partner" text,
    "Dependents" text,
    tenure integer,
    "Churn" text,
    PRIMARY KEY ("customerID")
);

CREATE TABLE IF NOT EXISTS "Teleco"."Services"
(
    "CustomerSVC_id" character varying NOT NULL,
    "OnlineBackup" character varying,
    "DeviceProtection" character varying,
    "StreamingTV" text,
    "StreamingMovies" text,
    "Contract" character varying,
    "TechSupport" text,
    "OnlineSecurity" text,
    PRIMARY KEY ("CustomerSVC_id")
);

CREATE TABLE IF NOT EXISTS "Teleco"."Products"
(
    "customerPrdct_id" character varying NOT NULL,
    "PhoneService" character varying,
    "MultipleLines" character varying,
    "InternetService" character varying,
    PRIMARY KEY ("customerPrdct_id")
);

CREATE TABLE IF NOT EXISTS "Teleco"."Billing"
(
    customer_billing_id character varying NOT NULL,
    "PaperlessBilling" text NOT NULL,
    "PaymentMethod" character varying NOT NULL,
    "MonthlyCharges" double precision NOT NULL,
    "TotalCharges" double precision NOT NULL,
    PRIMARY KEY (customer_billing_id)
);

ALTER TABLE IF EXISTS "Teleco"."Customer"
    ADD FOREIGN KEY ("customerID")
    REFERENCES "Teleco"."Services" ("CustomerSVC_id") MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS "Teleco"."Customer"
    ADD FOREIGN KEY ("customerID")
    REFERENCES "Teleco"."Products" ("customerPrdct_id") MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS "Teleco"."Customer"
    ADD FOREIGN KEY ("customerID")
    REFERENCES "Teleco"."Billing" (customer_billing_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;

END;