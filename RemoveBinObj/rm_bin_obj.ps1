# The PowerShell script used in VS project directory removes all
#  solutions subdirectories bin and obj.
# It is meant to be used after closing the VS solution and before 
#  archiving and sending the homework in the Telerik Akademy students
#  system.
#
# initialize the items variable with the contents of a directory
$items = Get-ChildItem -Path ".\"

# enumerate the items array
foreach ($item in $items)
{
    # if the item is a directory, then process it.
    if ($item.Attributes -eq "Directory")
    {
        #Write-Output $item.Name
        $dirname=$item.Name
        Remove-Item $dirname\obj -Force -Recurse
        Remove-Item $dirname\bin -Force -Recurse
    }
}
