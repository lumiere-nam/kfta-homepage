$html = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\community.html", [System.Text.Encoding]::UTF8)
$matches = [regex]::Matches($html, '<a href="notice_detail.*?</a>', [System.Text.RegularExpressions.RegexOptions]::Singleline)
$out = ""
foreach ($m in $matches) {
    $out += $m.Value + "`n================`n"
}
[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\extract_notices.txt", $out, [System.Text.Encoding]::UTF8)
