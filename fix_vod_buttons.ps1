$html = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\academy.html", [System.Text.Encoding]::UTF8)

# In academy.html, the Weekly Talks section has 8 cards.
# The K-POP section has 2 cards.
# We will use Regex to target ONLY the buttons inside the 'weekly' and 'kpop' sections.

# First, extract the Weekly section and K-POP section
$weeklyStart = $html.IndexOf('<div class="mb-32 pt-24 -mt-24" id="weekly">')
$kpopStart = $html.IndexOf('<div class="mb-32 pt-24 -mt-24" id="kpop">')
$endIndex = $html.IndexOf('</main>')

if ($weeklyStart -gt -1 -and $kpopStart -gt -1) {
    $beforeWeekly = $html.Substring(0, $weeklyStart)
    $weeklyToKpop = $html.Substring($weeklyStart, $kpopStart - $weeklyStart)
    $kpopToEnd = $html.Substring($kpopStart, $endIndex - $kpopStart)
    $afterKpop = $html.Substring($endIndex)

    # Change buttons in Weekly Talks
    # from: href="academy_weekly.html" class="w-full block text-center bg-gray-900 hover:bg-black text-white font-bold py-2 rounded-lg transition-colors">상세보기</a>
    # to: href="checkout_vod.html?id=weekly_talks&title=Weekly Talks 패키지 (VOD)&price=150,000" class="w-full block text-center bg-kftaGreen hover:bg-green-900 text-white font-bold py-2 rounded-lg transition-colors">온라인 VOD 수강 신청하기 (바로 시청)</a>
    $weeklyToKpop = [regex]::Replace($weeklyToKpop, 'href="academy_weekly\.html" class="w-full block text-center bg-gray-900 hover:bg-black text-white font-bold py-2 rounded-lg transition-colors">상세보기</a>', 'href="checkout_vod.html?id=weekly_talks&title=Weekly Talks 패키지 (VOD)&price=150,000" class="w-full block text-center bg-kftaGreen hover:bg-green-900 text-white font-bold py-2 rounded-lg transition-colors">온라인 VOD 수강 신청하기 (바로 시청)</a>')

    # Change buttons in K-POP
    # from: href="academy_kpop.html" class="w-full block text-center bg-gray-900 hover:bg-black text-white font-bold py-2 rounded-lg transition-colors">상세보기</a>
    # to: href="checkout_vod.html?id=fashion_kpop&title=Fashion in K-POP (VOD)&price=120,000" class="w-full block text-center bg-kftaGreen hover:bg-green-900 text-white font-bold py-2 rounded-lg transition-colors">온라인 VOD 수강 신청하기 (바로 시청)</a>
    $kpopToEnd = [regex]::Replace($kpopToEnd, 'href="academy_kpop\.html" class="w-full block text-center bg-gray-900 hover:bg-black text-white font-bold py-2 rounded-lg transition-colors">상세보기</a>', 'href="checkout_vod.html?id=fashion_kpop&title=Fashion in K-POP (VOD)&price=120,000" class="w-full block text-center bg-kftaGreen hover:bg-green-900 text-white font-bold py-2 rounded-lg transition-colors">온라인 VOD 수강 신청하기 (바로 시청)</a>')

    $html = $beforeWeekly + $weeklyToKpop + $kpopToEnd + $afterKpop
}

[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\academy.html", $html, [System.Text.Encoding]::UTF8)

# Also fix the bottom CTA inside academy_weekly.html which I missed earlier
$weeklyHtml = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\academy_weekly.html", [System.Text.Encoding]::UTF8)
$weeklyHtml = [regex]::Replace($weeklyHtml, '<a href="community\.html#contact" class="inline-block bg-kftaGreen hover:bg-green-900 text-white font-bold py-4 px-12 rounded-full transition-all duration-300 shadow-lg text-lg">', '<a href="checkout_vod.html?id=weekly_talks&title=Weekly Talks 패키지 (VOD)&price=150,000" class="inline-block bg-kftaGreen hover:bg-green-900 text-white font-bold py-4 px-12 rounded-full transition-all duration-300 shadow-lg text-lg">')
[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\academy_weekly.html", $weeklyHtml, [System.Text.Encoding]::UTF8)

