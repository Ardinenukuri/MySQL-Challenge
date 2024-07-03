# MySQL-Challenge
MySQL Challenge

Scenario: This table stores information about a software development company's projects, clients, and employees.
Unstructured Table
Problems with the Unstructured Table:
●	Data Redundancy: Client contact information is repeated for each project from the same client.
●	Data Inconsistency: If John Smith's contact information changes, it needs to be updated in every row associated with Big Retail Inc. This is prone to errors.
●	Limited Scalability: Adding new team members requires modifying the table structure to accommodate additional columns.
Teaching Normalization with this Scenario:
1.	First Normal Form (1NF): Eliminate repeating groups. In this case, we can create a separate table for "Team Members" with a foreign key referencing the "Project ID."
2.	Second Normal Form (2NF): Eliminate partial dependencies on a primary key. Here, "Team Lead" depends only on "Project ID," not the entire composite key, including "Project Name." Create a separate table for "Project Team" with "Project ID" and "Employee ID" (foreign key referencing the "Employees" table).
3.	Third Normal Form (3NF): Eliminate transitive dependencies. There are currently no transitive dependencies in this example.
Normalized Tables:
1.	Projects Table:
| Project ID | Project Name | Requirements| Deadline |
2.	Clients Table:
| Client ID | Client Name | Contact Name | Contact Email |
3.	Employees Table:
| Employee ID | Employee Name |
4.	Team Members Table:
| Project ID (FK) | Employee ID (FK) |
5.	Project Team Table:
| Project ID (FK) | Employee ID (FK) | Team Lead (Yes/No) |
Relationships:
●	Projects table has a one-to-many relationship with Clients table (one client can have many projects).
●	The Projects table has a many-to-many relationship with the Employees table (one project can have many employees, and one employee can work on many projects). This is achieved through the junction table "Team Members."
●	Projects table has a one-to-many relationship with Project Team table (one project can have one team lead).
Additional Concepts:
●	Primary Keys and Foreign Keys
●	Data Types (e.g., integer for IDs, date for deadlines)
●	Data Integrity Constraints (e.g., ensuring foreign keys reference existing records)
●	Normalization Benefits (reduced redundancy, improved consistency, increased scalability)

Queries
1.	Find all projects with a deadline before December 1st, 2024.
2.	List all projects for "Big Retail Inc." ordered by deadline.
3.	Find the team lead for the "Mobile App for Learning" project.
4.	Find projects containing "Management" in the name.
5.	Count the number of projects assigned to David Lee.
6.	Find the total number of employees working on each project.
7.	Find all clients with projects having a deadline after October 31st, 2024.
8.	List employees who are not currently team leads on any project.
9.	Combine a list of projects with deadlines before December 1st and another list with "Management" in the project name.
10.	Display a message indicating if a project is overdue (deadline passed).
11.	Create a view to simplify retrieving client contact 
12.	Create a view to show only ongoing projects (not yet completed).
13.	Create a view to display project information along with assigned team leads.
14.	Create a view to show project names and client contact information for projects with a deadline in November 2024.
15.	Create a view to display the total number of projects assigned to each employee.
16.	 Create a function to calculate the number of days remaining until a project deadline
17.	Create a function to calculate the number of days a project is overdue
18.	Create a stored procedure to add a new client and their first project in one call
19.	Create a stored procedure to move completed projects (past deadlines) to an archive table
20.	Create a trigger to log any updates made to project records in a separate table for auditing purposes
21.	Create a trigger to ensure a team lead assigned to a project is a valid employee
22.	Create a view to display project details along with the total number of team members assigned
23.	Create a view to show overdue projects with the number of days overdue
24.	Create a stored procedure to update project team members (remove existing, add new ones)
25.	Create a trigger to prevent deleting a project that still has assigned team members

NB: To successfully implement the above queries you might need to slightly modify your database schema to match with the query requirements.


Project ID	Project Name	Client Name	Client Contact	Team Lead	Team Members	Requirements	Deadline	
1	E-commerce Platform	Big Retail Inc.	Peter Parker, [email address]	Alice Brown	David Lee, Jane Doe	Extensive documentation	Dec 1, 2024	
2	Mobile App for Learning	EduTech Solutions	Walter White, [email address]	David Lee	Michael Young, Emily Chen	Gamified learning modules	Aug 15, 2024	
3	Social Media Management Tool	Trendsetters Inc.	Sandra Bullock, [email address]	Alice Brown	Jane Doe, William Green	User-friendly interface with analytics	Oct 31, 2024	
4	Inventory Management System	Gearhead Supply Co.	Daniel Craig, [email address]	David Lee	Michael Young, Emily Chen	Barcode integration and real-time stock tracking	Nov 1, 2024	
5	Restaurant Reservation System	Fine Dine Group	Olivia Rodriguez,[email address]	Alice Brown	William Green, Sarah Jones	Online booking with table management	Sept 1, 2024	
6	Content Management System (CMS)	Green Thumb Gardens	Mark Robinson,[email address]	David Lee	Jane Doe, Michael Young	Drag-and-drop interface for easy content updates	Dec 15, 2024	
7	Customer Relationship Management (CRM)	Busy Bees Daycare	Emily Blunt, [email address]	Alice Brown	William Green, Sarah Jones	Secure parent portal and communication tools	Oct 1, 2024	
8	Data Analytics Dashboard	Acme Pharmaceuticals	David Kim, [email address]	David Lee	Michael Young, Emily Chen	Real-time visualization of key performance indicators (KPIs)	Nov 30, 2024	
9	E-learning Platform Development	Knowledge Stream Inc.	Matthew McConaughey, [email address]	Alice Brown	Jane Doe, William Green	Interactive course creation and delivery tools	Sept 15, 2024	
10	Bug Tracking and Issue Management System	Software Craft LLC	Jennifer Lopez, [email address]	David Lee	Michael Young, Sarah Jones	Prioritization and collaboration features for bug reporting	Dec 31, 2024	
