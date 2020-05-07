$apiVersion = "2016-03-31"
$resourceGroupName = "shawngbk"
$accountName = "tableapi"
$tableName = "test"
$tableThroughputResourceName = $accountName + "/table/" + $tableName + "/throughput"
$tableThroughputResourceType = "Microsoft.DocumentDb/databaseAccounts/apis/tables/settings"
$throughput = 500
$tableProperties = @{
    "resource"=@{"throughput"=$throughput}
} 
$PSDefaultParameterValues["Disabled"]=$true

Set-AzResource `
    -ResourceType $tableThroughputResourceType -ApiVersion $apiVersion `
    -ResourceGroupName $resourceGroupName -Name $tableThroughputResourceName `
    -Properties $tableProperties `
    -Force