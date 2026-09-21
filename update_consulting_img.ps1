$c = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\consulting.html", [System.Text.Encoding]::UTF8)
$c = $c.Replace('assets/consulting_3.png', 'assets/consulting_3_new.png')
[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\consulting.html", $c, [System.Text.Encoding]::UTF8)

$c3 = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\consulting_3.html", [System.Text.Encoding]::UTF8)
$c3 = $c3.Replace('assets/consulting_3.png', 'assets/consulting_3_new.png')
[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\consulting_3.html", $c3, [System.Text.Encoding]::UTF8)
