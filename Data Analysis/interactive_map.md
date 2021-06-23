![q1map](https://user-images.githubusercontent.com/84655810/123061092-f0e12780-d428-11eb-8252-ccd3f7e27038.png)
This is an example of how the map should look like, using bokeh. It will be interactive, so hovering over a data point should give individual information for that respective data point.

Code:
#install bokeh and import libraries

!pip install bokeh

from bokeh.io import output_notebook, show, output_file
from bokeh.plotting import figure, ColumnDataSource
from bokeh.tile_providers import get_provider, Vendors
from bokeh.palettes import PRGn, RdYlGn
from bokeh.transform import linear_cmap,factor_cmap
from bokeh.layouts import row, column
from bokeh.models import GeoJSONDataSource, LinearColorMapper, ColorBar, NumeralTickFormatter
import numpy as np
import pandas as pd

#import and define dataset
import pandas as pd
df = pd.read_csv('name_df.csv', index_col=0)
display(df.head())

# Define function to switch from lat/long to mercator coordinates
def x_coord(x, y):
    
    lat = x
    lon = y
    
    r_major = 6378137.000
    x = r_major * np.radians(lon)
    scale = x/lon
    y = 180.0/np.pi * np.log(np.tan(np.pi/4.0 + 
        lat * (np.pi/180.0)/2.0)) * scale
    return (x, y)
# Define coord as tuple (lat,long)
df['coordinates'] = list(zip(df['latitude'], df['longitude']))
# Obtain list of mercator coordinates
mercators = [x_coord(x, y) for x, y in df['coordinates'] ]

df = df.drop(columns=['geometry']

# Examine our modified DataFrame
df.head()

# Select tile set to use
chosentile = get_provider(Vendors.STAMEN_TONER)

# Choose palette
palette = PRGn[11]

# Tell Bokeh to use df as the source of the data
source = ColumnDataSource(data=df)

# Define color mapper - which column will define the colour of the data points
color_mapper = linear_cmap(field_name = 'attribute1', palette = palette, low = df['attribute1'].min(), high = df['attribute1'].max())

# Set tooltips - these appear when we hover over a data point in our map, very nifty and very useful
tooltips = [("attribute2","@attribute2"), ("Region","@region")]

# Create figure
p = figure(title = 'Invasive Species by region in the United States', x_axis_type="mercator", y_axis_type="mercator", x_axis_label = 'Longitude', y_axis_label = 'Latitude', tooltips = tooltips)

# Add map tile
p.add_tile(chosentile)

# Add points using mercator coordinates
p.circle(x = 'mercator_x', y = 'mercator_y', color = color_mapper, source=source, size=30, fill_alpha = 0.7)

#Defines color bar
color_bar = ColorBar(color_mapper=color_mapper['transform'], 
                     formatter = NumeralTickFormatter(format='0.0[0000]'), 
                     label_standoff = 13, width=8, location=(0,0))
# Set color_bar location
p.add_layout(color_bar, 'right')

# Display in notebook
output_notebook()
# Save as HTML
output_file('IS.html', title='Invasive Species by region in the United States')

# Show map
show(p)
