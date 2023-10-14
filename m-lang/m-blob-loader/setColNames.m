(pTbl as table, pColMap as list) => 
let 
    Source = Table.RenameColumns(pTbl, pColMap, MissingField.Ignore) 
in 
    Source 