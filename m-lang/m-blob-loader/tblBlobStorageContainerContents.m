let 
    // Blob Storage Container 
    // Sole data source connection to Azure Blob Storage 
    Source = AzureStorage.Blobs("https://{my-blob-storage}.blob.core.windows.net/"), 
    BlobContainer = Source{[Name="{my-container-name}"]}[Data] 
in 
    BlobContainer 