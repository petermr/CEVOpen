# previous correspondence mainly with collaborators

[parts may be snipped for personal reasons].

# 20190823 [PMR -> Gitanjali Yadav]
[I am writing]  a paper for Mat Todd's special issue on Medicinal Chemistry.
https://www.beilstein-journals.org/bjoc/series/98

Mat developed Open NoteBookScience for malaria and so our work on EssoilDB and the new venture into extracting skin 
related indications for plant extracts would fit brilliantly. (I have written to him).
I will write the paper. 
Over 11 years EssoildDB1.0 has used the scientific literature to create a unique overview of the essential oil output from a wide range of plants investigated for biological activity. we have recently cleaned and normalized this and made it semantic by linking to online authorities. Here we report a new semantic tool for phytochemical medical discovery consisting of
- a dictionary (1839) of plants known to produce essential oils and rooted in accepted taxonomy
- a dictionary (2112) of unique compounds  in essential oils, with specific and generic identification (InChI) and lined to global authorities (PubChem, ChEBI, Wikidata)
- a dictionary of terms for specific diseases (e.g. of the skin) again linked to authorities (ICD-10, Wikidata)
- automatic creation of  queries from dictionaries and search of EPMC
- downloading thousands of potentiallly relevant articles
- secondary search to find precisely those articles with plants, oils, compounds
- extraction of tables of oil composition and their activities.
We have applied this to (say) a subset of 1000 articles related to essential oils and skin.

The authorship would be:
Gita Yadav
Emanual Faria
Ambarish Kumar
Manish 
Vinita Lamba
Shruthi-M
PMR

[] will go ahead today and build the system that Manny and I will use to search
EPMC for essential oils and acne. Since this is ONS we don't have to have any formal chemical / medicinal results - this would be 
a methodology paper and give snapshots of what we find. 

Ambarish is doing a good and essential job on normalising the compounds (nearly finished) and will report their frequency. 

# 20190906 [PMR -> Mat Todd, editor]
Mat
Thanks for your mail. We're trying to keep close to your deadline.

[Introducing Leonie who is a computational chemist in Cambridge, worked at Nature and PLOS and who will work with me to coordinate the article - she has lots of experience.]

We've made a lot of progress. Wed/Thur this week was ELife Sprint in Cambridge and we had a team of 6 working for two days on automatic extraction. The article will be unusual and groundbreaking.

I think it's unique. It may need explaining to traditional editors. It's totally Open notebook and I intend to dedicate it to J-CB. So apart from some emails - which we keep to the minimum - it's all on Github.

It's a sort of hybrid between a normal article and OpenSourceMalaria + Tim Gowers' Polymath.
We start with a trajectory - a live project from Gita's lab with hundreds of Github commits and issues over the last weeks to create a new semantic resource for Manny (EF) to use for detecting antibacterial activity on skin. The main current activity is to create a list of the terpenes in the literature and validate them against Pubchem, ChEBI and then link them to Wikidata.
We do the same for plants.
We have several thousand Open EPMC articles which we have broken into sections and can search with dictionaries. Dictionaries (mainly linked to Wikidata) are:
* chemical names
* binomial plant names
* equipment - e.g. mass spec models (this is new)
* countries
* diseases

The equipment dictionary is new. We are creating NLP and ML tools to extract this semi-automatically. This is very new and readers should be interested in how to do this. We don't know the actual names/IDs - they aren't in Wikidata. We don't know how well it will work for equipment (it works well for codes/programs) and we think the earst Pattern / word2vec should work well enough to allow manual editing. So this will be new research being done while the paper is being written. A benefit is that it will show readers how easy/difficult it is to get up to speed. This technology will be useful for all sorts of knowledge extraction if it works.

Then we are creating new entries in Wikidata as we find equipment. This is new (there's very little in) but it should be important for so many things (cf RRIDs).

The manuscript will be an overlay over all this activity. In essence it's the normal narrative of which we are doing this, but then a series of short sections explaining what we are doing and then *pointing* at what we *did* and comments on what went well and badly. A major emphasis will be on not retyping anything, just commenting on it.

This is clearly different from the normal article. It starts with the preparation of the submission, all of which will be visible. I shall cut and paste this mail and then discussion on Github Issues. So submission is a snapshot when we decide we can formally mail you. The reviewers will see the submission (when the snapshot will have advanced), and the narrative and the data will be changing constantly as we do the work. Then depending on how it's reviewed there might be changes and rereview (snapshot) and publication (yet another snapshot) . When a reader finds the article they'll see a work in progress beyond where the "publication" is.

If the journal wants an authorSubmittedManuscript  or  VersionOfRecord we can produce it. We are using Markdown and there are tools which can create a docx automatically. I expect we could even create JATS - Pandoc can create this. so these versions can be assembled on demand. Indeed we could assemble a "manuscript" at ant stage in the future.
Hope this makes sense - Trust us we are working hard to meet schedules.
