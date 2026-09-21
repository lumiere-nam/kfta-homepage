$html = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\shop.html", [System.Text.Encoding]::UTF8)

$targets = @(
    '패션 감정 다이어리',
    '바디 실루엣 카드',
    '소재 팔레트',
    '패션이미지 카드',
    '패션 부정어 카드', 
    '체험키트 No.1',
    '체험키트 No.2',
    '네크라인 진단천'
)
# Wait, the user said: "감정 다이어리와 바디실루엣, 소재 팔레트, 패션이미지 카드부터 네크라인 진단천까지 모두 준비중으로 표시해줘."
# Which implies all items from "패션 감정 다이어리" to "네크라인 진단천".
# Looking at the list:
# 패션 감정 다이어리
# 바디 실루엣 카드
# 소재 팔레트
# 패션이미지 카드
# 패션 부정어 카드
# 체험키트 No.1
# 체험키트 No.2
# 네크라인 진단천

foreach ($target in $targets) {
    # We will match the title, some stuff, then the <a> tag
    $pattern = '(?s)(<h4 class="font-bold text-gray-800 text-sm mb-1">' + $target + '</h4>.*?<a href="[^"]+" class="inline-block w-3/4 mx-auto bg-)kftaRed hover:bg-red-900( text-white font-bold py-2 rounded-full transition-colors text-sm shadow-sm">)[^<]+(</a>)'
    $html = [regex]::Replace($html, $pattern, '${1}gray-400 cursor-not-allowed${2}준비중${3}')
}

[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\shop.html", $html, [System.Text.Encoding]::UTF8)
