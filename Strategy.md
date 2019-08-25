# Strategy

## searching EuropePMC

We believe that EuropePMC has about 10,000 articles which contain plants and some combination of chemistry and the related activity. 
to find 'hits' - these will initially be quite broad. For example searching for articles with "plants" and "medicine" implicitly ANDs them 
but there are still too many
```
getpapers -n -q "plant medicine"
info: Found 73666 open access results
```

To reduce false positives and download time we'll narrow the EPMC search but also refine this on local files 

## dictionaries
ContentMine uses a large range of semantic dictionaries (mainly through linking to Wikidata entries/items) describing a very wide range of objects, e.g.
* plants
* chemicals
* diseases
* countries
and it's easy to create others within an hour using Wikipedia. This gives a multi-faceted search of the contents of each paper allowing 
combinations of dictionaries to give highly precise local filtering.


### misc
getpapers -q "((essential oil) AND (chemical composition))" -x -k 1000 -o oil1000
