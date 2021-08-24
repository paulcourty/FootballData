CREATE TABLE IF NOT EXISTS Football_Bets(

date DATE,
league VARCHAR(250),
time TIME,
team_1_name VARCHAR(50),
team_2_name VARCHAR(50),
team_1_prob FLOAT,
team_1_bet_odds FLOAT,
nul_prob FLOAT,
nul_bet_odds FLOAT,
team_2_prob FLOAT,
team_2_bet_odds FLOAT,
prediction_team_pronosoft VARCHAR(10),
under_prob FLOAT,
under_bet_odds FLOAT,
over_prob FLOAT,
over_bet_odds FLOAT,
prediction_uo_pronosoft VARCHAR(10),
team_1_score INTEGER,
team_2_score INTEGER

)