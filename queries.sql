# plsql_window_functions_-28776-_-Joshua-
--INNER JOIN
  SELECT t.ticket_id,
       u.full_name,
       tech.technician_name,
       t.issue_category,
       t.status
FROM tickets t
INNER JOIN users u ON t.user_id = u.user_id
INNER JOIN technicians tech ON t.technician_id = tech.technician_id;
--LEFT JOIN
SELECT u.user_id,
       u.full_name
FROM users u
LEFT JOIN tickets t ON u.user_id = t.user_id
WHERE t.ticket_id IS NULL;
--RIGHT JOIN
SELECT tech.technician_id,
       tech.technician_name
FROM tickets t
RIGHT JOIN technicians tech
ON t.technician_id = tech.technician_id
WHERE t.ticket_id IS NULL;
--FULL OUTER-JOIN
SELECT u.full_name,
       t.ticket_id,
       t.issue_category
FROM users u
FULL OUTER JOIN tickets t
ON u.user_id = t.user_id;
--SELF JOIN

