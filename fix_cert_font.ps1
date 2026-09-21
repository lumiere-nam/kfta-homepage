$html = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\certification.html", [System.Text.Encoding]::UTF8)

# Replace the bold class with the regular text class, and reduce margin-bottom so it connects with the next paragraph
$html = $html.Replace('<p class="font-bold text-lg mb-6">"나는 누구인가"', '<p class="text-gray-600 mb-2">"나는 누구인가"')

[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\certification.html", $html, [System.Text.Encoding]::UTF8)
