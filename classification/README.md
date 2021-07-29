#Classification
Owner: Chaitanya Sharma

# Supervised and Unsupervised Text Classification.
## 1. We created sections using  [`ami3`](https://github.com/petermr/ami3/wiki/ami-section) which look like this 

https://github.com/petermr/openDiagram/blob/master/physchem/resources/oil26/PMC5454990/sections/2_back/0_ack.xml 
```
<?xml version="1.0" encoding="UTF-8"?>
<ack>
 <title>Acknowledgments</title>
 <p>The authors are grateful to CNPq-Programa “Ciências sem fronteiras” (Grant No. 233761/2014-4) for financial support.</p>
</ack>
```

## 2. We have 2 major problem statements:  
- Sections in scholarly documents aren't labelled with universally [controlled vocabulary](https://en.wikipedia.org/wiki/Controlled_vocabulary) in some journals/publications. Read more about [JATS](https://www.xml.com/articles/2018/10/12/introduction-jats/). 
- We want to improve our knowledge resource by clustering together similar articles on a paragraph or section basis. E.g. Using unsupervised learning we find out that gas chromatography is a frequently used phrase, we use it as a label to group together other articles that mention gas chromatography. This would involve manually agreeing on the labels. We can extract such labels from the methods section using unsupervised clustering methods. 
- Extract common themes from acknowlodgment statements. At the same time build binary classifiers that can automate the process correctly ('Acknowledgments' is a very broad term and ambiguities may arise even during inter annotator agreement while creating gold standards). This [plos one article](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC7021295/) describes in depth the complexity of this problem. 
## 3. Goals 
 - We plan on extracting keywords and phrases using NLTK rake and pke using both supervised and unsupervised learning methods. We create a bag of words and [tf-idf](https://en.wikipedia.org/wiki/Tf%E2%80%93idf ) representation of the entire corpus related to acknowledgment statements. We manually agree on features to be used for phrase matching. 
 - This project is entirely experimental. We want to work with different tools and libraries in python and discover the tools which serves our purpose best. We will start with classic machine learning models e.g SVM's and Bayesian classification. If and only if we we aren't able to acheive the results we desire, we experiment with state-of-the-art technologies such as transformers, LSTM etc. Here's a brief list of libraries that can be used in future :
 1. [Hugging Face](https://github.com/huggingface/transformers) 
 2. [LSTM](https://en.wikipedia.org/wiki/Long_short-term_memory)
 3. [CNN + Doc2vec](https://towardsdatascience.com/multi-class-text-classification-with-doc2vec-logistic-regression-9da9947b43f4#:~:text=Doc2vec%20is%20an%20NLP%20tool,generalizing%20of%20the%20word2vec%20method.&text=Distributed%20Representations%20of%20Sentences%20and,classification%20with%20word%20embeddings%20tutorial) 
 - Create a robust open access knowledge resource for invasive plant species and aromatic plants. 
## 4. Tools: 
 - Scikit-learn clustering models https://scikit-learn.org/stable/modules/clustering.html
 - gensim https://pypi.org/project/gensim/
 - countvectorizer https://www.geeksforgeeks.org/using-countvectorizer-to-extracting-features-from-text/
 - tf-idf https://en.wikipedia.org/wiki/Tf%E2%80%93idf 
 - LDA https://en.wikipedia.org/wiki/Latent_Dirichlet_allocation
 - cosine similarity https://en.wikipedia.org/wiki/Cosine_similarity
 - spacy  https://spacy.io/models#conventions
 - Jupyter Notebook for ease of collaboration, documentation and packaging.  
 ## 5. Methodology : 
 1. Extract features using unsupervised K-means clustering . 
 2. Use obtained features to immplement semisupervised sentence level search. Usage of weight and numbder of hits/ sentence to retreive unlabelled acknowledgments. 
 3. Build a classifier using support vector machines and multinomialNB naive bayes. 
 4. Label unlabelled amd wrongly labelled sections using the classifier. 
  
