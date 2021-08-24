WITH cte_prob AS (
	SELECT 
		date,
		team_1_name,
		team_2_name,
	    team_1_prob,
		ROUND((1 / (team_1_bet_odds * ((1/team_1_bet_odds) + (1/nul_bet_odds) + (1/team_2_bet_odds)))), 2) AS team_1_prob_from_odds,
		team_1_bet_odds,
	    nul_prob,
		ROUND((1 / (nul_bet_odds * ((1/team_1_bet_odds) + (1/nul_bet_odds) + (1/team_2_bet_odds)))), 2) AS nul_prob_from_odds,
		nul_bet_odds,
	    team_2_prob,
		ROUND((1 / (team_2_bet_odds * ((1/team_1_bet_odds) + (1/nul_bet_odds) + (1/team_2_bet_odds)))), 2) AS team_2_prob_from_odds,
		team_2_bet_odds, 
		CASE
			WHEN team_1_score > team_2_score THEN '1'
			WHEN team_1_score < team_2_score THEN '2'
			ELSE 'N'
			END AS match_outcome,
		CASE
			WHEN team_1_score > team_2_score THEN ROUND(CAST(team_1_bet_odds - 1 AS NUMERIC), 3)
			ELSE -1
			END AS team_1_profit,
		CASE
			WHEN team_1_score = team_2_score THEN ROUND(CAST(nul_bet_odds - 1 AS NUMERIC), 3)
			ELSE -1
			END AS nul_profit,
		CASE
			WHEN team_1_score < team_2_score THEN ROUND(CAST(team_2_bet_odds - 1 AS NUMERIC), 3)
			ELSE -1
			END AS team_2_profit
	FROM Football_Bets
)


SELECT * FROM cte_prob