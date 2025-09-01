import pandas
import sqlite3

connection = sqlite3.connect("banco_dados.db")

dataset = ["life_expectancy_by_birth","human_development_index","gross_national_income_per_capital","gapminder_data_graphs","countries_metric - Sheet1","co2_production"]

for i in dataset:
    file_path = f"./datasets/{i}.csv"
    df = pandas.read_csv(file_path)
    df.to_sql(file_path,connection,if_exists="append",index=False)
