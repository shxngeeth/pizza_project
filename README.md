

## Overview
Designed and built a relational database for a fictional pizza restaurant, 
covering orders, customers, inventory, recipes, and staff scheduling. 
Wrote custom SQL queries to answer real business questions around 
ingredient costs and staff labor costs.

## Tools
MySQL, MySQL Workbench

## What I Did
- Designed a normalized relational schema (10 tables) with appropriate 
  primary/foreign key relationships
- Built the database using DDL (CREATE TABLE, ALTER TABLE for constraints)
- Wrote custom SQL queries using JOINs, subqueries, aggregation, and 
  calculated fields to answer business questions

## Business Questions Answered
1. What is the delivery cost/address breakdown per order? (multi-table JOIN)
2. What is the ingredient cost per item sold? (subquery + cost calculation)
3. What is the labor cost per staff shift? (time calculations + JOIN)

## Schema
<img width="1919" height="1079" alt="image" src="https://github.com/user-attachments/assets/64ce0cb5-3769-44f0-936f-8c4676abc6ea" />



## Key Query Example
```sql
select 
s2.ing_name,
s2.ordered_weight,
ing.ing_weight*inv.quantity as total_inv_weight,
(ing.ing_weight*inv.quantity)-s2.ordered_weight as remaining_weight
from (select 
ing_id,
ing_name,
sum(ordered_weight) as ordered_weight
from stock1
group by ing_name, ing_id) s2
left join inventory inv on inv.item_id=s2.ing_id
left join ingredient ing on ing.ing_id=s2.ing_id
```

## What I Learned
- Relational database design and normalization
- Debugging real SQL errors (encoding issues, foreign key constraints, 
  syntax errors)
- Writing multi-table JOINs and subqueries for business analysis

## Credit
Project based on the tutorial by Learn BI Online (Adam Finer):
https://youtu.be/0rB_memC-dA
