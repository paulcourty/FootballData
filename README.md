# Football Data | Predictions & Bets

<br>

The aim of the project is to explore the [Pronosoft](https://www.pronosoft.com/fr/bookmakers/pronostics/) Football database - _ongoing project_.

It contains information on:
- Team & League Names
- Winning Probability
- Best Betting Odd
- Match & Score Outcome

I started this project a while ago when a friend of mine (big fan of football) was checking this website to get valuable information and the best betting odds out there. I was learning Python at the time and thought it would be a good idea to automate & scale his calculations with **Python**, **web scraping** and **SQL**. It turned out to work pretty well ! 

The project is organised in the following way:
- `web_scrape.ipynb`: A Notebook to web scrape the entire Pronosoft Data (50,000+ matches up to date) with the BeautifulSoup library, and save it into the `pronosoft_data.csv` file.
- `extend_database.ipynb`: A Notebook to process the CSV data and add columns & features into `pronosoft_data_extended.csv`.
- `viz_data.ipynb`: A Notebook to visualise the CSV data directly in Python.
- `explore_database.ipynb`: A Notebook to run the `build_database.py` script and build an SQLite database from the CSV file. You can also do simple SQL queries directly from the Notebook, but would recommend then using more specialised Database Management tools like `Datagrip` or `BigQuery`.

<br>

You can find the original Pronosoft Football data at this link:

- [https://www.pronosoft.com/fr/bookmakers/pronostics](https://www.pronosoft.com/fr/bookmakers/pronostics/)

<br>



## Results

<br>

Data Visualization samples:

<br>

- Pie Chart of outomes

<br>

![Proportion of Outcomes](https://github.com/paulcourty/FootballData/blob/main/Figures/Proportion%20of%20Outcomes.png)

<br>

- Accuracy of Pronosoft's Predictions on match outcomes

<br>

![Accuracy of Percentage Predictions](https://github.com/paulcourty/FootballData/blob/main/Figures/Accuracy%20of%20Percentage%20Predictions.png)

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

<br>

The Jupyter environment will take a bit of time to download. To run the scripts:

```sh
jupyter lab
``` 

<br>

When the Jupyter web interface opens, navigate to the `Python Code` Folder to open & run the Notebooks !

I provided the scraped data from _01-10-2018_ to _22-08-2021_ in the `Data` Folder, so it's not necessary to re-run `web_scrape.ipynb`and `extend_database.ipynb`, unless you want to update for later dates.