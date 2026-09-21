$html = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\academy.html", [System.Text.Encoding]::UTF8)

# K-Pop 1: 페르소나 확장
$pattern1 = '(?s)<img src="[^"]+" class="w-full h-full object-cover" alt="Weekly Talk Image">(?=</div>\s*<div class="p-6 flex-grow flex flex-col">\s*<h4[^>]+>\[1화\] 페르소나 확장)'
$html = [regex]::Replace($html, $pattern1, '<img src="https://images.unsplash.com/photo-1493225457124-a1a2b534ab38?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80" class="w-full h-full object-cover" alt="Fashion in K-POP Image">')

# K-Pop 2: 퍼스널 브랜딩
$pattern2 = '(?s)<img src="[^"]+" class="w-full h-full object-cover" alt="Weekly Talk Image">(?=</div>\s*<div class="p-6 flex-grow flex flex-col">\s*<h4[^>]+>\[2화\] 퍼스널 브랜딩)'
$html = [regex]::Replace($html, $pattern2, '<img src="https://images.unsplash.com/photo-1515886657613-9f3515b0c78f?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80" class="w-full h-full object-cover" alt="Fashion in K-POP Image">')

# K-Pop 3: 젠더 플루이드
$pattern3 = '(?s)<img src="[^"]+" class="w-full h-full object-cover" alt="Weekly Talk Image">(?=</div>\s*<div class="p-6 flex-grow flex flex-col">\s*<h4[^>]+>\[3화\] 젠더 플루이드)'
$html = [regex]::Replace($html, $pattern3, '<img src="https://images.unsplash.com/photo-1483985988355-763728e1935b?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80" class="w-full h-full object-cover" alt="Fashion in K-POP Image">')

# K-Pop 4: 컬러 커뮤니케이션
$pattern4 = '(?s)<img src="[^"]+" class="w-full h-full object-cover" alt="Weekly Talk Image">(?=</div>\s*<div class="p-6 flex-grow flex flex-col">\s*<h4[^>]+>\[4화\] 컬러 커뮤니케이션)'
$html = [regex]::Replace($html, $pattern4, '<img src="https://images.unsplash.com/photo-1550684848-fac1c5b4e853?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80" class="w-full h-full object-cover" alt="Fashion in K-POP Image">')

[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\academy.html", $html, [System.Text.Encoding]::UTF8)
