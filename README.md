<h1> Gravity Books Data Warehouse Project </h1>
<h3>1. Problem Overview</h3>
    Gravity Bookstore is a fictional bookstore that needed a robust system to manage and analyze its data effectively. The bookstore had a transactional database (Gravity_Books) that stored           
    information about books, customers, orders, and sales. However, the existing system lacked the capability to perform advanced analytics, generate insightful reports, and track historical changes       in data. The goal of this project was to design and implement a data warehouse (Gravity_Books_DWH) and create Business Intelligence (BI) reports to help the bookstore gain valuable insights into       its operations.

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

**Transform**: I transformed the data to fit the snowflake schema model, including normalizing dimension tables and ensuring data integrity. Special attention was given to handling the many-to-many relationship between authors and books during the transformation process. Additionally, I implemented **Slowly Changing Dimensions (SCD)** to manage changes in dimension data over time. Specifically:

**Type 1 SCD**: Used for attributes where historical changes are not required (e.g., correcting typos in customer names).

**Type 2 SCD**: Used for attributes where tracking historical changes is critical (e.g., changes in customer addresses or book prices). This involved creating new rows for changed data and marking old rows as inactive.



**Load**: I loaded the transformed data into the Gravity_Books_DWH data warehouse.

Dim_Books ETL:
![Dim_Books ETL process](https://github.com/user-attachments/assets/dfaa0a82-d57e-486a-ab8f-0e49216b1587)

Dim_Author_book ETL:
![Dim_Book_Author ETL process](https://github.com/user-attachments/assets/82cddcad-55c1-402f-8214-021d4290f874)

Dim_Authors ETL:
![Dim_Authors ETL process](https://github.com/user-attachments/assets/7f06db64-5905-4a2f-9561-8d3c49321f0f)

Dim_Customers ETL:
![Dim_Customers ETL process](https://github.com/user-attachments/assets/cd8f5f4e-bd35-4ef9-9fc0-85bc9e8808ef)

Dim_Shippings ETL:
![Dim_Shippings ETL process](https://github.com/user-attachments/assets/ad981464-4775-4b60-82bc-16f6630fd8dd)

SalesFactTable ETL:
![Sales_Fact_Table ETL process](https://github.com/user-attachments/assets/a49d8c9e-14d7-4d98-8d33-43a6e3c4017b)

Result Fact Table:
![Sales Fact Table](https://github.com/user-attachments/assets/06057e5e-1359-4d11-96e4-81ab9ca18460)


<h3>7. Analysis phase (SSAS) </h3>
The Analysis Phase focused on exploring the data in the data warehouse (gravity_books_dwh) and generating actionable insights for the Gravity Bookstore. This phase involved the following steps:

-**Data Exploration**
**OLAP Cube Browsing**: Using the SSAS (SQL Server Analysis Services) multidimensional model, I browsed the OLAP cube to explore the data. The cube allowed for multidimensional analysis, enabling me to slice and dice data across various dimensions such as time, customer, book, and shipping method.

<h3>8. Reporting and Data visualization (Power BI) </h3>

The Analysis and Reporting Phase focused on exploring the data in the data warehouse (gravity_books_dwh) and generating actionable insights for the Gravity Bookstore. This phase involved the creation of interactive reports and dashboards using Power BI, which allowed business users to explore the data and gain valuable insights. Below are the key components of this phase:

**Key Metrics and Insights**:
The following key metrics were identified and analyzed to understand the bookstore's performance:

**Total Number of Books**: 11.1K books are available in the bookstore's inventory.

**Total Number of Authors**: 9,235 authors are associated with the books.

**Total Number of Customers**: 2K customers have made purchases.

**Total Books Sold**: 15.4K books have been sold.

**Total Orders**: 7,546 orders have been placed.

**Total Sales**: $237K in total sales revenue.

**Sales Trends Over Time**:
The report includes a visualization of the total cost of books sold by year. The data shows a steady increase in costs from 2022 to 2025, indicating growth in sales volume over time.

**Order Status Analysis**:

**Delivered**: 2.38K (31.55%) of orders have been successfully delivered.

**Pending Delivery**: 2.13K (33.53%) of orders are pending delivery.

**Delivery In Progress**: 1.64K (21.76%) of orders are currently in the delivery process.

**Order Received**: 0.6K (7.96%) of orders have been received but not yet processed.

**Cancelled**: 0.25K (3.34%) of orders have been cancelled.

This analysis helps identify bottlenecks in the order fulfillment process and areas for improvement.

**Geographical Analysis**:
Total Orders by Country: The report includes a visualization of orders by country, highlighting the top countries with the most orders:

China, Indonesia, and Russia are the top three countries with the highest number of orders.

Other significant markets include Brazil, Portugal, and the United States.

This geographical analysis helps the bookstore understand its customer base and target marketing efforts more effectively.

**Top Performing Books**:
Top 10 Sold Books: The report identifies the top 10 best-selling books, including:

Gulliver's Travels/Anna Karenina/Salem's Lot/The Brothers Karamazov/The Iliad/The Odyssey/The Shining/A Midsummer Night's Dream/Collected Stories
/Memoirs of a Geisha

This analysis helps the bookstore identify popular titles and optimize inventory management.


<h3>8. Conclusion</h3>

The Gravity Books Data Warehouse project was a highly rewarding experience, offering a deep dive into ETL (Extract, Transform, Load) processes and data warehousing best practices. I implemented advanced concepts like the **snowflake schema** to manage complex relationships (e.g., many-to-many between authors and books) and **Slowly Changing Dimensions (SCD)** to track historical changes in dimension data. Using **MS SQL** Server for schema design and **SSIS** for ETL, I transformed the transactional database into a well-structured data warehouse. Key steps included normalizing dimension tables, applying SCD (Type 1 and Type 2), and creating a **fact table** to track sales data efficiently.


In the final phase, I developed interactive **Power BI** reports and dashboards, enabling business users to analyze sales trends, order fulfillment, and top-performing books. This project enhanced my skills in data warehousing, ETL, and business intelligence, showcasing the power of structured data management in driving data-driven decisions. The Gravity Books Data Warehouse project stands as a testament to the impact of well-designed data solutions on business operations.





