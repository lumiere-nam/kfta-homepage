$html = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\index.html", [System.Text.Encoding]::UTF8)
$html = $html.Replace('text-lg text-gray-700 mb-10 leading-relaxed text-justify">심리적 통찰', 'text-lg text-gray-700 mb-10 leading-relaxed text-center">심리적 통찰')
[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\index.html", $html, [System.Text.Encoding]::UTF8)
