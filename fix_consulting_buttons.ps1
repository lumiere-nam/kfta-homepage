$html = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\consulting.html", [System.Text.Encoding]::UTF8)

# Replace "예약하기" with "상세보기" for the buttons
$html = $html.Replace('>예약하기</a>', '>상세보기</a>')
$html = [regex]::Replace($html, '>\s*예약하기\s*</a>', '>상세보기</a>')

[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\consulting.html", $html, [System.Text.Encoding]::UTF8)
