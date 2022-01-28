#### import pandas and other required packages
import pandas as pd
import numpy as np
import os




#### Function to generate the dataframe from the classification csv's provided by annotators 
def create_df(path, class_label):
  '''
     generates Data Frame from a batch of CSV files from Annotators.
        :param path: directory containing annotator csv files
        :param class_label: label for specific column [eg. Metabolic]


        :return: tuple of filled dataframe, mapping of columns to csv files
  ''' 
  list_files = os.listdir(path)            # storing the files names from all the annotators available in directory provided by path
  data= pd.DataFrame()                     # empty dataframe to store the accumulated data
  map_list=[]                              # empty list to store mappings of dataframe column name to original csv names
  
  ## Iterating through all the csv provided by annotators and saving ut into the dataframe "data".
  for i, name in enumerate(list_files):
    sub_list=[]
    df = pd.read_csv(path +name)                               # reading annotator file
    sub_list.append('annotator_'+ str(i))                      # appending dataframe column name(like:Annotator_1)  to the empty sub_list 
    sub_list.append(name) 
    if i ==0:
      data['pmcid']= df['PMCID'].to_numpy()
      data['fig_no']= df['Fig No.'].to_numpy()                                     # appending origibnal file name  to the empty sub_list 
      data['annotator_'+ str(i)] = df[class_label].to_numpy()
    else:  
      data['annotator_'+ str(i)] = df[class_label].to_numpy()    # adding columns to data each having labels from respective annotator on the converned class label(ex: Terpene)
    map_list.append(sub_list)                                  # appending the sub_kist to map_list
  

  ## saving the map_list
  map_df = pd.DataFrame(map_list)
  save_path = os.path.dirname(os.path.dirname(path)) +'/'+class_label.lower()+'/'           # path where mapping info is saved under the parent directory with folder name "mapping_info"
  if not os.path.exists(save_path):                                              # checking id already a folder exists with path - map_save_path
    os.makedirs(save_path)
  map_df.columns = ['column_name','file_name']  
  map_df.to_csv(save_path +'mapping_info_'+ class_label.lower()+'.csv')   #  saving the mapping list into the direct path
  
  ## saving the generated data
  data.to_csv(save_path +'all_annotators_'+ class_label.lower()+'.csv')
  
  return data, map_list 
