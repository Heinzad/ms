(pTableNameString as text, pTableSchemaString as text, pDataTypeString as text) => 
let 
    // Get Column Types 
    // Returns a list of column names and their data types for a given entity 
    Source = tblColumMap, 
    SelectedEntity = Table.SelectRows(Source, each [TableSchema] = pTableSchemaString and [TableName] = pTableNameString and [TargetDataType] = pDataTypeString), 
    ColNames = SelectedEntity[TargetColumnName]
in 
    ColNames 