-- Who hit the most home runs in 2019, and what team did they play for?

SELECT teams.name, players.first_name, players.last_name, MAX(stats.home_runs) as most_home_runs
FROM stats
INNER JOIN teams ON stats.team_id = teams.id
INNER JOIN players ON stats.player_id = players.id
WHERE teams.year = 2019
ORDER BY most_home_runs DESC
LIMIT 1
;


-- Expected result:
--
-- +---------------+------------+-----------+-----------+
-- | New York Mets | Pete       | Alonso    | 53        |
-- +---------------+------------+-----------+-----------+


