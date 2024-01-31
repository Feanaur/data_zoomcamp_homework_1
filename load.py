import pandas as pd
from sqlalchemy import create_engine
from sqlalchemy.sql import text

# Database connection URI
db_uri = "postgresql://user:password@db/nyc_taxi"

# Create database engine
engine = create_engine(db_uri)

# Function to load data
def load_data(csv_file, table_name):
    chunksize = 10000
    for chunk in pd.read_csv(csv_file, chunksize=chunksize):
        chunk.to_sql(table_name, engine, if_exists='append', index=False)
        print(f"Loaded chunk into {table_name}")



if __name__ == "__main__":
    # Load data
    load_data('/data/green_tripdata_2019-09.csv', 'green_taxi_trips')
    load_data('/data/taxi+_zone_lookup.csv', 'taxi_zones')
