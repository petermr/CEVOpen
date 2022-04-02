## This folder contains codes and materials related to terpene pathway classification task.

## Q. What is terpene?
Terpene are the chemical compound found in biosynthetic pathways. Terpenes are highly aromatic compounds that determine the smell of many plants and herbs, such as rosemary and lavender. In biosynthetic pathway there are two major pathway which result in terpene production, MVA Pathway and MEP Pathway. 
## Q. What is pathway?

## Q  Why terpene pathway Classification?
Our Goal of terpene pathway image classification is a subset of a bigger project. To accomplish the task we collected images from Alex Pico's website and tried to classify those images with help human annotators. This subtask carried out by Human annotators gave us baseline standard for our higher level task of using Machine Learning to classify terpene pathway images over the internet.Further the statistics from the human annotation experiment made us realize how ambigous it gets for humans to distinguish Terpene pathway from Pre-Terpene Pathway. The analysis also pointed out that its very easy fr human to capture low leevel classification task i.e to identify is the given image is pathway or not ot if th epathway image is metabolic pathway or not.

## Brief on the Experimentation (Terepene Classification by Human Annotators)
To sucessfully operate on terpene classification task we took dataset from a trusted source. In this website you can more than 300 pathway images some belong to terpene and others not. Therefore it suited our purpose the best, as we wanted to understnd the statistics behind terpene classification task and learn how difficult is gets for human to classifiy images to narrower domains like [pre- terpene, terpene] from broader domain like [Pathway, Metabolic].
The table below will give you a glimse of our data looks for the experimentation.

![image](https://user-images.githubusercontent.com/66965350/161371325-85c64dd7-f1ca-450d-8e9f-00ba8cb2c592.png)

The core idea is to undertand how easy or difficult it is to carry out terpene clasification by human annotators along with that collection labeled data for procuring training/ test data for machine Leraning Frame work. Therefore we circulated the 30 random iamges among 8 annotators coming from different background and asked to classify each of this image. A small sneak peak of the annotated data from one of the annotators in show in the fig below:

![image](https://user-images.githubusercontent.com/66965350/161371924-fc18a16b-58b7-456f-8fc3-51842b967859.png)

The annotated data from the 8 snnotators is then used for the statistical annalysis. You can find the code [here](https://github.com/petermr/CEVOpen/blob/master/statistical_ananlysis_2022/statistical_analysis_annotators.ipynb). You can find discription about the code below. Please check it out. It will take you to an interactive colab session where you can get hands on experience of our experimentation.

## Metrics used for understanding Classification
1. [Correlation coefficient](https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.corr.html)
2. [Confusion Matrix](https://scikit-learn.org/stable/modules/generated/sklearn.metrics.confusion_matrix.html)
3. [Cohens kappa](https://scikit-learn.org/stable/modules/generated/sklearn.metrics.cohen_kappa_score.html)

We found that the best tool to compare performances between annotator is best showcased by cohen's kappa for class labels Pre-Terpene and Terpene.
and Confusion matrix is best for Class labels Pathway and Metabolic. Therefore we use cohen's kappa and confusion matrix to compare and analyse the performances between annotators.


## Results and Observation:
1. The experiment suggested that humans are easily able to distinguish between pathway and non-pathway images. Suggesting that human indeed are good at boarder level task and the rules define for the pathway label is well understood by the human. 
2. Similary the experiment suggested that human are capable of identifing Metabolic pathway easily, and have the least disagreement among annotators.
3. The highest disagreement lies for the class label terpene. This potrayed that it is veru difficult among huamns to distinguish between terpene and and non terpene pathway.
4. Though the human performance for pre-terpene class was better and there was less disagrement, which suggested that rules for preterpene well defined and human coming from different background are able to understand it. 

The table below gives information of interannotator agrement using cohens kappa. The higer the value more is the agrement between annotators.
![image](https://user-images.githubusercontent.com/66965350/161372970-09cc6e69-8b75-46ea-bfb2-ff6b428852aa.png)

From the above table we can see that the average value for terpene is below 0.5 where as average vakue for pre-terpene is 0.8. This suggest that there was high ambiguty among annotators regarding terpene classification. Whereas there was less ambiguity for pre terpene class suggesting humans are confident about pre-terpene pathways

## Future Take
1. Modify the rules for terpene images. So that the ambuguity among the annotators reduces.
2. Finding the troubling imges. And identify what the cause of major confussion among annotators.
3.  
## In the statistical_ananlysis_2022 folder you will find:
1. **df_generation.py** : script file that generates dataframe from all the annotators csv files for a concrened column name [ex. pathway, terpene]
2. **statiscal_analysis.iypnb**: is an interactive jupyter notebook which computes correlation between annotators based on diffrent metrics. In order to see how we are comparing and analysis annotator's performance. Open the notebook in your google colaboratoty by just clicking on the "open colab" button at the top of the notebook, and then experience our methodoly for the analysis. 
3. The subfolder **example_data** gives a glimse of how the original data will look like.




