# py -m pip install...

import yfinance
from datetime import datetime, timedelta
import pandas as pd

def run_car_stream():
  today = datetime.now().date()
  start_date = '2000-01-01'
  end_date = today - timedelta(days=1)
  interval = '1wk'

  companies = ['FWONA','FWONB','FWONK']

  for company in companies:
        download = yfinance.Ticker(company).history(start=start_date, end=end_date, interval=interval)

        download.to_csv(f"{company} - All Data {end_date}.csv", index=True)
        print(f"{company}")

run_car_stream()