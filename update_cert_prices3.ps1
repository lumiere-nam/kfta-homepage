$enc = [System.Text.Encoding]::UTF8
$file = "c:\lumi\kfta\kfta-homepage\certification.html"
$html = [System.IO.File]::ReadAllText($file, $enc)

# Since Level 2 is 2,000,000 and Level 1 is 1,500,000, 
# replacing 2,000,000 to 2,300,000 FIRST is safe.
$html = $html.Replace('비용: 2,000,000원', '비용: 2,300,000원')
$html = $html.Replace('비용: 1,500,000원', '비용: 2,000,000원')

[System.IO.File]::WriteAllText($file, $html, $enc)
