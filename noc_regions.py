import pandas as pd
import warnings
warnings.filterwarnings("ignore")


#Task1
#Loading the data
def read_data_from_csv():
    df = pd.read_csv('noc_region.csv')
    return df


#Task 2: Renaming the Columns
def data_cleaning():
    # Read data from a CSV file
    data = read_data_from_csv()

    # Create a copy of the data
    df = data

    # Define columns to remove
    columns_to_remove = ['notes']

    # Drop the specified columns from the dataframe
    df = df.drop(columns_to_remove, axis=1)

    # Define new column names for renaming('noc_region': 'NOC' and 'reg': 'region')
    new_column_names = {'noc_region': 'NOC', 'reg': 'region'}
    # Rename columns using the new column names
    df = df.rename(columns=new_column_names)
    # Save the cleaned dataset to a new CSV file named 'olympics_history_noc_regions_cleaned.csv'
    df.to_csv('olympics_history_noc_regions_cleaned.csv', index=False)

    # Return the cleaned dataset
    return df


#Do not Delete the Following function
def task_runner():
    data_cleaning()
