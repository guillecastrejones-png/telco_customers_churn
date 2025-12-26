CREATE SCHEMA IF NOT EXISTS telco;
SET search_path TO telco;

CREATE TABLE customers(
  customer_id VARCHAR(20) PRIMARY KEY,
  gender VARCHAR(10),
  senior_citizen BOOLEAN,
  partner BOOLEAN,
  dependents BOOLEAN);

CREATE TABLE contracts (
  contract_id SERIAL PRIMARY KEY,
  customer_id VARCHAR(20) REFERENCES customers(customer_id),
  contract_type VARCHAR(30),
  paperless_billing BOOLEAN,
  payment_method VARCHAR(50));

CREATE TABLE services(
  service_id SERIAL PRIMARY KEY,
  customer_id VARCHAR(20) REFERENCES customers(customer_id),
  internet_service VARCHAR(30),
  online_security BOOLEAN,
  online_backup BOOLEAN,
  divice_protection BOOLEAN,
  tech_support BOOLEAN,
  streaming_tv BOOLEAN,
  streaming_movies BOOLEAN,
  multiple_lines BOOLEAN);

CREATE TABLE billing (
  billing_id SERIAL PRIMARY KEY,
   customer_id VARCHAR(20) REFERENCES customers(customer_id),
   tenure_months INTEGER,
   monthly_charges NUMERIC(10,2),
   otal_charges NUMERIC(10,2));

CREATE TABLE churn_status (
    customer_id VARCHAR(20) PRIMARY KEY REFERENCES customers(customer_id),
    churn BOOLEAN);

SELECT table_name
FROM information_schema.tables
WHERE table_schema = 'telco';

