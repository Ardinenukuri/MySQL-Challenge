DELIMITER //
CREATE PROCEDURE UpdateProjectTeam(
    IN proj_id INT,
    IN new_employee_ids TEXT
)
BEGIN
    -- Remove existing team members
    

    -- Add new team members
    DECLARE emp_id VARCHAR(255);
    DECLARE done INT DEFAULT FALSE;
    DECLARE cur CURSOR FOR SELECT SUBSTRING_INDEX(SUBSTRING_INDEX(new_employee_ids, ',', numbers.n), ',', -1) AS emp_id
                           FROM (SELECT 1 n UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4 UNION ALL SELECT 5
                                 UNION ALL SELECT 6 UNION ALL SELECT 7 UNION ALL SELECT 8 UNION ALL SELECT 9 UNION ALL
                                 SELECT 10) numbers
                           WHERE n <= 1 + (LENGTH(new_employee_ids) - LENGTH(REPLACE(new_employee_ids, ',', '')));

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
    
    DELETE FROM TeamMembers WHERE ProjectID = proj_id;

    OPEN cur;

    read_loop: LOOP
        FETCH cur INTO emp_id;
        IF done THEN
            LEAVE read_loop;
        END IF;
        INSERT INTO TeamMembers (ProjectID, EmployeeID) VALUES (proj_id, emp_id);
    END LOOP;

    CLOSE cur;
END//

DELIMITER ;