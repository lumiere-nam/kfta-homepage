$html = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\community.html", [System.Text.Encoding]::UTF8)

# Replace Review Name
$html = $html.Replace('박*철', '박*아')

# Replace Notice 1
$html = $html.Replace('한국패션테라피협회 2026년 하반기 자격과정 모집 안내', '한국패션테라피협회 공식 오픈 안내')
$html = $html.Replace('>2026.08.31<', '>2026.09.30<')

# Replace Notice 3
$html = $html.Replace('K-POP 패션테라피 위클리 토크 1화 다시보기 오픈', '위클리 토크 오픈 준비중')
$html = $html.Replace('>2026.08.01<', '>2026.09.30<')

# Delete Notice 2
$pattern_notice2 = '(?s)<a href="notice_detail\.html\?id=2".*?용인시 평생학습관 패션테라피 특강 성료.*?</a>'
$html = [regex]::Replace($html, $pattern_notice2, '')

[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\community.html", $html, [System.Text.Encoding]::UTF8)
