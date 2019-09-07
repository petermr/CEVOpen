# original draft 

## history

I started authoring this on GDocs (stil exists) but we are moving to markup
https://docs.google.com/document/d/11xogx_YHQavuytlhtNMk-4wj6IIDAa6OG1gJP-mUvyU/edit#

# Mining the literature for phytomedicinal data; an OpenNotebook study

## authors

(in no order) Emanuel Faria, Vinita Lamba1, Shruthi M1, Manish Kumar1, Ambarish Kumar1, Gitanjali Yadav1,2, Peter Murray-Rust2,3, a
1 National Institute of Plant Genome Research, New Delhi, IN; 2 University of Cambridge, UK; 3 ContentMine Ltd, Cambridge, UK
Leonie Mueck
Tiaga Lubiana
Sophia
michael owonibi
Sabine Weber
[please add yourself if you made contributions and indicate what]



## destination

Submitted to medrxiv preprints and Beilstein J Org Chem (special issue ed Mat Todd)

## context

https://www.beilstein-journals.org/bjoc/series/98

## Abstract

Essential oils (EO) derived from plants have been an  important resource for treating disease for millennia. The current scientific literature contains thousands of articles whose primary purpose is to report oils extracted from specific plants, the methodology, their chemical composition and their biological and medicinal activities.  EssoilDB1.0 is an 11-year project to manually extract this data, but limited by human resources and the exponential growth of the literature. We now report a toolkit  (AMI+EssoilDB2.0,  AE2)  for automatically searching the Open scientific literature, downloading articles on EOs and precisely extracting a wide range of properties.
EssoilDB2.0 is a heavily cleaned, normalized version of E1.0 with added semantic links to Open authorities including NCBI, EBI and Wikidata resources. It includes
a dictionary (1839) of plants known to produce essential oils and rooted in accepted taxonomy
a dictionary (2112) of unique compounds  in essential oils, with specific and generic identification (InChI) and linked to global authorities (PubChem, ChEBI, Wikidata)
a dictionary of terms for specific diseases (e.g. of the skin) again linked to authorities (ICD-10, Wikidata)
tools for automatic creation of  queries from dictionaries and searches of online Open repositories (especially EuropePubMedCentral, EPMC)
a downloader (getpapers)  running at 10 articles/sec
local semantic dictionaries for a large range of facets (species, diseases, compounds, drugs, plants, plant parts, geographical locations 
a secondary search of the articles by the dictionaries
extraction of tables of oil composition and their activities.
As a proof of concept we have applied this to a subset of ?1000 articles related to essential oils and skin diseases (such as acne and comedo).
OpenNotebook and Github
All work is performed as OpenNotebookScience (ONS) where all activities are carried out in full public and resources are versioned. The code and dictionaries are reposited over several Github repositories, the  downloaded articles and extracted data are also reposited in Github. Note that this procedure records *everything*, including misconceptions, “errors”, revisions, raw data, poor structures, etc. Part of this project is a learning process and it can act as a resource for others learning to avoid “mistakes” or how to clean or reorganize resources. The repos are documented for project members - ONS, like OpenSource, guarantees that the material is there but it may take effort to understand parts of it.
The management of the project takes place largely by Github issues, a system where tasks and incremental results are identified and posted to Issues (each is a stream of messages) and assigned to project members. In general there will be a small number of active issues, and much larger number of open issues in various states (“resting”, “finished”) and then closed issues. Where possible finished issues and duplicate issues should be closed.

## Introduction

Manny, Gita to write and find references… I am writing some lead-in sentences. Correct this savagely.

### Background

Many current medicines are derived from plants and many current therapies (e.g. Ayurvedic medicine) are based on plants 
and their products. We make no comment on the reliability, safety or value of any treatment but note that the scientific 
literature contains tens of thousands of reports of plants, their extracts and medicinal properties. The tools described 
here allow readers to rapidly download and analyse such papers much more efficiently than previously.


See https://en.wikipedia.org/wiki/Medicinal_plants (do not plagiarise)

Medicinal plants, also called medicinal herbs, have been discovered and used in traditional medicine practices since 
prehistoric times. Plants synthesise hundreds of chemical compounds for functions including defence against insects, 
fungi, diseases, and herbivorous mammals. Numerous phytochemicals with potential or established biological activity 
have been identified. However, since a single plant contains widely diverse phytochemicals, the effects of using a 
whole plant as medicine are uncertain. Further, the phytochemical content and pharmacological actions, if any, of 
many plants having medicinal potential remain unassessed by rigorous scientific research to define efficacy and safety.[2]

### Phytomedicine

See https://en.wikipedia.org/wiki/Herbal_medicine#Phytomedicine



### Source and Extraction of Essential Oils

https://en.wikipedia.org/wiki/Essential_oil
We concentrate here on Essential Oils, the volatile component of a plant’s phytochemistry. 

[from Wikipedia, please rewrite] Essential oils are generally extracted by distillation, often by using steam. 
Other processes include expression, solvent extraction, sfumatura, absolute oil extraction, resin tapping, wax 
embedding, and cold pressing. They are used in perfumes, cosmetics, soaps and other products, for flavoring 
food and drink, and for adding scents to incense and household cleaning products.

The composition of essential oils can vary widely and depend on many factors
* The variety of plant and status as hybrid
* The part of the plant
* The growing conditions (soil, season, temperature, light, geographical location, water)
* Biotic stresses (e.g. pathogens)
* Method of extraction (distillation, solvents, etc.)

The literature does not use controlled vocabularies for this so there is wide variety in reporting. 
The analytical method can also vary, but is usually Gas-Chromatography / Mass spectrometry (GC-MS). Chiral 

## Methods and Materials

Scope and limitations

This article describes firstly the development of automatic tools for 
* Information Retrieval (identification of phytochemical articles )
* Information Extraction (extraction of phytochemical data from articles and correlation with medicinal activities)
* extension of the semantic dictionaries for compounds and plants

And secondarily we apply these tools to a medical condition (skin diseases). We do NOT presume how researchers 
might use the results; it could be to find new compounds, to challenge existing therapies, to determine toxicities . 
The choice of target is arbitrary - it could be anti-infectives, toxicology, insecticides, or any well-defined term 
in reference dictionaries such as ICD-10; Similarly the compounds could have been extracted by other means 
(boiling water (teas) or tinctures (organic solvents)). 

## Overall methodology
The strategy is modular and after every module the results are available on local file storage in Unicode-based standards 
(HTML, XML, SVG, CSV, etc.). This means that, so long as the user adheres to the ContentMine format and naming scheme
they can add, remove or replace individual modules with other systems or local scripts. It also means that intermediate 
results can be archived and re-analyzed when other tools are developed. 

The modules (objects and actions) are

## Dictionaries

Collections of terms linked to semantic backing (especially wikidata). Dictionaries (e.g. MeSH) have been 
widely used for decades; the methodology here is that they are close to the users and can be edited and restructured. 
Unlike authority-based dictionaries (ICD-10) which take 10-20 years to change, ContentMine dictionaries can be created in minutes or hours, and linked automatically to Wikidata. That makes them ideal for rapid searches and understanding of new terms.

### ContentMine dictionaries
ContentMine dictionaries are simple; a list of search terms and (where possible) links to Wikidata or Wikipedia. Here's an example:
```
<dictionary title="climate">
	<desc>created from Wikipedia glossary of climate change</desc>
<entry url="/wiki/Agriculture" name="Agriculture" term="agricultural"/>
<entry url="/wiki/Albedo" name="Albedo" term="albedo"/>
<entry url="/wiki/Anoxic_event" name="Anoxic event" term="Anoxic event"/>
```
The only mandatory field is `term` (which is used for searching). Searching (in `ami`) uses this as the search term and ignores case, and also applies stemming. The value of dictionaries comes with the links to `Wikipedia` or `Wikidata`. Any taxonomy (higher/lower/broader terms) is left to Wikidata which has a huge range of relations. Wikidata also has synonyms, but some ContentMine dictionary terms have contained `<synonym>` children, but this is not well advanced.

The `title` attribute is mandatory and must match the filename and defines the identity of the dictionary. The `<desc>` is optional. 

## searching with `ami`
`ami-search` uses dictionaries to find words in the text, with stemming and ignoring case. The results are child directories of the `CTree`s 
Example:
```
ami-search 
    -p oil186                      # search all CTrees in the child ./oil186 CProject
    --dictionary                   # a list of dictionaries
    mydictionaries/compound.xml    # local personal dictionary (relative to cwd)
    country                        # builtin dictionary
    disease                        # builtin
    funders                        # builtin
    mydictionaries/instrument.xml  # local personal dictionary
    monoterpene                    # builtin
    species                        # pseudo-dictionary (uses regex)
    
```
This searches 6 dictionaries and `species` using a regex for binomial names. There's also a (hidden) `word` cloud/frequency 
tool. The results are in the `CTree` children:


PMC6015887/
├── eupmc_result.json
├── fulltext.xml
├── results
│   ├── search
│   │   ├── compound
│   │   │   └── results.xml
│   │   ├── country
│   │   │   └── results.xml
│   │   ├── disease
│   │   │   └── results.xml
│   │   ├── funders
│   │   │   └── results.xml
│   │   ├── instrument
│   │   │   └── empty.xml
│   │   └── monoterpene
│   │       └── empty.xml
│   ├── species
│   │   └── binomial
│   │       └── results.xml
│   └── word
│       └── frequencies
│           ├── results.html
│           └── results.xml
```

### Disease dictionary

### Compound dictionary
### Plant dictionary
### Instrument dictionary

## Initial Remote Search
## Local Search
### Analysis of search 

