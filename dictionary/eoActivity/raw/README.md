#Activity Dictionary ReadMe

The headings below are the column headings in the ActivityClassificationRAW20191002.tsv. 
Below each is my note to let you know what to look for in each.

###Essoil DB Correction needed

@gilienv, @Ambarishk, @petermr: Please see the errors/updates that will need to be reflected in the EssoilDb’s CAIDs. Many records were associated to multiple activities. Once the activity names are normalized, these records will need to be associated separately to each relevant activity.

-----
-----


###Multi CAIDs
This column was meant to store the new CAIDs for the ones with multiple relations

-----

caid
Original EssoilDB caid

-----

ActivityClass
Note that I had to create an Activity Class which in some cases is distinct from the Phytomedicinal Activity ActionType. Some good examples of where the Activity Class and Action need to be distinguished is everything in the “Immune | Anti-allergic” or “Immune | Anti-inflammatory” classes. It’s important to define the activities by their specific mode or target of action, so that when formulating we can pinpoint what we want, or hit the problem from multiple angles simultaneously. 

-----

(Phytomedicinal Activity) ActionType
Ambarish/Peter: Please note that there is some repetition here because in some cases, I have separate entries for different “Specific ActivityTarget” values for the same 

-----

Activity Description 
(AMBRISH: Please try to extract the activity descriptions into a new column/field. These need to be verified somehow)
Ambarish: Wherever possible, please pull Activity descriptions (like the ones below) into a separate column/field so I can cross-reference against my own. Also, it is very important to me (if possible) that we keep alignment with my table so I can make adjustments to the Activity names in my formulation creation database.

-----

Specific ActivityTarget
Self explanatory

-----

Reported Uses (Diseases, Symptoms, etc.)
Self explanatory

-----

MannyNotes_Compound Activity
@Ambarishk Most of the notes in this column are questions related to the data originally pulled from EssoilDb. I’m not sure how much of it still needs to be addressed. Please note these things and check when you can.

@Petermr There are quite a few open questions in here that I would love an expert judgement-call on.

Some things seem to be considered as Classes and sub-types. I’m not sure how to handle this
Note the keeping accepted definitions for each Activity is important, otherwise some things like (Anti-mutagenic vs anticarcinogenic) get blurry. Users should be able to see the definitions when creating searches, or viewing presented data

Perhaps we need to have a biochemist clean this up and create homogeneous descriptions
Suggest we adopt the standard to add a hyphen after "Anti-! and "pro-" throughout, if only because it makes it easier to distinguish them when viewing long lists.
Genic is another Modifier word we need to use purposefully in furuture search tool. (eg. two fields that work together: Search for [cancer] + [pro-, -genic] - [anti-, inhibitor]
How can we make the word “modulator” be made more specific? Up/Down? Acts on a specific pathway?
attractant vs phillic? (Specific species?) "Species unspecified" ?
explain as use? Is "Stabilizer" a property that we can list separately?
In terms of Anti- and inhibitor, etc… what exactly is a “Counter”-irritant? Need we further define this into one or more actions or mechanisms of action?

Interesting questions that come up from the EssoilDb data
Why do some fields have multiple responses? Are they tied to a specific compound? If so, where is the cross-over table? There may be a better way to related these without putting multiple answers in the same field

We need to dinstinguish between phytomedicinal Activities from Chemical properties. Examples:
transdermal? is this the same as "skin penetration enhancer"
Flammable? This is a chemical property, not a phyto-medicinal Activity

-----

Route of use: Topical
When we are searching the liturature, we’ll need to find these words too: Topical
Oral
Uncertain
Both

-----

VC Product Class
VC Internal Use Only

-----

VC Utitlity
VC Internal Use Only

