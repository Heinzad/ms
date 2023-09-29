// pDatabaseConnectionString 
// Database Connection Parameter 
// script name: pDatabaseConnectionString.m 
// script author: Adam Heinz 
// script dated: Thursday 29 September 2023 
// instructions: 
// step one - create a new blank query, that in advanced mode contains only "dev-databasename" 
// step two - rename the query to pDatabaseConnectionString 
// step three - click on Convert to parameter 
// step four - in the Advanced Editor, overwrite with this script 
"dev-databasename" meta [
    IsParameterQuery = true, IsParameterQueryRequired = true, Type = type text, 
    List = {"dev-databasename", "test-databasename", "prod-databasename"}, 
    DefaultValue = "dev-databasename" 
]
