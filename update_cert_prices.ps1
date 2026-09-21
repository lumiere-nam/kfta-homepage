$c = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\certification.html", [System.Text.Encoding]::UTF8)

# 1. certification.html updates (WHY KFTA FASHION THERAPY? line spacing)
$c = $c.Replace('leading-tight mb-8', 'leading-loose mb-8')

# 2. certification.html (Prices in Overview)
$c = $c.Replace('교육비: 870,000원', '교육비: 1,500,000원')
$c = $c.Replace('교육비: 1,200,000원', '교육비: 2,000,000원')
$c = $c.Replace('교육비: 1,500,000원', '교육비: 2,500,000원')
$c = $c.Replace('교육비: 1,850,000원', '교육비: 2,700,000원')
$c = $c.Replace('교육비: 2,000,000원', '교육비: 3,000,000원')
[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\certification.html", $c, [System.Text.Encoding]::UTF8)

# 3. cert_level1.html
$c1 = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\cert_level1.html", [System.Text.Encoding]::UTF8)
$c1 = $c1.Replace('870,000원', '1,500,000원')
[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\cert_level1.html", $c1, [System.Text.Encoding]::UTF8)

# 4. cert_level2.html
$c2 = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\cert_level2.html", [System.Text.Encoding]::UTF8)
$c2 = $c2.Replace('1,600,000원', '2,000,000원')
[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\cert_level2.html", $c2, [System.Text.Encoding]::UTF8)

# 5. cert_level3.html
$c3 = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\cert_level3.html", [System.Text.Encoding]::UTF8)
$c3 = $c3.Replace('2,800,000원', '2,500,000원')
[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\cert_level3.html", $c3, [System.Text.Encoding]::UTF8)

# 6. cert_trainer.html
$c4 = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\cert_trainer.html", [System.Text.Encoding]::UTF8)
$c4 = $c4.Replace('별도 문의', '2,700,000원')
[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\cert_trainer.html", $c4, [System.Text.Encoding]::UTF8)

# 7. cert_master.html
$c5 = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\cert_master.html", [System.Text.Encoding]::UTF8)
$c5 = $c5.Replace('별도 문의', '3,000,000원')
[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\cert_master.html", $c5, [System.Text.Encoding]::UTF8)

