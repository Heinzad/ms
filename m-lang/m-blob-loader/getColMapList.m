(pTableNameString as text, pTableSchemaString as text) => 
let 
    Source = tblColumnMap, 
    AddedDifferenceFlag = Table.AddColumn(Source, "ColumnNameIsDifferent", each if [SourceColumnName] = [TargetColumnName] then 0 else 1), 
    FilterOnDifference = Table.SelectRows(AddedDifferenceFlag, each ([ColumnNameIsDifferent] = 1)), 
    FilterOnTable = Table.SelectRows(FilterOnDifference, each [TableSchema] = pTableSchemaString and [TableName] = pTableNameString), 
    AddedColumnMapping = Table.AddColumn(FilterOnTable, "ColMap", each {[TargetColumnName], [SourceColumnName]}) 
in 
    AddedColumnMapping 