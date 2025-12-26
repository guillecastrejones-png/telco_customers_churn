# Telco Customer Churn Analysis

## Contexto

Este proyecto analiza el churn de clientes en una empresa de telecomunicaciones con el objetivo de entender dónde se concentra la pérdida de clientes y qué factores están más relacionados con ella.

El enfoque del proyecto es intencionadamente práctico. No se trata de un ejercicio académico ni de aplicar técnicas complejas sin necesidad, sino de trabajar el dataset como lo haría un analista de datos junior en un entorno real: entender los datos, transformarlos correctamente, validar resultados y comunicar conclusiones de forma clara.

---

## Objetivo del análisis

Responder a preguntas de negocio concretas, entre ellas:

- ¿Cuál es la tasa de churn global?
- ¿En qué tipo de contratos se concentra más el abandono?
- ¿Influye la antigüedad del cliente en el churn?
- ¿Existen diferencias claras según el tipo de servicio o el segmento senior?
- ¿Qué patrones pueden ayudar a priorizar acciones de retención?

---

## Dataset

- Origen: Kaggle — Telco Customer Churn  
- Tamaño: aproximadamente 7.000 clientes  
- Contenido: información de clientes, contratos, servicios, facturación y churn  

El dataset se ha tratado como si fueran datos reales de negocio, prestando especial atención a los tipos de datos, valores categóricos y coherencia entre métricas.

---

## Herramientas y enfoque

- PostgreSQL  
  - Diseño del esquema  
  - Consultas analíticas  
  - Generación de tablas procesadas  

- Python (pandas)  
  - Validación de resultados obtenidos en SQL  
  - Preparación de datasets finales para visualización  

- Tableau  
  - Construcción del dashboard  
  - Visualización de KPIs y patrones de churn  

- Git / GitHub  
  - Control de versiones  
  - Documentación del proyecto  

El flujo de trabajo seguido ha sido:

SQL → Python → Dashboard

Evitando duplicar lógica y manteniendo una única fuente de verdad.

---

## Estructura del proyecto

telco-churn-analysis/
│
├── data/
│ ├── raw/ # Dataset original
│ └── processed/ # Datos finales listos para análisis y dashboard
│
├── sql/
│ ├── 01_schema.sql
│ ├── 02_load_data.sql
│ └── 03_analysis.sql
│
├── notebooks/
│ ├── 01_data_exploration.ipynb
│ ├── 02_analysis.ipynb
│ └── 03_validation.ipynb
│
├── dashboard/
│ └── tableau/
│
└── README.md



---

## Análisis realizado

El análisis se ha centrado en los siguientes aspectos:

- Tasa de churn global
- Distribución churn vs no churn
- Churn por tipo de contrato
- Churn por antigüedad del cliente
- Churn por servicio de internet
- Churn por segmento senior

Las métricas se calcularon inicialmente en SQL y se validaron posteriormente en Python para asegurar coherencia antes de llevarlas al dashboard.

---

## Dashboard

Nombre del dashboard:  
**Telco Customer Churn Overview**

El dashboard está diseñado para ser claro, visual y fácil de interpretar, incluso para perfiles no técnicos.

### KPIs principales
- Total Customers
- Churn Rate (%)

### Principales insights
- El churn se concentra especialmente en contratos month-to-month.
- Los clientes con menor antigüedad presentan tasas de abandono significativamente más altas.
- El servicio de fibra óptica muestra un churn superior al resto.
- El segmento senior presenta una tasa de churn más elevada que los clientes no senior.

El objetivo del dashboard no es mostrar muchos gráficos, sino contar una historia clara que facilite la toma de decisiones.

---

## Conclusiones

El churn no afecta a todos los clientes por igual. Existen patrones claros que permiten identificar segmentos con mayor riesgo de abandono, especialmente en las primeras etapas del ciclo de vida del cliente.

Los resultados sugieren que acciones de retención tempranas, enfocadas en contratos de corta duración y determinados servicios, podrían tener un impacto relevante.

---

## Limitaciones

- El dataset no incluye información sobre campañas o acciones de retención.
- No se ha realizado modelado predictivo, ya que quedaba fuera del alcance del proyecto.
- El análisis se basa en datos históricos agregados.

---

## Aprendizajes personales

Este proyecto me ha permitido:

- Consolidar un flujo end-to-end realista
- Mejorar la validación cruzada entre SQL y Python
- Diseñar dashboards con foco en negocio
- Practicar la comunicación de resultados, no solo el análisis técnico

---

## Nota final

Este proyecto forma parte de mi portfolio como analista de datos junior.  
El foco ha estado en realizar un trabajo claro, honesto y bien explicado, priorizando la comprensión del problema sobre la complejidad técnica.

