-- Top Run Scorer

SELECT batsman,
SUM(batsman_runs) AS runs
FROM deliveri
GROUP BY batsman
ORDER BY runs DESC;

-- Top Wicket Taker

SELECT bowler,
COUNT(player_dismissed) AS wickets
FROM deliveri
WHERE player_dismissed IS NOT NULL
GROUP BY bowler
ORDER BY wickets DESC;

-- Team With Most Wins

SELECT winner,
COUNT(*) AS wins
FROM match2
GROUP BY winner
ORDER BY wins DESC;