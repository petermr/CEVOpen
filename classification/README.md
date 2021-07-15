#Classification
Owner: Chaitanya Sharma

### Supervised and Unsupervised Text Classification.
## 1. We created sections using  [`ami3`](https://github.com/petermr/ami3/wiki/ami-section) which look like this 

https://github.com/petermr/openDiagram/blob/master/physchem/resources/oil26/PMC5454990/sections/2_back/0_ack.xml 
```
<?xml version="1.0" encoding="UTF-8"?>
<ack>
 <title>Acknowledgments</title>
 <p>The authors are grateful to CNPq-Programa “Ciências sem fronteiras” (Grant No. 233761/2014-4) for financial support.</p>
</ack>
```

## 2. Further we flattened the `XML` into text format for readability. 
https://github.com/petermr/openDiagram/blob/master/physchem/resources/oil26/PMC5454990/sections/2_back/0_ack.txt
## 3. We have 2 major problem statements:  
- Not all sections are labelled with universally accepted vocabulary. 
- We want to improve our knowledge resource by clustering together similar articles on a paragraph or section basis. E.g. Using unsupervised learning we find out that gas chromatography is a frequently used phrase, we use it as a label to group together other articles that mention gas chromatography. 
## 4. Goals 
 - We plan on extracting keywords and phrases using NLTK rake. We create a bag of words and tf-idf representation of the data. We manually agree on the labels we want to use for topic modelling. https://en.wikipedia.org/wiki/Tf%E2%80%93idf 
 - We want to work with different tools and libraries in python and discover the tools which serves our purpose best. 
 - Create a robust open access knowledge resource for invasive plant species and aromatic plants. 
## 5. Tools: 
 - Scikit-learn clustering models https://scikit-learn.org/stable/modules/clustering.html
 - gensim https://pypi.org/project/gensim/
 - countvectorizer https://www.geeksforgeeks.org/using-countvectorizer-to-extracting-features-from-text/
 - tf-idf https://en.wikipedia.org/wiki/Tf%E2%80%93idf 
 - LDA https://en.wikipedia.org/wiki/Latent_Dirichlet_allocation
 - cosine similarity https://en.wikipedia.org/wiki/Cosine_similarity
 - spacy  https://spacy.io/models#conventions
 - Jupyter Notebook for ease of collaboration, documentation and packaging.  
 ## 6. Methodology : 
 1. Extract features using unsupervised K-means clustering . 
 2. Use obtained features to immplement semisupervised sentence level search. Usage of weight and numbder of hits/ sentence to retreive unlabelled acknowledgments. 
 3. Build a classifier using logistic regression and k nearest neighbours. 
 4. Label unlabelled amd wrongly labelled sections using the classifier. 
  
