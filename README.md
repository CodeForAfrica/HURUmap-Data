# HURUmap-Data

This repo contains HURUmap data that is used across multiple applications using graphql powered by postgraphile.

### Data

- Data is added by placing the data in the `csv/data` folder. 
- The csv name has to be in slug form where the name will be the table name e.g. `population_by_gender.csv`

Note: If the table names are similar and separated by country code e.g. `_za.csv` and `_ke.csv` they will be combined by the script

### Geos

- Add and new geos of amend geos in this csv.
- The file `geos.csv` in the `csv` folder contains supported geos by HURUmap-Data.

### Generating SQL

- Run the command `yarn sequalize` or `node index.js` and all the sql files will appear in the `sql` folder
