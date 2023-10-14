(pEntityIdentifier as table, pTableNameString as text) => 
let 
    // Set Primary Key Constraint 
    Source = pEntityIdentifier, 
    KeyCols = getPrimaryKeyCols(pTableNameString, pTableSchemaString), 
    NotNullable = Table.SelectRows(Source, each KeyCols <> null and KeyCols <> ""), 
    PrimaryKey = Table.Distinct(NotNullable, KeyCols), 
    // Ensure that fact tables with primary keys are not affected 
    Ingest = if List.Count(KeyCols) >= 1 then PrimaryKey else Source 
in 
    Ingest 
