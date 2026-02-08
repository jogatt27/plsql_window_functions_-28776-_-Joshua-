# 📊 SQL JOINs & Window Functions Project

## Real Estate Management Case Study

**Course:** Database Development with PL/SQL (INSY 8311)
**Student:** Joshua M. GATERA
**Student ID:** 28776
**Instructor:** Eric Maniraguha

---

## 🔹 Step 1 — Business Problem

### Business Context

This project models a real estate management company responsible for managing multiple residential and commercial buildings. The property management department oversees tenant relations, rental tracking, and occupancy optimization across different locations.

### Data Challenge

Although rental and tenant information is collected, management struggles to identify occupancy trends, tenant retention patterns, and high-performing properties. Without structured analytics, pricing decisions, marketing strategies, and investment priorities become inefficient.

### Expected Outcome

By applying SQL JOINs and window functions, the system will:

* Identify top-performing properties by revenue
* Track rental trends over time
* Measure tenant retention patterns
* Segment tenants based on spending behavior
* Support data-driven property management decisions

---

## 🔹 Step 2 — Success Criteria

The system achieves the following measurable goals using SQL window functions:

1. Identify top properties by region → `RANK()`
2. Calculate running monthly rental totals → `SUM() OVER()`
3. Measure month-over-month rental growth → `LAG()` / `LEAD()`
4. Segment tenants into quartiles → `NTILE(4)`
5. Compute moving averages of rental income → `AVG() OVER()`

---

## 🔹 Step 3 — Database Schema

The database contains three related tables:

### Properties

Stores building details.

### Tenants

Stores tenant demographic and rental information.

### Rentals

Tracks lease transactions and payments.

### Example Schema (Oracle-Compatible)

```sql
CREATE TABLE properties (
    property_id NUMBER PRIMARY KEY,
    property_name VARCHAR2(100),
    region VARCHAR2(50)
);

CREATE TABLE tenants (
    tenant_id NUMBER PRIMARY KEY,
    tenant_name VARCHAR2(100),
    contact VARCHAR2(100)
);

CREATE TABLE rentals (
    rental_id NUMBER PRIMARY KEY,
    property_id NUMBER,
    tenant_id NUMBER,
    rental_date DATE,
    amount NUMBER,
    FOREIGN KEY (property_id) REFERENCES properties(property_id),
    FOREIGN KEY (tenant_id) REFERENCES tenants(tenant_id)
);
```

### ER Diagram

📸 Included in `"C:\Users\Joshua mg\Desktop\plnsql screenshots\ERDiagram.png"`

---

## 🔹 Step 4 — SQL JOIN Analysis

### INNER JOIN

Retrieves valid rental transactions linking tenants and properties.

**Insight:** Ensures only consistent relational records are analyzed.

---

### LEFT JOIN

Identifies tenants without rental history.

**Insight:** Reveals customer engagement gaps.

---

### RIGHT / FULL JOIN

Detects properties with no rental activity.

**Insight:** Highlights underperforming assets.

---

### SELF JOIN

Compares properties within the same region.

**Insight:** Supports regional performance benchmarking.

---

## 🔹 Step 5 — Window Functions Analysis

### Ranking Properties

Ranks properties by total rental revenue.

**Insight:** Identifies top-performing buildings.

---

### Running Totals

Tracks cumulative rental income over time.

**Insight:** Supports financial forecasting.

---

### Month-to-Month Growth

Measures rental fluctuations.

**Insight:** Detects seasonal demand patterns.

---

### Tenant Segmentation

Groups tenants by spending quartiles.

**Insight:** Enables targeted retention strategies.

---

### Moving Average

Smooths rental trends.

**Insight:** Improves long-term planning.

---

## 🔹 Step 6 — Results Analysis

### Descriptive

High-performing properties generate the majority of rental income.

### Diagnostic

Regional demand and amenities influence occupancy rates.

### Prescriptive

Management should invest in high-demand areas and improve low-performing properties.

---

## 🔹 Step 7 — Repository Structure

```
plsql_window_functions_project/
│── schema.sql
│── joins.sql
│── window_functions.sql
│── README.md
│── screenshots/
```

---

## 🔹 Key Insights

* Revenue concentration exists among top properties
* Tenant behavior varies by region
* Analytical segmentation improves planning

---

## 🔹 References

* Oracle SQL Documentation
* Academic database design resources
* Property management analytics literature

---

## 🔹 Academic Integrity Statement

“All sources were properly cited. Implementations and analysis represent original work. No AI-generated content was copied without attribution or adaptation.”

---

## 🔹 Evidence of Work

Screenshots demonstrating SQL execution and results are stored in the `/screenshots` folder.
