$html = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\academy.html", [System.Text.Encoding]::UTF8)

$pattern = '(?s)(<div class="bg-white rounded-2xl overflow-hidden shadow-lg flex flex-col hover:-translate-y-2 transition-transform duration-300">\s*)<img src="https://images.unsplash.com/photo-1573496359142-b8d87734a5a2\?ixlib=rb-4\.0\.3&auto=format&fit=crop&w=600&q=80"( class="w-full h-48 object-cover" alt="나의 컬러 팔레트 맵">)'
$replacement = '${1}<img src="assets/class_color_palette.jpg"${2}'

$html = [regex]::Replace($html, $pattern, $replacement)

[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\academy.html", $html, [System.Text.Encoding]::UTF8)
