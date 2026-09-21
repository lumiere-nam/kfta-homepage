$html = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\shop.html", [System.Text.Encoding]::UTF8)

# Delete '다시, 옷 입는 시간' and '패션 테라피 안내서'
# The block is a <div> with class "flex flex-col text-center items-center group"
$html = [regex]::Replace($html, '(?s)<div class="flex flex-col text-center items-center group">\s*<img[^>]*alt="다시, 옷 입는 시간"[^>]*>.*?</div>', '')

# For the 5 items: '패션 감정 다이어리', '바디 실루엣 카드', '소재 팔레트', '패션이미지 카드', '네크라인 진단천' (and similar names)
# We will match their '구매하기' / '더보기' button and replace it with a disabled '준비중' button.
# Let's just find the exact block for each item and replace the button.
# Note: In shop.html, the buttons are like:
# <a href="shop_emotion_diary.html" class="block w-full text-center bg-kftaRed hover:bg-red-900 text-white font-bold py-2 rounded transition-colors text-sm">자세히 보기</a>
# or <a href="checkout.html?item=..." class="...">구매하기</a>

# We can replace the <a> tags inside the Therapy Tools & Kits section for specific titles.
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

$pattern = '(?s)<div class="bg-white rounded-xl border border-gray-200 overflow-hidden flex flex-col group hover:shadow-xl transition-all duration-300 hover:-translate-y-1">.*?</div>\s*</div>'

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
        # Replace the <a> tag with a span for "준비중"
        $block = [regex]::Replace($block, '<a href="[^"]+" class="block w-full text-center bg-[a-zA-Z0-9-]+ hover:bg-[a-zA-Z0-9-]+ text-white font-bold py-2 rounded transition-colors text-sm">.*?</a>', '<span class="block w-full text-center bg-gray-400 text-white font-bold py-2 rounded text-sm cursor-not-allowed">준비중</span>')
    }
    return $block
}

$html = [regex]::Replace($html, $pattern, $evaluator)

[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\shop.html", $html, [System.Text.Encoding]::UTF8)
