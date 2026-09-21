$html = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\academy.html", [System.Text.Encoding]::UTF8)

# 1. Update One Day Class Links
$html = $html.Replace('checkout.html?item=나의 컬러 팔레트 맵', 'academy_oneday_color.html')
$html = $html.Replace('checkout.html?item=패션 마인드 디톡스 원데이', 'academy_oneday_detox.html')

# 2. Update all "상세 커리큘럼 보기" and "더 보기" to "더보기" in One Day Class section
# (They use bg-kftaGreen hover:bg-green-900)
$html = [regex]::Replace($html, '(?s)<a href="(academy_oneday_[^"]+\.html)" class="w-full block text-center bg-kftaGreen hover:bg-green-900 text-white font-bold py-3 rounded-xl transition-colors">.*?</a>', '<a href="$1" class="w-full block text-center bg-kftaGreen hover:bg-green-900 text-white font-bold py-3 rounded-xl transition-colors">더보기</a>')

# 3. Weekly Talks Align '시간: 90분'
# We find:
# <div class="flex justify-between items-center mb-3 text-sm font-bold text-gray-700 border-t border-gray-100 pt-2">
#     <span>시간: 90분</span>
# </div>
# And replace with:
# <div class="flex justify-between items-center mb-3 text-sm font-bold text-gray-700 border-t border-gray-100 pt-2">
#     <span></span>
#     <span>시간: 90분</span>
# </div>
$oldTimeStr = @"
<div class="flex justify-between items-center mb-3 text-sm font-bold text-gray-700 border-t border-gray-100 pt-2">
                                  <span>시간: 90분</span>
"@
$newTimeStr = @"
<div class="flex justify-between items-center mb-3 text-sm font-bold text-gray-700 border-t border-gray-100 pt-2">
                                  <span></span>
                                  <span>시간: 90분</span>
"@
$html = $html.Replace($oldTimeStr, $newTimeStr)
$html = $html.Replace('<div class="flex justify-between items-center mb-3 text-sm font-bold text-gray-700 border-t border-gray-100 pt-2">' + "`r`n" + '                                  <span>시간: 90분</span>', '<div class="flex justify-between items-center mb-3 text-sm font-bold text-gray-700 border-t border-gray-100 pt-2">' + "`r`n" + '                                  <span></span>' + "`r`n" + '                                  <span>시간: 90분</span>')
$html = $html.Replace('<div class="flex justify-between items-center mb-3 text-sm font-bold text-gray-700 border-t border-gray-100 pt-2">' + "`n" + '                                  <span>시간: 90분</span>', '<div class="flex justify-between items-center mb-3 text-sm font-bold text-gray-700 border-t border-gray-100 pt-2">' + "`n" + '                                  <span></span>' + "`n" + '                                  <span>시간: 90분</span>')

# Or just use Regex to be safe for all occurrences of "시간: 90분" inside Weekly Talks (and Kpop)
$html = [regex]::Replace($html, '(?s)<div class="flex justify-between items-center([^>]+)>\s*<span>시간: 90분</span>', '<div class="flex justify-between items-center$1>' + "`n" + '                                  <span></span>' + "`n" + '                                  <span>시간: 90분</span>')

# 4. Weekly Talks Buttons to "상세보기"
$html = [regex]::Replace($html, '(?s)<a href="academy_weekly.html" class="w-full block text-center bg-gray-900 hover:bg-black text-white font-bold py-2 rounded-lg transition-colors">신청하기</a>', '<a href="academy_weekly.html" class="w-full block text-center bg-gray-900 hover:bg-black text-white font-bold py-2 rounded-lg transition-colors">상세보기</a>')

[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\academy.html", $html, [System.Text.Encoding]::UTF8)
