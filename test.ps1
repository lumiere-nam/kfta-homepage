$indexContent = Get-Content index.html -Raw -Encoding UTF8
$indexContent -match '(?s)(<header.*?</header>)' > $null
$standardHeader = $Matches[1] -replace 'class="h-8 md:h-10"', 'class="h-10 w-auto"'

$c = Get-Content academy_weekly.html -Raw -Encoding UTF8
$newC = $c -replace '(?s)<header.*?</header>', $standardHeader
Write-Host ($c -eq $newC)
