$html = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\academy.html", [System.Text.Encoding]::UTF8)
$html = $html.Replace('<img src="assets/class_material_palette.jpg" class="w-full h-48 object-cover" alt="나의 컬러 팔레트 맵">', '<img src="assets/class_color_palette_new.jpg" class="w-full h-48 object-cover" alt="나의 컬러 팔레트 맵">')
[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\academy.html", $html, [System.Text.Encoding]::UTF8)
