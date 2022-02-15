# Webscraping with naver finance in order to make a CSV file.

import re
import requests as req
import csv
from bs4 import BeautifulSoup
from datetime import datetime

curr_time = datetime.now()

url = "https://finance.naver.com/sise/sise_market_sum.nhn?sosok=0&page="

filename = "{}-{}-{} market cap 1-200.csv".format(curr_time.year, curr_time.month, curr_time.day)
f = open(filename, 'w', encoding='utf-8-sig', newline="")
writer = csv.writer(f)

title = "N	종목명	현재가	전일비	등락률	액면가	시가총액	상장주식수	외국인비율	거래량	PER	ROE".split("\t")
writer.writerow(title)

for page in range(1, 5): # the 20 conpanies into the one page, so the 200 companies include 4 pages.
    res = req.get(url + str(page))
    res.raise_for_status()
    soup = BeautifulSoup(res.text, "lxml")

    data_rows = soup.find("table", attrs = {"class": "type_2"}).find("tbody").find_all("tr")
    for row in data_rows:
        columns = row.find_all('td')
        if len(columns) <= 1: continue # Skip the tr that has less than 1 td.
        data = [column.get_text().strip() for column in columns]

        writer.writerow(data)
