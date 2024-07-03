-- Clients
INSERT INTO Clients (ClientID, ClientName, ContactName, ContactEmail) VALUES
(1, 'Big Retail Inc.', 'Peter Parker', 'email@example.com'),
(2, 'EduTech Solutions', 'Walter White', 'email@example.com'),
(3, 'Trendsetters Inc.', 'Sandra Bullock', 'email@example.com'),
(4, 'Gearhead Supply Co.', 'Daniel Craig', 'email@example.com'),
(5, 'Fine Dine Group', 'Olivia Rodriguez', 'email@example.com'),
(6, 'Green Thumb Gardens', 'Mark Robinson', 'email@example.com'),
(7, 'Busy Bees Daycare', 'Emily Blunt', 'email@example.com'),
(8, 'Acme Pharmaceuticals', 'David Kim', 'email@example.com'),
(9, 'Knowledge Stream Inc.', 'Matthew McConaughey', 'email@example.com'),
(10, 'Software Craft LLC', 'Jennifer Lopez', 'email@example.com');

-- Projects
INSERT INTO Projects (ProjectID, ProjectName, Requirements, Deadline) VALUES
(1, 'E-commerce Platform', 'Extensive documentation', '2024-12-01'),
(2, 'Mobile App for Learning', 'Gamified learning modules', '2024-08-15'),
(3, 'Social Media Management Tool', 'User-friendly interface with analytics', '2024-10-31'),
(4, 'Inventory Management System', 'Barcode integration and real-time stock tracking', '2024-11-01'),
(5, 'Restaurant Reservation System', 'Online booking with table management', '2024-09-01'),
(6, 'Content Management System (CMS)', 'Drag-and-drop interface for easy content updates', '2024-12-15'),
(7, 'Customer Relationship Management (CRM)', 'Secure parent portal and communication tools', '2024-10-01'),
(8, 'Data Analytics Dashboard', 'Real-time visualization of key performance indicators (KPIs)', '2024-11-30'),
(9, 'E-learning Platform Development', 'Interactive course creation and delivery tools', '2024-09-15'),
(10, 'Bug Tracking and Issue Management System', 'Prioritization and collaboration features for bug reporting', '2024-12-31');

-- Employees
INSERT INTO Employees (EmployeeID, EmployeeName) VALUES
(1, 'Alice Brown'),
(2, 'David Lee'),
(3, 'Jane Doe'),
(4, 'Michael Young'),
(5, 'Emily Chen'),
(6, 'William Green'),
(7, 'Sarah Jones');

-- Team Members
INSERT INTO TeamMembers (ProjectID, EmployeeID) VALUES
(1, 2), (1, 3),
(2, 4), (2, 5),
(3, 3), (3, 6),
(4, 4), (4, 5),
(5, 6), (5, 7),
(6, 3), (6, 4),
(7, 6), (7, 7),
(8, 4), (8, 5),
(9, 3), (9, 6),
(10, 4), (10, 7);

-- Project Team (indicating team leads)
INSERT INTO ProjectTeam (ProjectID, EmployeeID, IsTeamLead) VALUES
(1, 1, TRUE),
(2, 2, TRUE),
(3, 1, TRUE),
(4, 2, TRUE),
(5, 1, TRUE),
(6, 2, TRUE),
(7, 1, TRUE),
(8, 2, TRUE),
(9, 1, TRUE),
(10, 2, TRUE);
