(vTableNameString as text) => 
let 
    Source = getFile(pFileExtensionString, pFolderNameString, vTableNameString), 
    Localization = setLocale(Source, vTableNameString), 
    Remapping = setColNames(Localization, getColMapList(vTableNameString, pTableSchemaString)), 
    Ingest = setPrimaryKey(Remapping, vTableNameString) 
in 
    Ingest 