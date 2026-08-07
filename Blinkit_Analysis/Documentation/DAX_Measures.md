# 📊 DAX Measures Documentation

This document contains the key DAX measures used in the **Blinkit Business Analytics Dashboard**.

---

# Executive Dashboard

## Total Revenue

```DAX
Total Revenue =
SUM(Fact_Orders[order_total])
```

**Purpose**

Calculates the total revenue generated from all customer orders.

---

## Total Orders

```DAX
Total Orders =
COUNTROWS(Fact_Orders)
```

**Purpose**

Returns the total number of customer orders.

---

## Average Order Value (AOV)

```DAX
Average Order Value =
DIVIDE(
    [Total Revenue],
    [Total Orders],
    0
)
```

**Purpose**

Measures the average revenue generated per order.

---

## Total Customers

```DAX
Total Customers =
DISTINCTCOUNT(Dim_Customers[customer_id])
```

**Purpose**

Counts the number of unique customers.

---

## Revenue Growth %

```DAX
Revenue Growth % =
DIVIDE(
    [Total Revenue] - [Previous Month Revenue],
    [Previous Month Revenue],
    0
)
```

**Purpose**

Measures month-over-month revenue growth.

---

# Sales Dashboard

## Units Sold

```DAX
Units Sold =
SUM(Fact_Order_Items[quantity])
```

**Purpose**

Calculates the total quantity of products sold.

---

## Products Sold

```DAX
Products Sold =
DISTINCTCOUNT(Fact_Order_Items[product_id])
```

**Purpose**

Counts the number of unique products sold.

---

## Average Items per Order

```DAX
Average Items per Order =
DIVIDE(
    SUM(Fact_Order_Items[quantity]),
    [Total Orders],
    0
)
```

**Purpose**

Shows the average number of items purchased in each order.

---

# Delivery Dashboard

## Total Deliveries

```DAX
Total Deliveries =
COUNTROWS(Fact_Delivery)
```

**Purpose**

Counts all delivery records.

---

## On-Time Deliveries

```DAX
On-Time Deliveries =
CALCULATE(
    COUNTROWS(Fact_Delivery),
    Fact_Delivery[delivery_status] = "On Time"
)
```

**Purpose**

Counts deliveries completed within the promised delivery time.

---

## On-Time Delivery %

```DAX
On-Time Delivery % =
DIVIDE(
    [On-Time Deliveries],
    [Total Deliveries],
    0
)
```

**Purpose**

Measures delivery efficiency.

---

## Average Delivery Time

```DAX
Average Delivery Time =
AVERAGE(Fact_Delivery[delivery_time_minutes])
```

**Purpose**

Calculates the average delivery duration.

---

## Average Distance

```DAX
Average Distance =
AVERAGE(Fact_Delivery[distance_km])
```

**Purpose**

Measures the average delivery distance.

---

# Customer Dashboard

## Average Rating

```DAX
Average Rating =
AVERAGE(Fact_Feedback[rating])
```

**Purpose**

Calculates the average customer rating.

---

## Total Feedback

```DAX
Total Feedback =
COUNTROWS(Fact_Feedback)
```

**Purpose**

Counts all customer feedback records.

---

## Positive Feedback

```DAX
Positive Feedback =
CALCULATE(
    COUNTROWS(Fact_Feedback),
    Fact_Feedback[sentiment] = "Positive"
)
```

**Purpose**

Counts customer feedback with positive sentiment.

---

## Positive Sentiment %

```DAX
Positive Sentiment % =
DIVIDE(
    [Positive Feedback],
    [Total Feedback],
    0
)
```

**Purpose**

Measures the percentage of positive customer feedback.

---

## Average Orders per Customer

```DAX
Average Orders per Customer =
AVERAGE(Dim_Customers[total_orders])
```

**Purpose**

Calculates customer purchasing frequency.

---

# Inventory Dashboard

## Total Stock Received

```DAX
Total Stock Received =
SUM(Fact_Inventory[stock_received])
```

**Purpose**

Calculates total inventory received.

---

## Damaged Stock

```DAX
Damaged Stock =
SUM(Fact_Inventory[damaged_stock])
```

**Purpose**

Measures inventory damaged during operations.

---

## Damage %

```DAX
Damage % =
DIVIDE(
    [Damaged Stock],
    [Total Stock Received],
    0
)
```

**Purpose**

Calculates the percentage of damaged inventory.

---

# Marketing Dashboard

## Marketing Spend

```DAX
Marketing Spend =
SUM(Fact_Marketing[spend])
```

**Purpose**

Calculates total campaign expenditure.

---

## Campaign Revenue

```DAX
Campaign Revenue =
SUM(Fact_Marketing[revenue_generated])
```

**Purpose**

Calculates revenue generated through marketing campaigns.

---

## ROAS

```DAX
ROAS =
DIVIDE(
    [Campaign Revenue],
    [Marketing Spend],
    0
)
```

**Purpose**

Measures Return on Advertising Spend.

---

## Conversion Rate

```DAX
Conversion Rate =
DIVIDE(
    SUM(Fact_Marketing[conversions]),
    SUM(Fact_Marketing[clicks]),
    0
)
```

**Purpose**

Calculates the percentage of clicks that converted into successful outcomes.

---

# Notes

- All measures are dynamic and respond to report filters and slicers.
- Measures are organized by business function to improve maintainability.
- DAX measures were preferred over calculated columns wherever possible to optimize model performance.
- The data model follows a Star Schema design to support efficient calculations and reporting.
