# HURUmap-Data

This repo contains HURUmap data that is used across multiple applications using graphql powered by postgraphile.

## Data

- Data is added by placing the data in the `csv/data` folder. 
- The csv name has to be in slug form where the name will be the table name e.g. `population_by_gender_za.csv`
    - The slug should end with the country code
    - The slug should be all lower case
    - The slug name should not end with a dash
    - The slug name should not start with a number
    - The slug name can **only** contain numbers, letters and dashes
- Data csv format:
    - For geo_code, geo_level and name, use the values in `geo_level_map.csv` or `geos.csv`.
    - Provide `country_code` column if the file/slug name has no country code ending e.g. `_za.csv`.
    - Converting to sql matches the `geo_level` and `geo_code` first with name as fallback matching `geos.csv`.
    - Eg:
```
geo_level,geo_code,country_code,name,variable1,variable2,variable3,....
subcounty,1000,KE,variable1,Otwal,variable2,variable3,....
...
```
![CSV EXAMPLE](/csv-example.png)

Note: If the table names are similar and separated by country code e.g. `_za.csv` and `_ke.csv` they will be combined by the script

### Geos

- Add and new geos of amend geos in this csv.
- The file `geos.csv` in the `csv` folder contains supported geos by HURUmap-Data.

### Generating SQL

- Run the command `yarn sequalize` or `node index.js` and all the sql files will appear in the `sql` folder.
- The `yarn sequalize` command will skip recently sequalized files, to reporcess the files run `yarn sequalize --reprocess`.

## Graphql

The data can be accessed using postgraphile graphql.

### Development

Postgraphile cli use can be found here: https://www.graphile.org/postgraphile/usage-cli/
