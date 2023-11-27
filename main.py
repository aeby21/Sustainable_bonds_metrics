
import pandas as pd
import pyarrow

bonds_data_df = pd.read_excel("Data/Daten Sustainable Bonds Bloomberg.xlsx",sheet_name="Bloomberg")
bonds_data_df.to_feather("Data/green_bonds.arrow")
print(bonds_data_df.iloc[0])