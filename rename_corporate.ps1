$html = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\corporate.html", [System.Text.Encoding]::UTF8)

$html = $html.Replace('조직 활성화 & 패션테라피', '웰니스 힐링 프로그램')
$html = $html.Replace('퍼스널 브랜딩 & 비즈니스 코칭', '성공하는 비즈니스를 위한 인재 스타일링')

[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\corporate.html", $html, [System.Text.Encoding]::UTF8)
