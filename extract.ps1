$html = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\cert_level2.html", [System.Text.Encoding]::UTF8)
$matches = [regex]::Matches($html, '<p class="text-lg text-gray-600 mb-6">(.*?)</p>')
$out = ""
foreach ($m in $matches) {
    $out += $m.Groups[1].Value + "`n"
}
[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\extract_out.txt", $out, [System.Text.Encoding]::UTF8)
