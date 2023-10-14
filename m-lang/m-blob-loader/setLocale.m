(vEntityIdentifier as table, vTableNameString as text) => 
let 
    Source = vEntityIdentifier, 
    datetimeCols = getColTypes(vTableNameString, pTableSchemaString, "datetime"), 
    localizeDatetimeCols = if List.Count(datetimeCols) >=1 
        then Table.TransformColumnTypes(Source, List.Transform(datetimeCols, each {_, type datetime}), pLocaleCodeString) 
        else Source, 
    dateCols = getColTypes(vTableNameString, pTableSchemaString, "date"), 
    localizeDateCols = if List.Count(dateCols) >=1 
        then Table.TransformColumnTypes(localizeDatetimeCols, List.Transform(datetimeCols, each {_, type date}), pLocaleCodeString) 
        else localizeDatetimeCols, 
    Ingest = localizeDateCols 
in 
    Ingest 