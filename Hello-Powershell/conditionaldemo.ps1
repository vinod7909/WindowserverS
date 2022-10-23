$servers = @('google.com', 'facebook.com', 'LinkedIn.com', 'Apple.com', 'hgsgxk.com')


$servers | foreach-object -Process {($servername in $servers)} {
    $servername = $_
    $isServerup = Test-Connection -ComputerName $servername -Quiet -Count 1
    
    if ($isServerup -eq $true) {
        Write-Output "$servername is up and running"
    }
    else {
        Write-Output "$servername is down"
    }
}