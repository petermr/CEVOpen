# Seaborn visualization library
import seaborn as sns

# Create the default pairplot
sns.pairplot(df, hue ='blues')

#slighly more adv version below

# Plot colored by --- for ---
sns.pairplot(df[df['x'] >= num], 
             vars = ['var1', 'var2', 'var3'], 
             hue = '---', diag_kind = 'kde', 
             plot_kws = {'alpha': 0.6, 's': 80, 'edgecolor': 'k'},
             size = 4);
# Title 
plt.suptitle('Pair Plot title', 
             size = 28);
             
#using pairgrid instead
# Create an instance of the PairGrid class.
grid = sns.PairGrid(data= df_log[df_log['v'] == num],
                    vars = ['v1', 'v2', 
                    'v3'], size = 4)
                    
# Map a scatter plot to the upper triangle
grid = grid.map_upper(plt.scatter, color = 'darkred')

# Map a histogram to the diagonal
grid = grid.map_diag(plt.hist, bins = 10, color = 'darkred', 
                     edgecolor = 'k')
                     
# Map a density plot to the lower triangle
grid = grid.map_lower(sns.kdeplot, cmap = 'Reds')

# Function to calculate correlation coefficient between two arrays
def corr(x, y, **kwargs):
    
    # Calculate the value
    coef = np.corrcoef(x, y)[0][1]
    # Make the label
    label = r'$\rho$ = ' + str(round(coef, 2))
    
    # Add the label to the plot
    ax = plt.gca()
    ax.annotate(label, xy = (0.2, 0.95), size = 20, xycoords = ax.transAxes)
    
# Create a pair grid instance
grid = sns.PairGrid(data= df[df['v'] == 2007],
                    vars = ['v1', 'v2', 'v3'], size = 4)

# Map the plots to the locations
grid = grid.map_upper(plt.scatter, color = 'darkred')
grid = grid.map_upper(corr)
grid = grid.map_lower(sns.kdeplot, cmap = 'Reds')
grid = grid.map_diag(plt.hist, bins = 10, edgecolor =  'k', color = 'darkred');
                    
