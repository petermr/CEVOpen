import pandas as pd
import numpy as np
import seaborn as sns
import matplotlib.pyplot as plt
%matplotlib inline
df = pd.read_csv('Plant_compound.csv')
print (df)
plt.figure(figsize=(20,23))
sns.heatmap(df.corr(),annot=True,linewidth = 0.5, cmap='coolwarm')