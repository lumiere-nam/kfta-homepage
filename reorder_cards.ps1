$html = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\consulting.html", [System.Text.Encoding]::UTF8)

# Extract cards
$pattern1 = '(?s)<!-- Card 1 -->.*?</div>\s*</div>'
$pattern2 = '(?s)<!-- Card 2 -->.*?</div>\s*</div>'
$pattern3 = '(?s)<!-- Card 3 -->.*?</div>\s*</div>'
$pattern4 = '(?s)<!-- Card 4 -->.*?</div>\s*</div>'

$match1 = [regex]::Match($html, $pattern1).Value
$match2 = [regex]::Match($html, $pattern2).Value
$match3 = [regex]::Match($html, $pattern3).Value
$match4 = [regex]::Match($html, $pattern4).Value

# Rename Card 3
$match3 = $match3.Replace("패션 & 뷰티 컨설팅", "비주얼 이미지 브랜딩 컨설팅")

# Replace old cards block with rearranged cards
$fullPattern = '(?s)<!-- Card 1 -->.*<!-- Card 4 -->.*?</div>\s*</div>'
$newBlock = "$match1`n`n$match4`n`n$match3`n`n$match2"
# Note: I'm not renaming the HTML comments "<!-- Card X -->" but the order of the actual divs will be changed.
# To be clean, I will just strip the comments and add new ones.

$clean1 = $match1 -replace '<!-- Card 1 -->\s*', ''
$clean2 = $match2 -replace '<!-- Card 2 -->\s*', ''
$clean3 = $match3 -replace '<!-- Card 3 -->\s*', ''
$clean4 = $match4 -replace '<!-- Card 4 -->\s*', ''

$newBlock = "<!-- Card 1 -->`n$clean1`n`n<!-- Card 2 -->`n$clean4`n`n<!-- Card 3 -->`n$clean3`n`n<!-- Card 4 -->`n$clean2"

$html = [regex]::Replace($html, $fullPattern, $newBlock)

[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\consulting.html", $html, [System.Text.Encoding]::UTF8)
