$enc = [System.Text.Encoding]::UTF8

# 1. Update certification.html
$file = "c:\lumi\kfta\kfta-homepage\certification.html"
$html = [System.IO.File]::ReadAllText($file, $enc)
$html = $html.Replace("총 12시간)</p><p class=`"text-sm font-bold text-gray-800 mt-1`">비용: 1,500,000원</p>", "총 12시간)</p><p class=`"text-sm font-bold text-gray-800 mt-1`">비용: 2,000,000원</p>")
$html = $html.Replace("총 20시간)</p><p class=`"text-sm font-bold text-gray-800 mt-1`">비용: 2,000,000원</p>", "총 20시간)</p><p class=`"text-sm font-bold text-gray-800 mt-1`">비용: 2,300,000원</p>")
[System.IO.File]::WriteAllText($file, $html, $enc)
