$enc = [System.Text.Encoding]::UTF8

# 1. Update certification.html
$file = "c:\lumi\kfta\kfta-homepage\certification.html"
$html = [System.IO.File]::ReadAllText($file, $enc)
$html = [regex]::Replace($html, '(?s)(<h3 class="text-xl font-bold text-gray-900 mb-2">Level 1 Foundation.*?<p class="text-sm font-bold text-gray-800 mt-1">.+?)1,500,000원', '${1}2,000,000원')
$html = [regex]::Replace($html, '(?s)(<h3 class="text-xl font-bold text-gray-900 mb-2">Level 2 Practitioner.*?<p class="text-sm font-bold text-gray-800 mt-1">.+?)2,000,000원', '${1}2,300,000원')
[System.IO.File]::WriteAllText($file, $html, $enc)

# 2. Update cert_level1.html
$file = "c:\lumi\kfta\kfta-homepage\cert_level1.html"
$html = [System.IO.File]::ReadAllText($file, $enc)
$html = $html.Replace("1,500,000원", "2,000,000원")
[System.IO.File]::WriteAllText($file, $html, $enc)

# 3. Update cert_level2.html
$file = "c:\lumi\kfta\kfta-homepage\cert_level2.html"
$html = [System.IO.File]::ReadAllText($file, $enc)
$html = $html.Replace("2,000,000원", "2,300,000원")
[System.IO.File]::WriteAllText($file, $html, $enc)

# 4. Update checkout.html JavaScript logic
$file = "c:\lumi\kfta\kfta-homepage\checkout.html"
$html = [System.IO.File]::ReadAllText($file, $enc)
$html = $html.Replace("if (itemName === 'Level 1 Foundation') basePrice = 1500000;", "if (itemName === 'Level 1 Foundation') basePrice = 2000000;")
$html = $html.Replace("else if (itemName === 'Level 2 Practitioner') basePrice = 2000000;", "else if (itemName === 'Level 2 Practitioner') basePrice = 2300000;")
[System.IO.File]::WriteAllText($file, $html, $enc)
