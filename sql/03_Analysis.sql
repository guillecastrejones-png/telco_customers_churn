/*
03_analysis.sql

Análisis exploratorio y descriptivo del churn de clientes
para una empresa de telecomunicaciones.

Objetivos:
- Calcular tasa de churn
- Analizar churn por contrato, servicios y facturación
- Identificar patrones relevantes para negocio

Dataset: Telco Customer Churn
Nivel de análisis: descriptivo (sin modelos predictivos)
*/

SELECT
    COUNT(*) AS total_customers
FROM telco.raw_telco_churn;

SELECT
    ROUND(
        100.0 * SUM(CASE WHEN churn THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS churn_rate_percentage
FROM telco.raw_telco_churn;

SELECT
    churn,
    COUNT(*) AS customers
FROM telco.raw_telco_churn
GROUP BY churn;

SELECT
    contract,
    COUNT(*) AS customers,
    ROUND(
        100.0 * SUM(CASE WHEN churn THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS churn_rate_percentage
FROM telco.raw_telco_churn
GROUP BY contract
ORDER BY churn_rate_percentage DESC;

SELECT
    internet_service,
    COUNT(*) AS customers,
    ROUND(
        100.0 * SUM(CASE WHEN churn THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS churn_rate_percentage
FROM telco.raw_telco_churn
GROUP BY internet_service
ORDER BY churn_rate_percentage DESC;

SELECT
    CASE
        WHEN tenure < 12 THEN '0-12 meses'
        WHEN tenure < 24 THEN '12-24 meses'
        WHEN tenure < 48 THEN '24-48 meses'
        ELSE '48+ meses'
    END AS tenure_group,
    COUNT(*) AS customers,
    ROUND(
        100.0 * SUM(CASE WHEN churn THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS churn_rate_percentage
FROM telco.raw_telco_churn
GROUP BY tenure_group
ORDER BY tenure_group;

SELECT
    churn,
    ROUND(AVG(monthly_charges), 2) AS avg_monthly_charges
FROM telco.raw_telco_churn
GROUP BY churn;

SELECT
    senior_citizen,
    COUNT(*) AS customers,
    ROUND(
        100.0 * SUM(CASE WHEN churn THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS churn_rate_percentage
FROM telco.raw_telco_churn
GROUP BY senior_citizen;

SELECT
    contract,
    internet_service,
    COUNT(*) AS customers,
    ROUND(
        100.0 * SUM(CASE WHEN churn THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS churn_rate_percentage,
    ROUND(AVG(monthly_charges), 2) AS avg_monthly_charges
FROM telco.raw_telco_churn
GROUP BY contract, internet_service
ORDER BY churn_rate_percentage DESC;











