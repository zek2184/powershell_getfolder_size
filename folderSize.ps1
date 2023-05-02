# Created by: Ezekeil Pahila
# Date: 05012023
# Descriotion: PowerShell will return folder name and size per folder.

# Get folder size 
$sourceFolder = gci .\ | Select-Object -ExpandProperty Name

# iterate eacg folder and display size
foreach ($f in $sourceFolder) { 
    $foldersize = Get-ChildItem $f -recurse | Measure-Object -property length -sum
    $foldersize = $foldersize.sum / 1GB
    Write-Host $f - $foldersize "GB"
    }