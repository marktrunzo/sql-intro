-- How many lifetime hits does Barry Bonds have?

-- Expected result:
-- 2935

SELECT SUM(stats.hits) as lifetime_hits
FROM players, stats
WHERE players.id = stats.player_id
AND players.first_name = 'Barry'
AND players.last_name = 'Bonds'
;
