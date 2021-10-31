Goal: to parse xml files, extract location data from them, get latitude and longitude coordinates in a df, and plot the data in an interactive map, all as a part of an automated process.

Step 1: Parse Xml files

Step 2: Extract text from xml files using geotext or geopy

Step 3: Get coordinates using Geopy

Step 4: Define data as pandas database

Step 5: Plot points on map

Data Files being used: Oil128 fulltext.xml files in each PMC folder

These were retrieved by downloading the zip of the repository off of github. In the texts, is all the text of the paper. What I want to currently extract is simply location names for now.

Issues:

the thing is, I can extract the location names from a pasted text string in the code by using geotext, however I don't know how to use it when the input is multiple xml files.

Also, currently using nomnatim instead of googlemapsapi, the latter is more accurate and should speeden up the process.

Also, the user has to download the repo and the ipynb file right now, since I haven't been able to figure out how to create a global path and access the files from our Github itself.


