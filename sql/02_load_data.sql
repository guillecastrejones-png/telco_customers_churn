/*
02_load_data.sql

Este script documenta el proceso de carga del dataset Telco Customer Churn
en una tabla de staging (raw_telco_churn).

La carga de datos se realizó desde un archivo Excel (.xlsx) utilizando
Python (pandas + SQLAlchemy), debido a problemas de encoding y formato
detectados en la importación directa vía COPY.

Este archivo incluye:
- Definición de la tabla de staging
- Validaciones posteriores a la carga
*/

SET search_path TO telco;

CREATE TABLE IF NOT EXISTS raw_telco_churn (
    customer_id VARCHAR(20),
    gender VARCHAR(10),
    senior_citizen INTEGER,
    partner BOOLEAN,
    dependents BOOLEAN,
    tenure INTEGER,
    phone_service BOOLEAN,
    multiple_lines BOOLEAN,
    internet_service VARCHAR(30),
    online_security BOOLEAN,
    online_backup BOOLEAN,
    device_protection BOOLEAN,
    tech_support BOOLEAN,
    streaming_tv BOOLEAN,
    streaming_movies BOOLEAN,
    contract VARCHAR(30),
    paperless_billing BOOLEAN,
    payment_method VARCHAR(50),
    monthly_charges NUMERIC(10,2),
    total_charges NUMERIC(10,2),
    churn BOOLEAN
);

-- Número total de registros cargados
SELECT COUNT(*) AS total_rows
FROM raw_telco_churn;

-- Distribución de churn
SELECT
    churn,
    COUNT(*) AS customers
FROM raw_telco_churn
GROUP BY churn;

-- Comprobación de valores nulos en cargos
SELECT
    COUNT(*) AS null_total_charges
FROM raw_telco_churn
WHERE total_charges IS NULL;
