$name = "mars-resource-group-resources"
$version = "0.1"
$resourceGroupName = "mercury-template-specs"
$location = "northcentralus"
$templateFile = "../template/resource-group/mars/main.json"

New-AzTemplateSpec `
    -Name $name `
    -Version $version `
    -ResourceGroupName $resourceGroupName `
    -Location $location `
    -TemplateFile $templateFile `
    -Force