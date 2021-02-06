$name = "mars"
$location = "northcentralus"

# $today = Get-Date -Format "yyyyMMddhhmmss"
# $deploymentName = ($resourceGroupName + "-deployment-" + $today).ToLower()

New-AzResourceGroup `
    -Name $name `
    -Location $location