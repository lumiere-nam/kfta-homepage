$html = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\certification.html", [System.Text.Encoding]::UTF8)

$html = $html.Replace('<span class="text-kftaRed font-bold text-sm tracking-widest mb-4 block">WHY KFTA FASHION THERAPY?</span>', '<span class="text-kftaRed font-bold text-sm tracking-widest mb-10 block">WHY KFTA FASHION THERAPY?</span>')

[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\certification.html", $html, [System.Text.Encoding]::UTF8)
