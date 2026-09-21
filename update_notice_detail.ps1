$html = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\notice_detail.html", [System.Text.Encoding]::UTF8)

$html = $html.Replace('한국패션테라피협회 2026년 하반기 자격과정 모집 안내', '한국패션테라피협회 공식 오픈 안내')
$html = $html.Replace('"2026.08.31"', '"2026.09.30"')

$html = $html.Replace('K-POP 패션테라피 위클리 토크 1화 다시보기 오픈', '위클리 토크 오픈 준비중')
$html = $html.Replace('"2026.08.01"', '"2026.09.30"')

$pattern = '(?s)else if\(id === "2"\) \{.*?\} '
$html = [regex]::Replace($html, $pattern, '')

[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\notice_detail.html", $html, [System.Text.Encoding]::UTF8)
