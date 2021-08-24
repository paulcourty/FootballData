# BUILD DATABASE

# IMPORT LIB
import pandas as pd
import sqlite3



# PATHS
path_pronosoft_data = '..\Data\pronosoft_data.csv'
path_pronosoft_data_extended = '..\Data\pronosoft_data_extended.csv'
path_create_table = '..\SQL\create_table.sql'

name_database = 'Football_Data.sqlite'
path_database = '..\\SQL\\' + name_database



def create_table(database, query):
    conn = sqlite3.connect(database)
    c = conn.cursor()  # Database saved where '.ipynb' is

    # CREATE TABLE
    c.execute(query)
    conn.commit()

    # UPDATE DATABASE WITH CSV
    read_csv = pd.read_csv(path_pronosoft_data)
    read_csv.to_sql('Football_Bets', conn, if_exists = 'replace', index=False)

    conn.close()



def main():
    with open(path_create_table, mode = 'r')as file:
        query_create_table = file.read()

    create_table(database = path_database, query = query_create_table)



if __name__ == '__main__':
    main()

