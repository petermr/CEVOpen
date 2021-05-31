# Owner: Kanishka Parashar
### Dictionary: Invasive_plant
## Dictionary link: 
Dictionary can be find here: https://github.com/petermr/CEVOpen/tree/master/dictionary/Invasive_species
## Overview:
Created using SPARQL query
## Procedure:
1. Go to wikidata query page: https://query.wikidata.org/ and create SPARQL query.
2. Run SPARQL query using following command
```
## Selecting the prefered label
## Selecting the prefered label
SELECT Distinct * WHERE {
  VALUES ?item {
    wd:Q2086536 wd:Q190887 wd:Q310208 wd:Q1316058 wd:Q932729 wd:Q2701053 wd:Q2673511 wd:Q311430 wd:Q386585 wd:Q1621617 wd:Q2666767 wd:Q402385 wd:Q149401 wd:Q4672006 wd:Q136648 wd:Q15634290 wd:Q26745 wd:Q2717414 wd:Q2706362 wd:Q161246 wd:Q161115 wd:Q159221 wd:Q2732431 wd:Q4692133 wd:Q1949712 wd:Q159717 wd:Q27835 wd:Q159570 wd:Q1482093 wd:Q750307 wd:Q2717846 wd:Q1160961 wd:Q2834268 wd:Q160097 wd:Q156904 wd:Q2703227 wd:Q1472735 wd:Q3534965 wd:Q682164 wd:Q161568 wd:Q40051889 wd:Q309785 wd:Q4763286 wd:Q2353550 wd:Q275620 wd:Q848254 wd:Q311521 wd:Q2860589 wd:Q87594900 wd:Q163675 wd:Q2716675 wd:Q161114 wd:Q1816048 wd:Q28367 wd:Q311451 wd:Q5712311 wd:Q2875199 wd:Q1366575 wd:Q3219428 wd:Q6395156 wd:Q26158 wd:Q22111300 wd:Q426965 wd:Q158397 wd:Q814421 wd:Q2930211 wd:Q10944544 wd:Q162271 wd:Q4117077 wd:Q159066 wd:Q12345850 wd:Q164128 wd:Q161538 wd:Q2265513 wd:Q18461 wd:Q786072 wd:Q2720939 wd:Q26615 wd:Q163958 wd:Q163559 wd:Q158048 wd:Q12207493 wd:Q15547168 wd:Q1431280 wd:Q1368577 wd:Q1768699 wd:Q857220 wd:Q310961 wd:Q48996866 wd:Q2998776 wd:Q2943755 wd:Q163004 wd:Q259033 wd:Q2715047 wd:Q50840658 wd:Q4925284 wd:Q41530893 wd:Q41531244 wd:Q50840675 wd:Q15629297 wd:Q4115083 wd:Q848784 wd:Q2068262 wd:Q9311819 wd:Q36125 wd:Q289811 wd:Q2583146 wd:Q5114539 wd:Q577669 wd:Q164574 wd:Q158722 wd:Q27282 wd:Q341600 wd:Q21177 wd:Q1524349 wd:Q3281716 wd:Q160100 wd:Q2979028 wd:Q727330 wd:Q2712208 wd:Q5149520 wd:Q5152272 wd:Q19848765 wd:Q15248508 wd:Q5173212 wd:Q470109 wd:Q161406 wd:Q160221 wd:Q135531 wd:Q15397864 wd:Q3005741 wd:Q15528510 wd:Q687435 wd:Q5199880 wd:Q7186137 wd:Q41137071 wd:Q381584 wd:Q1391422 wd:Q145781 wd:Q5247707 wd:Q161735 wd:Q1157813 wd:Q2702202 wd:Q311432 wd:Q150385 wd:Q311239 wd:Q1196309 wd:Q15533996 wd:Q24192276 wd:Q21162077 wd:Q163649 wd:Q690645 wd:Q157969 wd:Q181318 wd:Q367242 wd:Q165403 wd:Q11126839 wd:Q33466 wd:Q159760 wd:Q549727 wd:Q1926297 wd:Q41505 wd:Q157726 wd:Q306504 wd:Q159331 wd:Q159331 wd:Q744339 wd:Q148882 wd:Q15597725 wd:Q15535258 wd:Q2740464 wd:Q621082 wd:Q5458608 wd:Q146684 wd:Q146136 wd:Q5494014 wd:Q164832 wd:Q164101 wd:Q3018415 wd:Q311194 wd:Q151046 wd:Q161879 wd:Q50380327 wd:Q50380330 wd:Q50410083 wd:Q1989614 wd:Q1634712 wd:Q847582 wd:Q1394846 wd:Q49550144 wd:Q376320 wd:Q3782768 wd:Q26354 wd:Q3926743 wd:Q1994229 wd:Q3926753 wd:Q3142116 wd:Q164149 wd:Q826602 wd:Q2716358 wd:Q20757547 wd:Q13919449 wd:Q931460 wd:Q2717256 wd:Q158110 wd:Q164091 wd:Q164181 wd:Q158913 wd:Q1661596 wd:Q158289 wd:Q47140799 wd:Q421057 wd:Q158035 wd:Q654064 wd:Q693409 wd:Q272754 wd:Q311175 wd:Q21175 wd:Q15504069 wd:Q11060111 wd:Q3163048 wd:Q148097 wd:Q822052 wd:Q311188 wd:Q311632 wd:Q6471912 wd:Q15345636 wd:Q332469 wd:Q15600070 wd:Q32465 wd:Q149265 wd:Q5364126 wd:Q35905 wd:Q15228001 wd:Q15228001 wd:Q1074201 wd:Q1848856 wd:Q3339674 wd:Q1768430 wd:Q157078 wd:Q10743709 wd:Q709649 wd:Q161083 wd:Q1076276 wd:Q29907 wd:Q15321400 wd:Q159413 wd:Q3338251 wd:Q5235063 wd:Q157513 wd:Q15129340 wd:Q1813408 wd:Q15227704 wd:Q162171 wd:Q158596 wd:Q6812536 wd:Q6820031 wd:Q6820033 wd:Q140905 wd:Q5699638 wd:Q2717688 wd:Q2719490 wd:Q2235813 wd:Q148532 wd:Q1073621 wd:Q158517 wd:Q15377318 wd:Q157307 wd:Q899338 wd:Q160407 wd:Q158130 wd:Q158875 wd:Q21310666 wd:Q20480616 wd:Q1040814 wd:Q13426501 wd:Q882908 wd:Q847939 wd:Q159743 wd:Q843726 wd:Q2355390 wd:Q15479065 wd:Q37083 wd:Q30166 wd:Q13936842 wd:Q310979 wd:Q144412 wd:Q311192 wd:Q141416 wd:Q162795 wd:Q7115068 wd:Q1640921 wd:Q15550928 wd:Q1209690 wd:Q3024698 wd:Q3595850 wd:Q3510828 wd:Q7142304 wd:Q7142302 wd:Q156790 wd:Q1766333 wd:Q3448230 wd:Q2068761 wd:Q135365 wd:Q42418587 wd:Q836721 wd:Q157419 wd:Q27657 wd:Q607380 wd:Q28557 wd:Q11090755 wd:Q3027867 wd:Q165227 wd:Q158468 wd:Q12024 wd:Q2900918 wd:Q271582 wd:Q3281616 wd:Q654001 wd:Q160343 wd:Q7199152 wd:Q15590374 wd:Q15247575 wd:Q4217123 wd:Q157571

  }
  SERVICE wikibase:label {
    bd:serviceParam wikibase:language "en".
    ?item rdfs:label ?itemLabel;
      skos:altLabel ?itemAltLabel;
      schema:description ?itemDescription.
}
  OPTIONAL {
    ?wikipedia schema:about ?item;
      schema:isPartOf <https://en.wikipedia.org/>.
  }
  OPTIONAL {
    ?hiwikipedia schema:about ?item;
      schema:isPartOf <https://hi.wikipedia.org/>.
  }
  OPTIONAL {
    ?tawikipedia schema:about ?item;
      schema:isPartOf <https://ta.wikipedia.org/>.
  }
  OPTIONAL {
    ?eswikipedia schema:about ?item;
      schema:isPartOf <https://es.wikipedia.org/>.
  }
  OPTIONAL {
    ?frwikipedia schema:about ?item;
      schema:isPartOf <https://fr.wikipedia.org/>.
  }
  OPTIONAL {
    ?dewikipedia schema:about ?item;
      schema:isPartOf <https://de.wikipedia.org/>.
  }
  OPTIONAL {
    ?zhwikipedia schema:about ?item;
      schema:isPartOf <https://zh.wikipedia.org/>.
  }
  OPTIONAL {
    ?urwikipedia schema:about ?item;
      schema:isPartOf <https://ur.wikipedia.org/>.
  }
  OPTIONAL { ?wikipedia wdt:P627 ?IUCN_taxon_ID. }
  OPTIONAL {  }
  OPTIONAL { ?wikipedia wdt:P225 ?taxon_name. }
  OPTIONAL { ?wikipedia wdt:P1843 ?taxon_common_name. }
} 

```

3. After getting result download SPARQL endpoint from the link and get the SPARQL file.
4. Open SPARQL file in notepad
5. Use amidict for SPARQL mapping by the following command:

``` 
amidict -vv --dictionary invasive_plants --directory plantinvasivespecies --input sparql/sparql4 create --informat wikisparqlxml --sparqlmap wikidataURL=item,wikipediaPage=wikipedia,name=itemLabel,term=itemLabel,Description=itemDescription,_p627_iucn_taxonid=ICUN_taxon_ID,_p225_taxon_name=taxon_name,_p1843_taxon_common_name=t --transformName wikidataID=EXTRACT(wikidataURL,.*/(.*)) --synonyms=itemAltLabel 

```


6. Commit changes in github.
7. Dictionary Invasive_plant has about 460 invasive plant entries. 
8. Attributes in the dictionary are : WikidataID, WikidataURL, Description, Common name, plant IUCN status.


### Shweata: Kanishka found GISD property in Wikidata. Here is a query I wrote to get plant invasive species using that property. 
https://query.wikidata.org/#%23Cats%0ASELECT%20%3Fitem%20%3FitemLabel%20%3FGISD%20%3FGRIN%0AWHERE%20%0A%7B%0A%20%20%3Fitem%20wdt%3AP31%20wd%3AQ16521%20.%0A%20%20%3Fitem%20wdt%3AP105%20wd%3AQ7432%20.%0A%20%20%3Fitem%20wdt%3AP1421%20%3FGRIN%20.%0A%20%20%3Fitem%20wdt%3AP5626%20%3FGISD%20.%0A%20%20SERVICE%20wikibase%3Alabel%20%7B%20bd%3AserviceParam%20wikibase%3Alanguage%20%22%5BAUTO_LANGUAGE%5D%2Cen%22.%20%7D%0A%7D

Currently, there are 187 Wikidata Items. 
