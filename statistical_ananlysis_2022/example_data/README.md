### Inside the example_data folder you can find these folders:
1. **annotators_label** : which contain samples of annotators label for a random set of images collected from Alex Pico shiny-terpeneplant](https://gladstone-bioinformatics.shinyapps.io/shiny-terpeneplant/) website.
2. **outputs** : which shows how the ouput files will look like for the original data after you run the statiical_analysis_annotator.ipynb.


Further, inside the folder outputs you can find folder with name:

 1. **terpene** : contains statistical analysis performnace of annotators for the column "Trepene".
 2. **pathway** : contains statistical analysis performnace of annotators for the column "Pathway".
 3. **pre_terpene** : contains statistical analysis performnace of annotators for the column "Pre-Terpene".
 4. **metabolic** : contains statistical analysis performnace of annotators for the column "Metabolic".



  Each of the above folder contains 5 files:

   1. **mapping_info.csv** : Gives information about columns name and there respective csv file name.
   2. **all_annotators.csv** : Contains labels from all annotators for a concerned column name.
   3. **cohen_kappa.csv** : A table providing cohen kappa score (inter-annotator agreement score) among the annotators.
   4. **correlation_coef.csv** : A correlation table providing pearson correlation coefficient score among the annotators.
   5. **confusion_matrix.csv** : A table providing information reagrading confusion matrix among the annotators.

 
