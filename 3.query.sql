SELECT e.EmployeeName FROM ProjectTeam pt
JOIN Employees e ON pt.EmployeeID = e.EmployeeID
JOIN Projects p ON pt.ProjectID = p.ProjectID
WHERE p.ProjectName = 'Mobile App for Learning' AND pt.IsTeamLead = TRUE;
