(pTableNameString as text, pTableSchemaString as text) => 
let 
    // Get Primary Key Columns 
    Source = tblColumnMap, 
    SelectedEntity = Table.SelectRows(Source, each [TableSchema] = pTableSchemaString and [TableName] = pTableNameString and [IsPrimaryKeyColumn] = 1), 
    PK = SelectedEntity[TargetColumnName]
in 
    PK 