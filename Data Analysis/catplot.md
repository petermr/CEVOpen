Plotting Categorical Data (Part 1) : Categorical Scatterplots

Analysis:

In catplots, as with any other graph, we look for patterns and deviations from the overall trend. The pattern can be described by the strength, form and the direction of the relationship.
If the points are roughly in a straight line, it denotes a linear relationship. A calculatable value called the correlation coefficient measures the strength and the direction of the relationship between 2 variables.

Continuing to the code, there are 2 types of catplots : swarmplot() and stripplot(). The difference between them is the latter uses a random amount of jitter to adjust the positioning of the points on the categorical axis. Meanwhile the swarmplot() uses an algorithm to prevent the points from overlapping too much.
They are both approaches to the challenge of representing the data more clearly. The code below shows options for customizing a catplot.

code:

#import libararies
import seaborn as sns
import matplotlib.pyplot as plt
sns.set_theme(style="ticks", color_codes=True)

#random amount of jitter
df = sns.load_dataset("df")
sns.catplot(x="v1", y="v2", data=df)

#added jitter parameter
#controls jitter or completely disables it
sns.catplot(x="v1", y="v2", jitter=False, data=df)

#using a swarm plot
#algorithm to prevent overlapping of points
#only good for relatively smaller datasets
sns.catplot(x="v1", y="v2", kind="swarm", data=df)

#adding hue to the graphs
#useful when we want to add another dimension to the plot
sns.catplot(x="v1", y="v2", hue="v3", kind="swarm", data=df)

#controlling the ordering of the dataset
#imp when we have multiple categorical plots in same fig
sns.catplot(x="v1", y="v1", order=["No", "Yes"], data=df)

#when you want categorical attributes on y axis
#useful when we have a lot of categories or the category names are long
#swapped assignment of variables
sns.catplot(x="v1", y="v2", hue="v3", kind="swarm", data=df)

