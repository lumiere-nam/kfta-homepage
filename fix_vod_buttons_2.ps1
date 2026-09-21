$c = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\academy.html", [System.Text.Encoding]::UTF8)

$oldWeekly = 'href="academy_weekly.html" class="w-full block text-center bg-gray-900 hover:bg-black text-white font-bold py-2 rounded-lg transition-colors">상세보기</a>'
$newWeekly = 'href="checkout_vod.html?id=weekly_talks&title=Weekly Talks 패키지 (VOD)&price=150,000" class="w-full block text-center bg-kftaGreen hover:bg-green-900 text-white font-bold py-2 rounded-lg transition-colors">온라인 VOD 수강 신청하기 (바로 시청)</a>'

$oldKpop = 'href="academy_kpop.html" class="w-full block text-center bg-gray-900 hover:bg-black text-white font-bold py-2 rounded-lg transition-colors">상세보기</a>'
$newKpop = 'href="checkout_vod.html?id=fashion_kpop&title=Fashion in K-POP (VOD)&price=120,000" class="w-full block text-center bg-kftaGreen hover:bg-green-900 text-white font-bold py-2 rounded-lg transition-colors">온라인 VOD 수강 신청하기 (바로 시청)</a>'

$c = $c.Replace($oldWeekly, $newWeekly)
$c = $c.Replace($oldKpop, $newKpop)

[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\academy.html", $c, [System.Text.Encoding]::UTF8)
