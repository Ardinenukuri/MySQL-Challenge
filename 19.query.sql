CREATE TABLE ArchivedProjects (
    ProjectID INT PRIMARY KEY,
    ProjectName VARCHAR(255),
    ClientID INT,
    Requirements TEXT,
    Deadline DATE
);
DELIMITER //
CREATE PROCEDURE ArchiveCompletedProjects()
BEGIN
    INSERT INTO ArchivedProjects (ProjectID, ProjectName, ClientID, Requirements, Deadline)
    SELECT ProjectID, ProjectName, ClientID, Requirements, Deadline
    FROM Projects
    WHERE Deadline < CURDATE();
    
    DELETE FROM Projects
    WHERE Deadline < CURDATE();
END//
DELIMITER ;
