$html = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\academy.html", [System.Text.Encoding]::UTF8)

$pattern = '(?s)<img src="https://images.unsplash.com/photo-1544716278-ca5e3f4abd8c\?ixlib=rb-4\.0\.3&auto=format&fit=crop&w=600&q=80"( class="w-full h-48 object-cover" alt="패션 마인드 디톡스 원데이">)'
$replacement = '<img src="assets/class_mind_detox.png"${1}'

$html = [regex]::Replace($html, $pattern, $replacement)

[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\academy.html", $html, [System.Text.Encoding]::UTF8)
