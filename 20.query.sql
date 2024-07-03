CREATE TABLE ProjectAudit (
    AuditID INT AUTO_INCREMENT PRIMARY KEY,
    ProjectID INT,
    OldRequirements TEXT,
    NewRequirements TEXT,
    ChangeDate DATETIME
);

DELIMITER //
CREATE TRIGGER AfterProjectUpdate
AFTER UPDATE ON Projects
FOR EACH ROW
BEGIN
    INSERT INTO ProjectAudit (ProjectID, OldRequirements, NewRequirements, ChangeDate)
    VALUES (OLD.ProjectID, OLD.Requirements, NEW.Requirements, NOW());
END//


DELIMITER ;