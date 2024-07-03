-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: doune
-- ------------------------------------------------------
-- Server version	8.0.37

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `employeeprojectcountview`
--

DROP TABLE IF EXISTS `employeeprojectcountview`;
/*!50001 DROP VIEW IF EXISTS `employeeprojectcountview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `employeeprojectcountview` AS SELECT 
 1 AS `EmployeeName`,
 1 AS `ProjectCount`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `projectsnovember2024view`
--

DROP TABLE IF EXISTS `projectsnovember2024view`;
/*!50001 DROP VIEW IF EXISTS `projectsnovember2024view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `projectsnovember2024view` AS SELECT 
 1 AS `ProjectName`,
 1 AS `ClientName`,
 1 AS `ContactName`,
 1 AS `ContactEmail`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `projectdetailswithteammembersview`
--

DROP TABLE IF EXISTS `projectdetailswithteammembersview`;
/*!50001 DROP VIEW IF EXISTS `projectdetailswithteammembersview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `projectdetailswithteammembersview` AS SELECT 
 1 AS `ProjectName`,
 1 AS `Requirements`,
 1 AS `Deadline`,
 1 AS `TeamMemberCount`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `overdueprojectsview`
--

DROP TABLE IF EXISTS `overdueprojectsview`;
/*!50001 DROP VIEW IF EXISTS `overdueprojectsview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `overdueprojectsview` AS SELECT 
 1 AS `ProjectName`,
 1 AS `Deadline`,
 1 AS `DaysOverdue`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `ongoingprojectsview`
--

DROP TABLE IF EXISTS `ongoingprojectsview`;
/*!50001 DROP VIEW IF EXISTS `ongoingprojectsview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ongoingprojectsview` AS SELECT 
 1 AS `ProjectName`,
 1 AS `Deadline`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `projectwithteamleadsview`
--

DROP TABLE IF EXISTS `projectwithteamleadsview`;
/*!50001 DROP VIEW IF EXISTS `projectwithteamleadsview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `projectwithteamleadsview` AS SELECT 
 1 AS `ProjectName`,
 1 AS `Requirements`,
 1 AS `Deadline`,
 1 AS `TeamLead`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `clientcontactview`
--

DROP TABLE IF EXISTS `clientcontactview`;
/*!50001 DROP VIEW IF EXISTS `clientcontactview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `clientcontactview` AS SELECT 
 1 AS `ClientName`,
 1 AS `ContactName`,
 1 AS `ContactEmail`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `employeeprojectcountview`
--

/*!50001 DROP VIEW IF EXISTS `employeeprojectcountview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `employeeprojectcountview` AS select `e`.`EmployeeName` AS `EmployeeName`,count(`tm`.`ProjectID`) AS `ProjectCount` from (`employees` `e` join `teammembers` `tm` on((`e`.`EmployeeID` = `tm`.`EmployeeID`))) group by `e`.`EmployeeName` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `projectsnovember2024view`
--

/*!50001 DROP VIEW IF EXISTS `projectsnovember2024view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `projectsnovember2024view` AS select `p`.`ProjectName` AS `ProjectName`,`c`.`ClientName` AS `ClientName`,`c`.`ContactName` AS `ContactName`,`c`.`ContactEmail` AS `ContactEmail` from (`projects` `p` join `clients` `c` on((`p`.`ClientID` = `c`.`ClientID`))) where (`p`.`Deadline` between '2024-11-01' and '2024-11-30') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `projectdetailswithteammembersview`
--

/*!50001 DROP VIEW IF EXISTS `projectdetailswithteammembersview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `projectdetailswithteammembersview` AS select `p`.`ProjectName` AS `ProjectName`,`p`.`Requirements` AS `Requirements`,`p`.`Deadline` AS `Deadline`,count(`tm`.`EmployeeID`) AS `TeamMemberCount` from (`projects` `p` join `teammembers` `tm` on((`p`.`ProjectID` = `tm`.`ProjectID`))) group by `p`.`ProjectName`,`p`.`Requirements`,`p`.`Deadline` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `overdueprojectsview`
--

/*!50001 DROP VIEW IF EXISTS `overdueprojectsview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `overdueprojectsview` AS select `p`.`ProjectName` AS `ProjectName`,`p`.`Deadline` AS `Deadline`,(to_days(curdate()) - to_days(`p`.`Deadline`)) AS `DaysOverdue` from `projects` `p` where (`p`.`Deadline` < curdate()) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ongoingprojectsview`
--

/*!50001 DROP VIEW IF EXISTS `ongoingprojectsview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ongoingprojectsview` AS select `projects`.`ProjectName` AS `ProjectName`,`projects`.`Deadline` AS `Deadline` from `projects` where (`projects`.`Deadline` >= curdate()) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `projectwithteamleadsview`
--

/*!50001 DROP VIEW IF EXISTS `projectwithteamleadsview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `projectwithteamleadsview` AS select `p`.`ProjectName` AS `ProjectName`,`p`.`Requirements` AS `Requirements`,`p`.`Deadline` AS `Deadline`,`e`.`EmployeeName` AS `TeamLead` from ((`projects` `p` join `projectteam` `pt` on((`p`.`ProjectID` = `pt`.`ProjectID`))) join `employees` `e` on((`pt`.`EmployeeID` = `e`.`EmployeeID`))) where (`pt`.`IsTeamLead` = true) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `clientcontactview`
--

/*!50001 DROP VIEW IF EXISTS `clientcontactview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `clientcontactview` AS select `clients`.`ClientName` AS `ClientName`,`clients`.`ContactName` AS `ContactName`,`clients`.`ContactEmail` AS `ContactEmail` from `clients` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-03 14:28:29
