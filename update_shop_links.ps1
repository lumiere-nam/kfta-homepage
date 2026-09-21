$html = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\shop.html", [System.Text.Encoding]::UTF8)
$html = [regex]::Replace($html, 'href="[^"]+"( class="inline-block w-3/4 mx-auto bg-gray-400 cursor-not-allowed)', 'href="#" onclick="return false;"$1')
[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\shop.html", $html, [System.Text.Encoding]::UTF8)
