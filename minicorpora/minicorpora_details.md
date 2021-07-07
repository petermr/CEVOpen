## Goal: To create golds tandard of annotated corpus of 50 papers.
### Testing:
- A gold standard of 50 papers where the dictionary plant part is relevant was manually made up.
- The goal is to manually annotate these papers so that they can be compared to the machine annotations and conclusions may be drawn.
- The materials and methods section was investigated in order to retrieve the terms of the plant part.

### Creation of minicorpora relevant to the dictionary plant_part
- This query was used to download papers from getpaper:

``` 
getpapers -q "(essential oil AND (METHOD: plant part) AND (((SRC:MED OR SRC:PMC OR SRC:AGR OR SRC:CBA) NOT (PUB_TYPE:Review)))) AND (FIRST_PDATE:2020 OR FIRST_PDATE:2021)" -x -p -k 50 -o goldstandard
```

- The above query was constructed in such a way that the downloaded essential oil documents included the plant part stated in the methodology. 
- We're considering about the research article since we need to annotate the material and method section. 
- The research publications issued in the years 2020 and 2021 will be considered for download from EuropePMC.
- Downloaded 50 research papers once the query was successfully run. 
- Downloaded articles in JSON, XML, and full text pdf format, each with a unique PMC ID.
- Here is a link to Corpora : https://github.com/petermr/CEVOpen/tree/master/minicorpora/goldstandard%20(plantpart)
- 
