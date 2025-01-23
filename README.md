<h1> Gravity Books Data Warehouse Project </h1>
<h3>1. Problem Overview</h3>
Gravity Bookstore is a fictional bookstore that needed a robust system to manage and analyze its data effectively. The bookstore had a transactional database (gravity_books) that stored information about books, customers, orders, and sales. However, the existing system lacked the capability to perform advanced analytics, generate insightful reports, and track historical changes in data. The goal of this project was to design and implement a data warehouse (gravity_books_dwh) and create Business Intelligence (BI) reports to help the bookstore gain valuable insights into its operations.

<h3>2. Project Overview</h3>
The project involved several key steps:

**Modeling and building a Data Warehouse (DWH)**: Transforming the transactional database into a structured data warehouse using a star schema approach.

**ETL Process**: Developing an SSIS (SQL Server Integration Services) project to extract, transform, and load data from the transactional database into the data warehouse.

**OLAP Cube Creation**: Designing an SSAS (SQL Server Analysis Services) project in Tabular mode to create a multidimensional cube for advanced analytics.

**BI Reporting**: Using Power BI to create self-service reports and dashboards for business users to explore the data and gain insights.

<h3>3. Source Database Overview</h3>
![ERD of OLTP DB](https://github.com/user-attachments/assets/78b368d1-7e97-4da8-baf8-a451a20551ad)

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


















