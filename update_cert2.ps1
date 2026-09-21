$html = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\cert_level2.html", [System.Text.Encoding]::UTF8)
$html = $html.Replace("인식과 실제를 정식으로 비교 진단하다", "왜곡된 신체 이미지(Body Image) 바로잡기")
[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\cert_level2.html", $html, [System.Text.Encoding]::UTF8)
