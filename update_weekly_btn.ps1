$c = Get-Content academy_weekly.html -Raw -Encoding UTF8
$oldHTML = @"
        <a href="checkout_vod.html?id=weekly_talks&title=Weekly Talks 패키지 (VOD)&price=150,000" class="inline-block bg-kftaGreen hover:bg-green-900 text-white font-bold py-4 px-12 rounded-full transition-all duration-300 shadow-lg text-lg">
            온라인 VOD 수강 신청하기 (바로 시청)
        </a>
"@
$newHTML = @"
        <a href="academy_vod_detail.html?title=Weekly Talks 패키지 (VOD)&price=150000" class="inline-block bg-kftaGreen hover:bg-green-900 text-white font-bold py-4 px-12 rounded-full transition-all duration-300 shadow-lg text-lg">
            온라인 VOD 수강 신청하기
        </a>
"@
$c = $c.Replace($oldHTML, $newHTML)
Set-Content academy_weekly.html $c -Encoding UTF8
