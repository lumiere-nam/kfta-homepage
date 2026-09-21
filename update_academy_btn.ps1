$html = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\academy.html", [System.Text.Encoding]::UTF8)

# Replace 신청하기 with 상세 커리큘럼 보기 for Weekly Talks
$pattern = '(?s)Weekly Talks.*?</div>\s*</div>\s*</div>'
$match = [regex]::Match($html, $pattern).Value

$newMatch = $match -replace '신청하기</a>', '상세 커리큘럼 보기</a>'
$html = $html.Replace($match, $newMatch)

[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\academy.html", $html, [System.Text.Encoding]::UTF8)
