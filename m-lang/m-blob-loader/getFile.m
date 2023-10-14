(pFileExtensionString as text, pFolderNameString as text, pTableNameString as text) => 
let 
    // Get File 
    // Returns a table for a given file extension, folder name, and source table name 
    vFolderPath = getFolderPath(pFolderNameString),
    vFilename = pFolderNameString & "/" & pTableNameString & pFileExtensionString, 
    Source = tblBlobStorageContainerContents, 
    Navigation = Source{[#"Folder Path"=vFolderPath,Name=vFilename]}[Content], 
    Ingest = if pFileExtensionString = ".parquet" then Parquet.Document(Navigation) 
    else if pFileExtensionString = ".csv" then Csv.Document(Navigation) 
    else Navigation 
in 
    Ingest 