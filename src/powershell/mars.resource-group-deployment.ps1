$templateSpecResourceGroupName = "mercury-template-specs"
$name = "mars-resource-group-resources"
$version = "0.1"


$deploymentResourceGroupName = "mars"
$id = (Get-AzTemplateSpec -ResourceGroupName $templateSpecResourceGroupName -Name $name -Version $version).Versions.Id

$utc = Get-Date -Format "yyyyMMdd.HHmm"

$deploymentName = "$deploymentResourceGroupName-$utc"


New-AzResourceGroupDeployment `
  -Name $deploymentName `
  -TemplateSpecId $id `
  -ResourceGroupName $deploymentResourceGroupName