$a = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\academy.html", [System.Text.Encoding]::UTF8)
$a = $a.Replace("아로마 감정 테라피", "마인드풀 아로마 블렌딩")
[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\academy.html", $a, [System.Text.Encoding]::UTF8)

$b = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\academy_oneday_aroma.html", [System.Text.Encoding]::UTF8)
$b = $b.Replace("아로마 감정 테라피", "마인드풀 아로마 블렌딩")
[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\academy_oneday_aroma.html", $b, [System.Text.Encoding]::UTF8)
