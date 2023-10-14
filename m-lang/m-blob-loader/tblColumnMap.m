let 
    // Column Mapping Table 
    // Extends information_schema.columns with additional source to target mapping 
    // scoped at the column level 
    vTableNameString = "COLUMN_MAPPING", 
    Source = getFile(pFileExtensionString, pFolderNameString, vTableNameString),
    TypeCasting = Table.TransformColumnTypes(Source, {{"ordinal_position", Int64.Type}})
in 
    TypeCasting 