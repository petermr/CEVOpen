# plant_genus dictionary
`plant_genus` dictionary contains names of important plant genera with GRIN Id (https://en.wikipedia.org/wiki/Germplasm_Resources_Information_Network). 
# SPARQL query
```
#Plant Genera
SELECT ?plant_genus ?plant_genusLabel ?GRINid ?plant_genusAltLabel
WHERE 
{
  ?plant_genus wdt:P31 wd:Q16521. # Give me all items which are instance of taxon
  ?plant_genus wdt:P105 wd:Q34740. # Give me all taxon with taxon rank 'genera'
  ?plant_genus wdt:P1421 ?GRINid. # genera with grin id 
  SERVICE wikibase:label { bd:serviceParam wikibase:language "[AUTO_LANGUAGE],en". }
}

```
# RESTful URL
https://query.wikidata.org/#%23Plant%20Genera%0ASELECT%20%3Fplant_genus%20%3Fplant_genusLabel%20%3FGRINid%20%3Fplant_genusAltLabel%0AWHERE%20%0A%7B%0A%20%20%3Fplant_genus%20wdt%3AP31%20wd%3AQ16521.%20%23%20Give%20me%20all%20items%20which%20are%20instance%20of%20taxon%0A%20%20%3Fplant_genus%20wdt%3AP105%20wd%3AQ34740.%20%23%20Give%20me%20all%20taxon%20with%20taxon%20rank%20%27genera%27%0A%20%20%3Fplant_genus%20wdt%3AP1421%20%3FGRINid.%20%23%20genera%20with%20grin%20id%20%0A%20%20SERVICE%20wikibase%3Alabel%20%7B%20bd%3AserviceParam%20wikibase%3Alanguage%20%22%5BAUTO_LANGUAGE%5D%2Cen%22.%20%7D%0A%7D%0A

# SPARQL map - Converting SPARQL output to `ami`-readable dictionary
```
amidict -vv --dictionary plant_genus --directory plant_genus_dictionary --input plant_genus_sparql.xml create --informat wikisparqlxml --sparqlmap wikidataURL=plant_genus,term=plant_genusLabel,GRINid=GRINid,wikidataURL=plant_genus --transformName wikidataID=EXTRACT(wikidataURL,.*/(.*)) --synonyms=wikidataAltLabel
```
# No. of Terms
The dictionary contains ~25,000 terms

# To-Do
- Add metadata
  - dictionary owner
  - date of creation
  - Restful URL of the query
- Add property id to the dictionary (P1421)
