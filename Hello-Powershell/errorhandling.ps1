$folderpath = ".\dummy"

try {
    $filesinfolder = Get-ChildItem -Path $folderpath
    $filesinfolder.foreach({
        Write-Output Get-Content $_
        <# $currentItemName is the current item #>
    })
}
catch {
    Write-Output "error occured: so stopping execution $_.Exception.Message"
    <#Do this if a terminating exception happens#>
}
finally {
    Write-Output "finished execution"
    <#Do this after the try block regardless of whether an exception occurred or not#>
}