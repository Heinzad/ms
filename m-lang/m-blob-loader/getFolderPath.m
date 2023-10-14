(pFolderNameString as text)=> 
let 
    Source = tblBlobStorageContainerContents, 
    Filtered = Table.SelectRows(Source, each Text.StartsWith([Name], pFolderNameString)),
    Ingest = Filtered{0}[Folder Path]
in 
    Ingest 