# plant_genus dictionary
sparpl map
```amidict -vv --dictionary plant_genus --directory plant_genus_dictionary --input plant_genus_sparql.xml create --informat wikisparqlxml --sparqlmap wikidataURL=plant_genus,term=plant_genusLabel,GRINid=GRINid,wikidataURL=plant_genus --transformName wikidataID=EXTRACT(wikidataURL,.*/(.*)) --synonyms=wikidataAltLabel```
