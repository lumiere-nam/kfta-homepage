$html = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\shop.html", [System.Text.Encoding]::UTF8)

$targets = @(
    '감정 다이어리',
    '바디 실루엣',
    '바디실루엣',
    '소재 팔레트',
    '소재팔레트',
    '패션이미지',
    '패션 이미지',
    '네크라인'
)

$pattern = '(?s)<div class="flex flex-col text-center items-center group">.*?</div>'

$evaluator = [System.Text.RegularExpressions.MatchEvaluator] {
    param($match)
    $block = $match.Value
    $found = $false
    foreach ($target in $targets) {
        if ($block.Contains($target)) {
            $found = $true
            break
        }
    }
    
    if ($found) {
        $block = [regex]::Replace($block, '<a href="[^"]+" class="inline-block w-3/4 mx-auto bg-kftaRed hover:bg-red-900 text-white font-bold py-2 rounded-full transition-colors text-sm shadow-sm">.*?</a>', '<span class="inline-block w-3/4 mx-auto bg-gray-400 text-white font-bold py-2 rounded-full text-sm shadow-sm cursor-not-allowed">준비중</span>')
    }
    return $block
}

$html = [regex]::Replace($html, $pattern, $evaluator)

[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\shop.html", $html, [System.Text.Encoding]::UTF8)
