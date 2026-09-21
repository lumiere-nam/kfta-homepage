$html = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\certification.html", [System.Text.Encoding]::UTF8)

$old = "레벨1의 감각적 체험을 정식 진단으로 발전시키는 8주 실무 과정입니다. 협회 고유 '7Layers 시스템'으로 정밀 진단을 습득합니다."
$new = "레벨1의 감각적 체험을 정식 진단으로 발전시키는 8주 실무 과정입니다. 협회 고유의 정밀 진단 기법을 습득합니다."

$html = $html.Replace($old, $new)

[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\certification.html", $html, [System.Text.Encoding]::UTF8)
