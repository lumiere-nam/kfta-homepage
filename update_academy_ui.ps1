$html = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\academy.html", [System.Text.Encoding]::UTF8)

# Replace the first image in One Day Class (나의 컬러 팔레트 맵)
$pattern1 = '(?s)(<div class="bg-white rounded-2xl overflow-hidden shadow-lg flex flex-col hover:-translate-y-2 transition-transform duration-300">\s*)<img src="assets/class_color_palette.jpg"( class="w-full h-48 object-cover" alt="나의 컬러 팔레트 맵">)'
$replacement1 = '${1}<img src="assets/class_material_palette.jpg"${2}'
$html = [regex]::Replace($html, $pattern1, $replacement1)

# Replace all "수강신청하기" to "신청하기"
$html = $html.Replace(">수강신청하기<", ">신청하기<")

[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\academy.html", $html, [System.Text.Encoding]::UTF8)
