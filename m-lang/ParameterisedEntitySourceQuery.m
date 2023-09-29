let 
  // Parameterised Entity Source Query 
  Source = Sql.Database(pServerConnectionString, pDatabaseConnectionString), 
  Navigation = Source{[Schema = "my-schema", Item = "my-table"]}, 
  Extract = Navigation 
in 
  Extract 
