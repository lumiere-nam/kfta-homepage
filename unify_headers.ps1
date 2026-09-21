$indexContent = Get-Content index.html -Raw -Encoding UTF8
if ($indexContent -match '(?s)(<header.*?</header>)') {
    $standardHeader = $Matches[1]
    $standardHeader = $standardHeader -replace 'class="h-8 md:h-10"', 'class="h-10 w-auto"'

    Get-ChildItem -Filter *.html | ForEach-Object {
        $filename = $_.Name
        if ($filename -match '^shop_' -and $filename -ne 'shop.html') {
            # Skip shop details
            return
        }
        $content = Get-Content $_.FullName -Raw -Encoding UTF8
        if ($content -match '(?s)<header.*?</header>') {
            $newContent = $content -replace '(?s)<header.*?</header>', $standardHeader
            if ($content -ne $newContent) {
                Set-Content $_.FullName $newContent -Encoding UTF8
                Write-Host "Updated $filename"
            }
        }
    }
}
