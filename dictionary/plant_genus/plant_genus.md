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
### Updated SPARQL query (2021-05-20)
```
#Plant Genera
SELECT ?plant_genus ?plant_genusLabel ?GRINid ?plant_genusAltLabel  (GROUP_CONCAT(DISTINCT ?image;separator="|") as ?images) ?wikipedia ?synonym ?taxon_range_map_image WHERE {
  ?plant_genus wdt:P31 wd:Q16521;
    wdt:P105 wd:Q34740;
    wdt:P1421 ?GRINid.
  SERVICE wikibase:label { bd:serviceParam wikibase:language "en". }
  OPTIONAL { ?plant_genus wdt:P18 ?image. }
  OPTIONAL { ?plant_genus wdt:P5973 ?synonym. }
  OPTIONAL { ?plant_genus wdt:P181 ?taxon_range_map_image. }
  OPTIONAL { ?wikipedia schema:about ?plant_genus ; schema:isPartOf <https://en.wikipedia.org/> }
}
GROUP BY ?plant_genus ?plant_genusLabel ?GRINid ?plant_genusAltLabel ?wikipedia ?synonym ?taxon_range_map_image
```
### Updated SPARQL query (2021-05-23)
Thanks to Daniel Metichen's help, we now have a way to query for `common taxon name` along with the language attribute. But it only seems to work if we donot concatenate. 
#### Without concatenating `common taxon name`

You can try it [here](https://query.wikidata.org/#SELECT%20%3Fplant_genus%20%3Fplant_genusLabel%20%3FGRINid%20%3Fplant_genusAltLabel%20%20%28GROUP_CONCAT%28DISTINCT%20%3Fimage%3Bseparator%3D%22%7C%22%29%20as%20%3Fimages%29%20%3Fwikipedia%20%3Fsynonym%20%3Ftaxon_range_map_image%20%3Ftaxon_common_name%20WHERE%20%7B%0A%20%20%3Fplant_genus%20wdt%3AP31%20wd%3AQ16521.%20%23%20Give%20me%20all%20items%20which%20are%20instance%20of%20taxon%0A%20%20%3Fplant_genus%20wdt%3AP105%20wd%3AQ34740.%20%23%20Give%20me%20all%20taxon%20with%20taxon%20rank%20%27genera%27%0A%20%20%3Fplant_genus%20wdt%3AP1421%20%3FGRINid.%20%23%20genera%20with%20grin%20id%20%0A%20%20OPTIONAL%20%7B%3Fplant_genus%20wdt%3AP1843%20%3Ftaxon_common_name%20.%7D%0A%20%20BIND%28LANG%28%3Ftaxon_common_name%29%20AS%20%3Ftaxon_common_name_lang%29%0A%20%20%0A%20%20SERVICE%20wikibase%3Alabel%20%7B%20bd%3AserviceParam%20wikibase%3Alanguage%20%22en%22.%20%7D%0A%20%20OPTIONAL%20%7B%20%3Fplant_genus%20wdt%3AP18%20%3Fimage.%20%7D%0A%20%20OPTIONAL%20%7B%20%3Fplant_genus%20wdt%3AP5973%20%3Fsynonym.%20%7D%0A%20%20OPTIONAL%20%7B%20%3Fplant_genus%20wdt%3AP181%20%3Ftaxon_range_map_image.%20%7D%0A%20%20OPTIONAL%20%7B%20%3Fwikipedia%20schema%3Aabout%20%3Fplant_genus%20%3B%20schema%3AisPartOf%20%3Chttps%3A%2F%2Fen.wikipedia.org%2F%3E%20%7D%0A%7D%0AGROUP%20BY%20%3Fplant_genus%20%3Fplant_genusLabel%20%3FGRINid%20%3Fplant_genusAltLabel%20%3Fwikipedia%20%3Fsynonym%20%3Ftaxon_range_map_image%20%3Ftaxon_common_name%0AORDER%20BY%20%28%3Fplant_genusLabel%29%0A)
```
SELECT ?plant_genus ?plant_genusLabel ?GRINid ?plant_genusAltLabel  (GROUP_CONCAT(DISTINCT ?image;separator="|") as ?images) ?wikipedia ?synonym ?taxon_range_map_image ?taxon_common_name WHERE {
  ?plant_genus wdt:P31 wd:Q16521. # Give me all items which are instance of taxon
  ?plant_genus wdt:P105 wd:Q34740. # Give me all taxon with taxon rank 'genera'
  ?plant_genus wdt:P1421 ?GRINid. # genera with grin id 
  OPTIONAL {?plant_genus wdt:P1843 ?taxon_common_name .}
  BIND(LANG(?taxon_common_name) AS ?taxon_common_name_lang)
  
  SERVICE wikibase:label { bd:serviceParam wikibase:language "en". }
  OPTIONAL { ?plant_genus wdt:P18 ?image. }
  OPTIONAL { ?plant_genus wdt:P5973 ?synonym. }
  OPTIONAL { ?plant_genus wdt:P181 ?taxon_range_map_image. }
  OPTIONAL { ?wikipedia schema:about ?plant_genus ; schema:isPartOf <https://en.wikipedia.org/> }
}
GROUP BY ?plant_genus ?plant_genusLabel ?GRINid ?plant_genusAltLabel ?wikipedia ?synonym ?taxon_range_map_image ?taxon_common_name
ORDER BY (?plant_genusLabel)

```
The query yields around 37, 000 Items (with duplicates). We also get the language attributes for the `common taxon name` in the output.  The raw SPARQL endpoint can be found [here](https://github.com/petermr/CEVOpen/blob/master/dictionary/plant_genus/raw/sparql_test_without_concatenation.xml)

#### With concatenating `common taxon name`
You can try it [here](https://query.wikidata.org/#SELECT%20%3Fplant_genus%20%3Fplant_genusLabel%20%3FGRINid%20%3Fplant_genusAltLabel%20%20%28GROUP_CONCAT%28DISTINCT%20%3Fimage%3Bseparator%3D%22%7C%22%29%20as%20%3Fimages%29%20%28GROUP_CONCAT%28DISTINCT%20%3Ftaxon_common_name%3Bseparator%3D%22%7C%22%29%20as%20%3Ftaxon_common_names%29%20%3Fwikipedia%20%3Fsynonym%20%3Ftaxon_range_map_image%20WHERE%20%7B%0A%20%20%3Fplant_genus%20wdt%3AP31%20wd%3AQ16521.%20%23%20Give%20me%20all%20items%20which%20are%20instance%20of%20taxon%0A%20%20%3Fplant_genus%20wdt%3AP105%20wd%3AQ34740.%20%23%20Give%20me%20all%20taxon%20with%20taxon%20rank%20%27genera%27%0A%20%20%3Fplant_genus%20wdt%3AP1421%20%3FGRINid.%20%23%20genera%20with%20grin%20id%20%0A%20%20OPTIONAL%20%7B%3Fplant_genus%20wdt%3AP1843%20%3Ftaxon_common_name%20.%7D%0A%20%20BIND%28LANG%28%3Ftaxon_common_names%29%20AS%20%3Ftaxon_common_name_lang%29%0A%20%20%0A%20%20SERVICE%20wikibase%3Alabel%20%7B%20bd%3AserviceParam%20wikibase%3Alanguage%20%22en%22.%20%7D%0A%20%20OPTIONAL%20%7B%20%3Fplant_genus%20wdt%3AP18%20%3Fimage.%20%7D%0A%20%20OPTIONAL%20%7B%20%3Fplant_genus%20wdt%3AP5973%20%3Fsynonym.%20%7D%0A%20%20OPTIONAL%20%7B%20%3Fplant_genus%20wdt%3AP181%20%3Ftaxon_range_map_image.%20%7D%0A%20%20OPTIONAL%20%7B%20%3Fwikipedia%20schema%3Aabout%20%3Fplant_genus%20%3B%20schema%3AisPartOf%20%3Chttps%3A%2F%2Fen.wikipedia.org%2F%3E%20%7D%0A%7D%0AGROUP%20BY%20%3Fplant_genus%20%3Fplant_genusLabel%20%3FGRINid%20%3Fplant_genusAltLabel%20%3Fwikipedia%20%3Fsynonym%20%3Ftaxon_range_map_image%20%0AORDER%20BY%20%28%3Fplant_genusLabel%29%0A)
```
SELECT ?plant_genus ?plant_genusLabel ?GRINid ?plant_genusAltLabel  (GROUP_CONCAT(DISTINCT ?image;separator="|") as ?images) (GROUP_CONCAT(DISTINCT ?taxon_common_name;separator="|") as ?taxon_common_names) ?wikipedia ?synonym ?taxon_range_map_image WHERE {
  ?plant_genus wdt:P31 wd:Q16521. # Give me all items which are instance of taxon
  ?plant_genus wdt:P105 wd:Q34740. # Give me all taxon with taxon rank 'genera'
  ?plant_genus wdt:P1421 ?GRINid. # genera with grin id 
  OPTIONAL {?plant_genus wdt:P1843 ?taxon_common_name .}
  BIND(LANG(?taxon_common_names) AS ?taxon_common_name_lang)
  
  SERVICE wikibase:label { bd:serviceParam wikibase:language "en". }
  OPTIONAL { ?plant_genus wdt:P18 ?image. }
  OPTIONAL { ?plant_genus wdt:P5973 ?synonym. }
  OPTIONAL { ?plant_genus wdt:P181 ?taxon_range_map_image. }
  OPTIONAL { ?wikipedia schema:about ?plant_genus ; schema:isPartOf <https://en.wikipedia.org/> }
}
GROUP BY ?plant_genus ?plant_genusLabel ?GRINid ?plant_genusAltLabel ?wikipedia ?synonym ?taxon_range_map_image 
ORDER BY (?plant_genusLabel)

```
This query gives me ~ 25, 000 Items (no duplicates). However, we don't get the language attributes for `common taxon name` in the output. You can find the raw SPARQL output [here](https://github.com/petermr/CEVOpen/blob/master/dictionary/plant_genus/raw/sparql_test_concatenation.xml) 
# No. of Terms
The dictionary contains ~25,000 terms

# Other features
Apart from term, its Wikidata and GRIN Id, we also have:
- Images
- Map
- Common Taxon Name (in different languages)
- Wikipedia links

# To-Do
- Add metadata
  - dictionary owner
  - date of creation
  - Restful URL of the query
- Add property id to the dictionary (P1421)


