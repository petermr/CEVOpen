### Retrieving papers from EUPMC using `getpapers` 

- getpapers used to create corpus of medicinal activity  

- **Query code**:
``` getpapers -q "(medicinal activity) AND (essential oil)" -o activity -x -p -k 100 -f activity/log.txt```

- The command getpapers will initiate the process and -q refers to the query which is to be searched. The query is entered in inverted commas as is done in "**(medicinal activity) AND (essential oil)**". The next element is -o which refers to output directory and the parameter that follows it in the name of the directory which is **activity** in our case. Then, -x -p corresponds to xml and pdf files to be included in our search and -k 100 limits our search to 100 files only.

