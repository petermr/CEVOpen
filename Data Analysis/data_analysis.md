Welcome to the Wiki. 
![image (1)](https://user-images.githubusercontent.com/84655810/122373668-4b890800-cf7f-11eb-9c5c-04e2e74df8c6.png)

Code:

import pandas as pd

import numpy as np

import seaborn as sns

import matplotlib.pyplot as plt

%matplotlib inline

df = pd.read_csv('Plant_compound.csv')

print (df)

plt.figure(figsize=(20,23))

sns.heatmap(df.corr(),annot=True,linewidth = 0.5, cmap='coolwarm')

Data used: Plant_compound.csv
