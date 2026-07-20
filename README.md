# Bank Customer Churn Analysis

SQL analysis of a bank's customer data (10,000 records) to understand 
patterns behind customer churn using MySQL.

## Business Questions

1. Which country has the highest churn rate?
2. Are inactive members more likely to churn?
3. How does credit score differ between churned and retained customers?
4. Does the number of bank products affect churn likelihood?
5. Which age group has the highest churn rate?
6. Does having a credit card relate to customer loyalty?

## Tools Used
- MySQL
- Sequel Ace

## Key Insights

- Germany has the highest churn rate (32.44%) — nearly double that of Spain (16.67%) and France (16.15%), despite Germany and Spain having a similar customer base size. This signals a market-specific issue worth investigating.

- Inactive members churn almost 2x more than active members (26.85% vs 14.27%), making member engagement one of the strongest churn predictors in this dataset.

- Credit score is NOT a strong differentiator — churned customers (645.35 avg) and retained customers (651.85 avg) have nearly identical credit scores, challenging the common assumption that lower credit customers are more likely to leave.

- Number of bank products shows a non-linear pattern: customers with 2 products are the most loyal (7.58% churn), while customers with 3+ products show extremely high churn (82.71% and 100%), though these segments have small sample sizes (266 and 60 customers respectively) and warrant further investigation.

- The 46-60 age group has the highest churn rate (51.12%), far above other age groups. Customers under 30 are the most loyal (7.56% churn).

- Credit card ownership has virtually no impact on churn (20.81% vs 20.18%), contrary to common assumptions about credit card holders being more "locked in."
  
## Queries

All queries is in file `queries.sql'
