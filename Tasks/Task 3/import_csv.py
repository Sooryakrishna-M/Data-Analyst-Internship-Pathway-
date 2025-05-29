import pandas as pd
import sqlite3

# Load the CSV file
csv_file = "Ecommerce Shipping Data.db.csv"  # Make sure this matches your actual file name
df = pd.read_csv(csv_file)

# Connect to (or create) SQLite database
conn = sqlite3.connect("ecommerce_data.db")  # This will create ecommerce_data.db in your folder

# Save DataFrame to a new table in the database
df.to_sql("shipping_data", conn, if_exists="replace", index=False)

# Close the connection
conn.close()

print("CSV data has been imported into ecommerce_data.db successfully.")
