m power query 

# Blob Loader 
============= 

Loads and formats files in Azure blob storage containers using a single data source connection (this is hard-coded in the pbi file) for a given table name. Most systems will have a date dimension, for example, that can be loaded with:  

```

    = getEntity("dim_dates") 

```

Formats ingested files as set out in a column mapping table derived INFORMATION_SCHEMA.COLUMNS with some additional fields:  

| Name | Description | 
| ---- | ----------- | 
| SourceColumnName | Name of the column in the source system | 
| TargetColumnName | Name of the column in the semantic model | 
| SourceDataType | Name of the column data type in the source system | 
| TargetDataType | Name of the column data type in the semantic model | 
| IsPrimaryKeyColumn | Flags if the column is the primary key in the source system | 


