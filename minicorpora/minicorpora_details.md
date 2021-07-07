## Goal: To create gold standard of annotated corpus of 50 papers.
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

## `ami section`
- The downloaded research articles were divided into several parts using the `ami section`.
- Following the `ami section`, the document was divided into four sub folders: front, body, back, and floats-group.
- The material and method section is in the body folder, which is in the sections folder.

## Manual annotation
- For each papers I looked for plant parts in the materials and method section.
- I searched in the materials and methods section of each publication for plant parts.
- The table contains all of the information that was retrieved : https://github.com/petermr/CEVOpen/blob/master/minicorpora/goldstandard%20(plantpart)/goldstandard%20(method_annotation).csv
 
 ## Observations:
 -  Of the 50 articles, 39 contained plant part term in the section of material and method.
 -  The most common terms are aerial parts, leaves and flowers.
 -  aerial part is not involved in the plant part dictionary.
 -  PMC8231073 contains no sections.

## Note:
### Aerial parts: T
- The word "aerial" refers to anything which is above a solid surface in the air or in the space. It refers to the plants that are above the earth, including the stems, leaves,   petioles, flowers, fruit and seeds. 
- Wikidata Id is yet not available for this term.
