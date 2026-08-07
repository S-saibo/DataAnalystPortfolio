Blinkit Business Analytics Project Architecture



**Project Overview**



This project follows a complete Business Intelligence workflow, transforming raw operational data into interactive dashboards that support data-driven decision-making.



The architecture demonstrates how data flows from source systems through data preparation, modeling, analysis, and visualization to generate actionable business insights.



Analytics Workflow

&#x20;                   BUSINESS REQUIREMENT

&#x20;                           │

&#x20;                           ▼

&#x20;               Identify Business Questions

&#x20;                           │

&#x20;                           ▼

&#x20;                 Data Collection (Excel)

&#x20;                           │

&#x20;                           ▼

&#x20;                 Data Quality Assessment

&#x20;     (Duplicates, Nulls, Data Types, Date Validation)

&#x20;                           │

&#x20;                           ▼

&#x20;             Data Cleaning \& Transformation

&#x20;                   (Power Query ETL)

&#x20;                           │

&#x20;                           ▼

&#x20;                 Star Schema Data Modeling

&#x20;       (Fact \& Dimension Tables + Relationships)

&#x20;                           │

&#x20;                           ▼

&#x20;               DAX Measures \& KPI Development

&#x20;                           │

&#x20;                           ▼

&#x20;               Interactive Power BI Dashboards

&#x20;                           │

&#x20;                           ▼

&#x20;            Business Insights \& Recommendations

&#x20;                           │

&#x20;                           ▼

&#x20;             Better Business Decision Making











Phase 1 — Business Understanding



Objective



Understand the business requirements and identify the questions stakeholders want answered.



Questions Answered

How much revenue is generated?

Which products perform best?

Are deliveries on time?

How satisfied are customers?

Is inventory maintained efficiently?

Which marketing campaigns perform best?



Deliverable



Business Requirements Document (BRD)



Phase 2 — Data Collection

Data Sources



The project uses 9 Excel datasets representing different business operations.



Dataset	Department

Orders	Sales

Order Items	Sales

Products	Product Management

Customers	Customer Management

Delivery Performance	Logistics

Customer Feedback	Customer Experience

Inventory	Warehouse

Inventory New	Warehouse

Marketing Performance	Marketing



Deliverable



Raw business datasets



Phase 3 — Data Validation



Before analysis, several quality checks were performed.



Validation Checklist

Row count verification

Duplicate check

Null value analysis

Primary key validation

Data type verification

Date range validation

Relationship verification



Purpose



Ensure reliable and accurate reporting.



Phase 4 — Data Transformation (Power Query)



Power Query was used to clean and prepare the datasets.



Transformations

Standardized column names

Converted data types

Removed unnecessary columns

Trimmed whitespace

Handled missing values

Created calculated columns where required



Deliverable



Clean and analysis-ready tables.



Phase 5 — Data Modeling



A Star Schema was implemented.



Dimension Tables



Dim Date

Dim Customers

Dim Products



Fact Tables



Fact Orders

Fact Order Items

Fact Delivery

Fact Inventory

Fact Feedback

Fact Marketing

Why Star Schema?

Better performance

Simplified relationships

Easier DAX calculations

Industry best practice

Phase 6 — KPI Development



Business metrics created using DAX.



Executive KPIs

Revenue

Orders

Customers

Average Order Value

Revenue Growth

Sales KPIs

Units Sold

Products Sold

Average Items per Order

Delivery KPIs

On-Time Delivery %

Delivery Time

Delivery Distance

Customer KPIs

Average Rating

Positive Sentiment %

Average Orders per Customer

Inventory KPIs

Stock Received

Damaged Stock

Damage %

Marketing KPIs

Campaign Revenue

Marketing Spend

ROAS

Conversion Rate





Phase 7 — Dashboard Development



Six dashboards were developed for different stakeholders.



Dashboard	Primary Audience

Executive	CEO / Leadership

Sales	Sales Manager

Delivery	Operations Manager

Customer	Customer Experience Team

Inventory	Warehouse Manager

Marketing	Marketing Team



Each dashboard was designed to answer a specific set of business questions and support decision-making.





Phase 8 — Business Insights



The dashboards enable stakeholders to:



Executive



Monitor overall business health.



Sales



Identify top-performing products and categories.



Delivery



Track logistics performance and delivery efficiency.



Customer



Understand customer satisfaction and sentiment.



Inventory



Monitor stock movement and damaged inventory.



Marketing



Evaluate campaign effectiveness and return on advertising spend.





Project Outcome



The final solution transforms raw operational data into a centralized Business Intelligence platform that enables stakeholders to:



Monitor business performance

Identify trends

Improve operational efficiency

Enhance customer experience

Support strategic decision-making

