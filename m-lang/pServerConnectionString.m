// pServerConnectionString 
// Server Connection Parameter 
// script name: pServerConnectionString.m 
// script author: Adam Heinz 
// script dated: Thursday 29 September 2023 
// instructions: 
// step one - create a new blank query, that in advanced mode contains only "dev-servername" 
// step two - rename the query to pServerConnectionString 
// step three - click on Convert to parameter 
// step four - in the Advanced Editor, overwrite with this script 
"dev-servername" meta [
    IsParameterQuery = true, IsParameterQueryRequired = true, Type = type text, 
    List = {"dev-servername", "test-servername", "prod-servername"}, 
    DefaultValue = "dev-servername" 
]