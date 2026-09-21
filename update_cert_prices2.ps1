$c = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\certification.html", [System.Text.Encoding]::UTF8)

# 1. certification.html updates (WHY KFTA FASHION THERAPY? line spacing)
$c = $c.Replace('leading-tight mb-8', 'leading-loose mb-8')

# 2. certification.html (Prices in Overview)
$c = $c.Replace('교육비: 870,000원', '교육비: @NEW_1@')
$c = $c.Replace('교육비: 1,200,000원', '교육비: @NEW_2@')
$c = $c.Replace('교육비: 1,500,000원', '교육비: @NEW_3@')
$c = $c.Replace('교육비: 1,850,000원', '교육비: @NEW_4@')
$c = $c.Replace('교육비: 2,000,000원', '교육비: @NEW_5@')

$c = $c.Replace('@NEW_1@', '1,500,000원')
$c = $c.Replace('@NEW_2@', '2,000,000원')
$c = $c.Replace('@NEW_3@', '2,500,000원')
$c = $c.Replace('@NEW_4@', '2,700,000원')
$c = $c.Replace('@NEW_5@', '3,000,000원')

[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\certification.html", $c, [System.Text.Encoding]::UTF8)

