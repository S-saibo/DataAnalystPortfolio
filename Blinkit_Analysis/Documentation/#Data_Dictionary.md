# Data Dictionary

## Project

**Blinkit Business Analytics Dashboard**

This document describes the datasets, tables, columns, and business definitions used throughout the Power BI solution.

---

# Data Model Overview

The project follows a **Star Schema** consisting of:

### Dimension Tables

- Dim Date
- Dim Customers
- Dim Products

### Fact Tables

- Fact Orders
- Fact Order Items
- Fact Delivery
- Fact Inventory
- Fact Feedback
- Fact Marketing

---

# Dimension Tables

---

## Dim Customers

**Description**

Contains customer demographic and behavioral information.

| Column | Data Type | Description |
|---------|-----------|-------------|
| customer_id | Integer | Unique customer identifier (Primary Key) |
| customer_name | Text | Customer name |
| email | Text | Customer email address |
| phone | Text | Customer phone number |
| address | Text | Customer address |
| area | Text | Customer locality |
| pincode | Integer | Postal code |
| registration_date | Date | Date customer registered |
| customer_segment | Text | Customer category (Premium, Regular, etc.) |
| total_orders | Integer | Total orders placed by customer |
| avg_order_value | Decimal | Average spending per order |

---

## Dim Products

**Description**

Contains product master information.

| Column | Data Type | Description |
|---------|-----------|-------------|
| product_id | Integer | Unique product identifier |
| product_name | Text | Product name |
| category | Text | Product category |
| brand | Text | Brand name |
| price | Decimal | Selling price |
| mrp | Decimal | Maximum Retail Price |
| margin_percentage | Decimal | Profit margin |
| shelf_life_days | Integer | Product shelf life |
| min_stock_level | Integer | Minimum inventory threshold |
| max_stock_level | Integer | Maximum inventory threshold |

---

## Dim Date

**Description**

Calendar table used for time intelligence.

| Column | Description |
|---------|-------------|
| Date | Calendar Date |
| Day | Day Number |
| Month | Month Name |
| Month Number | Month Order |
| Quarter | Quarter |
| Year | Calendar Year |
| Month-Year | Reporting Month |

---

# Fact Tables

---

## Fact Orders

**Description**

Stores every customer order.

| Column | Description |
|---------|-------------|
| order_id | Unique Order ID |
| customer_id | Customer Reference |
| order_date | Order Date |
| promised_delivery_time | Promised Delivery Time |
| actual_delivery_time | Actual Delivery Time |
| delivery_status | Delivery Status |
| order_total | Total Order Amount |
| payment_method | Payment Type |
| delivery_partner_id | Delivery Partner |
| store_id | Store Identifier |

---

## Fact Order Items

**Description**

Contains product-level sales information.

| Column | Description |
|---------|-------------|
| order_id | Order Reference |
| product_id | Product Reference |
| quantity | Quantity Sold |
| unit_price | Selling Price |

---

## Fact Delivery

**Description**

Contains delivery performance metrics.

| Column | Description |
|---------|-------------|
| order_id | Order Reference |
| delivery_partner_id | Delivery Partner |
| promised_time | Promised Delivery |
| actual_time | Actual Delivery |
| delivery_time_minutes | Delivery Duration |
| distance_km | Delivery Distance |
| delivery_status | Delivery Status |
| reasons_if_delayed | Delay Reason |

---

## Fact Inventory

**Description**

Tracks daily inventory movement.

| Column | Description |
|---------|-------------|
| product_id | Product Reference |
| date | Inventory Date |
| stock_received | Stock Received |
| damaged_stock | Damaged Stock |

---

## Fact Feedback

**Description**

Stores customer reviews and ratings.

| Column | Description |
|---------|-------------|
| feedback_id | Feedback ID |
| order_id | Order Reference |
| customer_id | Customer Reference |
| rating | Customer Rating |
| feedback_text | Customer Review |
| feedback_category | Complaint Category |
| sentiment | Feedback Sentiment |
| feedback_date | Feedback Date |

---

## Fact Marketing

**Description**

Stores campaign performance metrics.

| Column | Description |
|---------|-------------|
| campaign_id | Campaign Identifier |
| campaign_name | Campaign Name |
| date | Campaign Date |
| target_audience | Target Audience |
| channel | Marketing Channel |
| impressions | Advertisement Views |
| clicks | Advertisement Clicks |
| conversions | Successful Conversions |
| spend | Marketing Cost |
| revenue_generated | Campaign Revenue |
| roas | Return on Ad Spend |

---

# Relationships

| From | To | Relationship |
|------|----|--------------|
| Dim Customers | Fact Orders | One-to-Many |
| Dim Customers | Fact Feedback | One-to-Many |
| Dim Products | Fact Order Items | One-to-Many |
| Dim Products | Fact Inventory | One-to-Many |
| Dim Date | Fact Orders | One-to-Many |
| Dim Date | Fact Inventory | One-to-Many |
| Dim Date | Fact Marketing | One-to-Many |

---

# Business Definitions

| Metric | Definition |
|--------|------------|
| Revenue | Total value of all customer orders |
| Total Orders | Total number of customer orders |
| Average Order Value (AOV) | Revenue divided by total orders |
| Units Sold | Total quantity of products sold |
| On-Time Delivery % | Percentage of deliveries completed on time |
| Average Delivery Time | Mean delivery duration in minutes |
| Customer Rating | Average rating provided by customers |
| Positive Sentiment % | Percentage of positive customer feedback |
| ROAS | Revenue generated divided by marketing spend |

---

# Data Quality Checks Performed

Before building the dashboards, the following checks were completed:

- Verified row counts across all datasets.
- Validated primary key uniqueness.
- Checked for duplicate records.
- Identified and reviewed missing values.
- Validated date ranges.
- Confirmed relationship integrity.
- Standardized column names and data types.
- Implemented a Star Schema for efficient reporting.

---

# Notes

- All dates are connected through a centralized Date Dimension.
- DAX Measures are used instead of calculated columns wherever possible to improve model performance.
- The model follows Microsoft Power BI best practices for business reporting.
