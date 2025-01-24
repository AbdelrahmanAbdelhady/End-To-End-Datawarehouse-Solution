<h1> Gravity Books Data Warehouse Project </h1>
<h3>1. Problem Overview</h3>
    Gravity Bookstore is a fictional bookstore that needed a robust system to manage and analyze its data effectively. The bookstore had a transactional database (gravity_books) that stored           
    information about books, customers, orders, and sales. However, the existing system lacked the capability to perform advanced analytics, generate insightful reports, and track historical changes       in data. The goal of this project was to design and implement a data warehouse (gravity_books_dwh) and create Business Intelligence (BI) reports to help the bookstore gain valuable insights into       its operations.

<h3>2. Project Overview</h3>
  The project involved several key steps:


**Modeling and building a Data Warehouse (DWH)**: Transforming the transactional database into a structured data warehouse using a star schema approach.

**ETL Process**: Developing an SSIS (SQL Server Integration Services) project to extract, transform, and load data from the transactional database into the data warehouse.

**OLAP Cube Creation**: Designing an SSAS (SQL Server Analysis Services) project in Tabular mode to create a multidimensional cube for advanced analytics.

**BI Reporting**: Using Power BI to create self-service reports and dashboards for business users to explore the data and gain insights.

<h3>3. Source Database Overview</h3>

![ERD of OLTP DB](https://github.com/user-attachments/assets/a003941b-9026-4491-bc13-d4981a60c01c)


The source database, `gravity_books`, is a transactional database that contains the following tables:
- **book**: Stores information about books available in the store.
- **book_author**: Maps books to their authors (many-to-many relationship).
- **author**: Contains details about authors.
- **book_language**: Lists the languages of the books.
- **publisher**: Contains information about publishers.
- **customer**: Stores customer details.
- **customer_address**: Maps customers to their addresses (many-to-many relationship).
- **address_status**: Tracks the status of addresses (e.g., current or old).
- **address**: Contains address details.
- **country**: Lists countries for addresses.
- **cust_order**: Stores customer orders.
- **order_line**: Maps orders to the books ordered.
- **shipping_method**: Lists possible shipping methods.
- **order_history**: Tracks the history of orders (e.g., ordered, cancelled, delivered).
- **order_status**: Lists possible order statuses.

<h3>4. Technologies Used Overview</h3>
The following technologies were used in this project:

**SQL Server**: For managing the transactional database (gravity_books) and the data warehouse (Gravity_Books_DWH).

**SSIS (SQL Server Integration Services)**: For building the ETL process to populate the data warehouse.

**SSAS (SQL Server Analysis Services)**: For creating the OLAP cube in Multidimensional mode.

**Power BI**: For creating self-service BI reports and dashboards.


<h3>5. Data Warehouse Modeling</h3>
    
![Gravity Books Data Warehouse model](https://github.com/user-attachments/assets/8cc20fa2-53cf-4a4b-941a-58eff16078bd)

The data warehouse, gravity_books_dwh, was designed using a snowflake schema approach. The snowflake schema was chosen because it normalizes the dimension tables, reducing data redundancy and          improving data integrity. This schema is particularly useful when dealing with complex relationships and large datasets. The schema consists of:

**Fact Tables**: Central tables that store quantitative data (e.g., sales facts).

**Dimension Tables**: Surrounding tables that store descriptive attributes (e.g., customer, book, author, date dimensions). These dimensions are normalized, meaning they are split into multiple related tables to eliminate redundancy and handle complex relationships.

A date dimension was added to track historical changes and enable time-based analysis.

<h3>6. ETL Process (SSIS) </h3>

**Extract**: I extracted data from the gravity_books transactional database.

**Transform**: I transformed the data to fit the snowflake schema model, including normalizing dimension tables and ensuring data integrity. Special attention was given to handling the many-to-many relationship between authors and books during the transformation process.

**Load**: I loaded the transformed data into the gravity_books_dwh data warehouse.













