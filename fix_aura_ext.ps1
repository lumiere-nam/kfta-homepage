$c = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\consulting_1.html", [System.Text.Encoding]::UTF8)
$c = $c.Replace('aura_scanner_black_purple.png', 'aura_scanner_black_purple.jpg')
[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\consulting_1.html", $c, [System.Text.Encoding]::UTF8)
