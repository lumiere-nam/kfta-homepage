$html = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\academy.html", [System.Text.Encoding]::UTF8)

# 1. Update One Day Class buttons and links
$html = $html.Replace('checkout.html?item=나의 컬러 팔레트 맵', 'academy_oneday_color.html')
$html = $html.Replace('checkout.html?item=패션 마인드 디톡스 원데이', 'academy_oneday_detox.html')
# Replace "상세 커리큘럼 보기" with "더보기" in One Day Class section
$html = [regex]::Replace($html, '(?s)<a href="(academy_oneday_[^"]+\.html)".*?>상세 커리큘럼 보기</a>', '<a href="$1" class="w-full block text-center bg-kftaGreen hover:bg-green-900 text-white font-bold py-3 rounded-xl transition-colors">더보기</a>')
$html = [regex]::Replace($html, '(?s)<a href="(academy_oneday_[^"]+\.html)".*?>더 보기</a>', '<a href="$1" class="w-full block text-center bg-kftaGreen hover:bg-green-900 text-white font-bold py-3 rounded-xl transition-colors">더보기</a>')

# 2. Update Weekly Talks '시간: 90분' right alignment
# The current HTML for Weekly talks might just say `<span>시간: 90분</span>` or `<p>시간: 90분</p>`
# Let's replace whatever container it's in to make it right-aligned.
# In other sections, it's:
# <div class="flex justify-between items-center mb-4 text-sm font-bold text-gray-700 border-t border-gray-100 pt-3">
#     <span></span>
#     <span>시간: 60분</span>
# </div>
# Let's check how Weekly Talks does it.
