$c = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\academy.html", [System.Text.Encoding]::UTF8)

# 1. academy.html updates
$c = [regex]::Replace($c, '(?s)(<h4 class="font-bold text-lg text-kftaGreen mb-3">나만의 시그니처 무드향</h4>.*?<div class="flex justify-between items-center mb-4 text-sm font-bold text-gray-700 border-t border-gray-100 pt-3">\s*)<span>가격: 400,000원</span>', '${1}<span>가격: 100,000원 (단, 2인 이상 신청가능)</span>')

$c = [regex]::Replace($c, '(?s)(<h4 class="font-bold text-lg text-kftaGreen mb-3">4050 뷰티큐레이션</h4>.*?<div class="flex justify-between items-center mb-4 text-sm font-bold text-gray-700 border-t border-gray-100 pt-3">\s*)<span>가격: 400,000원</span>', '${1}<span>가격: 200,000원</span>')

$c = $c.Replace('<span>가격: 50,000원</span>', '<span></span>')

[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\academy.html", $c, [System.Text.Encoding]::UTF8)

# 2. academy_oneday.html
$c2 = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\academy_oneday.html", [System.Text.Encoding]::UTF8)
$c2 = $c2.Replace('후각적 테라피 (400,000원 / 120분)', '후각적 테라피 (100,000원 / 120분 / 단, 2인 이상 신청가능)')
$c2 = $c2.Replace('나이듦의 긍정 (400,000원 / 120분)', '나이듦의 긍정 (200,000원 / 120분)')
[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\academy_oneday.html", $c2, [System.Text.Encoding]::UTF8)
