$html = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\corporate.html", [System.Text.Encoding]::UTF8)

$html = $html.Replace('트렌드 & 퍼스널 브랜딩', '퍼스널 브랜딩 & 비즈니스 코칭')
$html = $html.Replace('패션 테라피 & 팀빌딩', '조직 활성화 & 패션테라피')

[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\corporate.html", $html, [System.Text.Encoding]::UTF8)
