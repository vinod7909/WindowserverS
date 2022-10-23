$number = 0
do {
    Write-Output $number
    $number++
    
} while ($number -lt 10)
    <# Condition that stops the loop if it returns false #>
Write-Output "This is begining of do until"

$number = 0
do {
    Write-Output $number
    $number++
    
} until ($number -ge 20)