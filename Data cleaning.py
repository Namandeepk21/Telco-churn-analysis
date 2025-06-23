import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

# Load the data
df = pd.read_csv('Initial_eda.csv')

# Check top rows
print(df.head())

# Check missing values
print(df.isnull().sum())

# Visualize Churn counts
sns.countplot(x='Churn', data=df)
plt.title("Churn Count")
plt.show()
# Remove any leading/trailing spaces in column names
df.columns = df.columns.str.strip()

# Convert to numeric and handle errors
df['TotalCharges'] = pd.to_numeric(df['TotalCharges'], errors='coerce')

# Drop rows with missing TotalCharges
df.dropna(subset=['TotalCharges'], inplace=True)