# Football Data | Predictions & Bets

<br>

The aim of the project is to explore the [Pronosoft](https://www.pronosoft.com/fr/bookmakers/pronostics/) Football database — _ongoing project_.

It contains information on:
- Team & League Names
- Winning Probability
- Best Betting Odd
- Match & Score Outcome

<br>

I started this project a while ago when a friend of mine (big fan of football) was checking this website to get valuable information and the best betting odds out there. I was learning Python at the time and thought it would be a good idea to automate & scale his calculations with **Python**, **web scraping** and **SQL**. It turned out to work pretty well ! 

<br>

The code is organised in the following way:
- `web_scrape.ipynb`: A Notebook to web scrape the entire Pronosoft Data (50,000+ matches up to date) with the BeautifulSoup library, and save it into the `pronosoft_data.csv` file.
- `extend_database.ipynb`: A Notebook to add columns & features into `pronosoft_data_extended.csv`.
- `viz_data.ipynb`: A Notebook to visualise the CSV data directly in Python.
- `explore_database.ipynb`: A Notebook to run the `build_database.py` script and build an SQLite database from the CSV file. You can also do simple SQL queries directly from the Notebook, but would recommend then using more specialised Database Management tools like `Datagrip` or `BigQuery`.

<br>

You can find the original Pronosoft Football data at this link:

- [https://www.pronosoft.com/fr/bookmakers/pronostics](https://www.pronosoft.com/fr/bookmakers/pronostics/)

<br>



## Results

<br>

Dataset sample:

<br>

| date       | league                   | time  | team_1_name | team_2_name | team_1_prob | team_1_bet_odds | nul_prob | nul_bet_odds | team_2_prob | team_2_bet_odds | prediction_team_pronosoft | team_1_score | team_2_score |
|:-----------|:-------------------------|------:|------------:|------------:|------------:|----------------:|---------:|-------------:|------------:|----------------:|--------------------------:|-------------:|---------------:|
| 01-10-2018 | France - Ligue 2         | 20:45 | Troyes      | Auxerre     | 0.39        | 2.75            | 0.18        | 3.1  | 0.43        | 2.8             | None                      | 1            | 0            |
| 01-10-2018 | Espagne - Liga Espagnole | 21:00 | Celta Vigo  | Getafe      | 0.33        | 2.15            | 0.38        | 3.2  | 0.3         | 3.6             | N                         | 1            | 1            |

<br>

**Note**: You can find the dataset in the `Data` folder as a CSV file (`pronosoft_data.csv`) or in the `SQL` folder as an SQLite database (`Football_Data.sqlite`). You can load the former with Python or the latter with SQL by using your preferred database access tool — I have a preference for [DataGrip](https://www.jetbrains.com/datagrip/) — to transform & analyse the data.

<br>

Data Visualization samples:

<br>

- Pie Chart of Outcomes

<br>

![Proportion of Outcomes](https://github.com/paulcourty/FootballData/blob/main/Figures/Proportion%20of%20Outcomes.png)

- Actual Outcome Vs Pronosoft's Predictions on Match Outcomes

<br>

![Actual Outcome Vs Probability Predictions](https://github.com/paulcourty/FootballData/blob/main/Figures/Actual%20Outcome%20Vs%20Percentage%20Predictions.png)

<br>

- Actual Outcome Vs Bookmakers' Predictions on Match Outcomes (based on Betting Odds)

<br>

![Actual Outcome Vs Probabilities from Betting Odds](https://github.com/paulcourty/FootballData/blob/main/Figures/Actual%20Outcome%20Vs%20Percentage%20from%20Betting%20Odds.png)

It's really interesting to see that Betting Odds reflect almost perfectly the probabilities of outcomes (Team 1 or Team 2 Win or Nul): this means that Bookmakers are really good at their job and that gamblers will almost certainly lose on average, which is not a huge surprise. But there might be statistical arbitrage opportunities in the market ! 

<br>



## How to run

<br>

You can run the above scripts by simply cloning this repository (`git` or manually downloading the folder). Then, go into a terminal, navigate to the cloned repository, and install the necessary Python dependencies:

<br>

For **Unix/macOS**:

```sh
python3 -m venv .env_FootballData
source .env_FootballData/bin/activate
pip install -r requirements.txt   
```

For **Windows**:

```sh
py -m venv .env_FootballData
call .env_FootballData/Scripts/activate
pip install -r requirements.txt   
```

**Note**: `requirements.txt` contains Jupyter Lab, it will take a bit of time to download.

<br>

To run the scripts:

```sh
jupyter lab
``` 

<br>

When the Jupyter web interface opens, navigate to the `Python Code` Folder to open & run the Notebooks !

I provided the scraped data from _01-10-2018_ to _22-08-2021_ in the `Data` Folder, so it's not necessary to re-run `web_scrape.ipynb`and `extend_database.ipynb`, unless you want to update for later dates.