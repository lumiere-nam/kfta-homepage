$enc = [System.Text.Encoding]::UTF8
$file = "c:\lumi\kfta\kfta-homepage\certification.html"
$html = [System.IO.File]::ReadAllText($file, $enc)

$html = [regex]::Replace($html, '1,500,000원', '2,000,000원')
# Wait, this might replace Level 1, and now we have two 2,000,000원!
# So let's replace Level 2 first!
# But wait, since we haven't replaced Level 1 yet, we can replace the FIRST 2,000,000원 with 2,300,000원?
# Actually, let's just do a manual replacement by indices or match specific contexts.

$html = [regex]::Replace($html, '(?s)(총 20시간\).*?)2,000,000원', '${1}2,300,000원')
$html = [regex]::Replace($html, '(?s)(총 12시간\).*?)1,500,000원', '${1}2,000,000원')

[System.IO.File]::WriteAllText($file, $html, $enc)
