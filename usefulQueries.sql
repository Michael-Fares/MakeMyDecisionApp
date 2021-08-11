/*List all Decisions by User -- how can I remove the user_id duplicate column?*/
SELECT * FROM 
Users
JOIN
Decisions
ON
Decisions.user_id = Users.user_id
ORDER BY Users.user_id;

/* View All Decisions, Options, and Criteria*/
SELECT * FROM 
Decisions
JOIN
Options
ON Decisions.decision_id = Options.decision_id
JOIN
Criteria
ON Decisions.decision_id = Criteria.decision_id;








