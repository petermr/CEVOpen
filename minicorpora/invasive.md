###Retrieving papers from EUPMC using ` getpapers `
- Query code: ` getpapers -q "(invasive plant species) AND (essential oil)" -n -x -o invasive -f invasive/log.txt `
- The command getpapers will initiate the process and -q refers to query which is to be searched. The query is entered in inverted commas as is done in "(invasive plant species) AND (essential oil)". The next element is -o which refers to output directory and the parameter that follows it in the name of the directory which is invasive in our case. Then, -x -p corresponds to xml and pdf files to be included in our search and -k 100 limits our search to 100 files omly.
- getpapers used to create corpus of medicinal activity.
