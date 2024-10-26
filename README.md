# Complaint Management System

## Overview

This repository contains the project files for the *Complaint Management System*, developed as part of the Data Management for Analytics course. The project focuses on designing and implementing a database system for a complaint management system, particularly useful for small to medium-sized businesses in regulated industries.

## Repository Structure

- **Analysis Python**
  - Contains screenshots of data analysis performed using Python on the database tables.

- **Documents**
  - Includes various project documents such as:
    - Conceptual Model
    - DDL Statements
    - Implementation in SQL
    - Implementation in NoSQL
    - Logical Model
    - Project Report

- **SQL Files**
  - Contains SQL scripts for:
    - Creating tables
    - Inserting data
    - Performing SELECT queries

- **Screenshots - SELECT**
  - Contains images of different SELECT statement results from various tables.

## Project Components

### Database Design and Implementation

1. **Conceptual Data Modeling**
   - Utilized EER and UML diagrams to identify entities and attributes.
   - Mapped these models into a relational schema.

2. **SQL Implementation**
   - Implemented the relational model in MySQL.
   - Executed complex queries to extract insights from the database.

3. **NoSQL Implementation**
   - Partial implementation of the database in NoSQL to explore flexibility and scalability.

### Data Analysis with Python

- Connected MySQL database to Python using `mysql.connector`.
- Analyzed data using pandas and visualized results with matplotlib.
- Examples include graphs of non-conformances per supplier and customer orders per manufacturing site.

## Summary and Recommendations

The project successfully demonstrates a foundational complaint management system that can be adapted by companies to meet regulatory requirements. Future improvements could include expanding the NoSQL implementation and integrating additional data such as design history files for comprehensive risk assessments.
