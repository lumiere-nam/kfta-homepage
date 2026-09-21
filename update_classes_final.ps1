$c = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\academy.html", [System.Text.Encoding]::UTF8)

# 1. academy.html updates
$scent_old = '<h4 class="font-bold text-lg text-kftaGreen mb-3">나만의 시그니처 무드향</h4>
                            <p class="text-sm text-gray-600 mb-6 flex-grow">시각적 스타일링에 더해 나만의 무드를 완성하는 후각적 테라피. 천연 에센셜 오일을 사용하여 그날의 감정과 TPO에 맞는 힐링 향수를 직접 조향해보는 원데이 클래스입니다.</p>
                            <div class="flex justify-between items-center mb-4 text-sm font-bold text-gray-700 border-t border-gray-100 pt-3">
    <span>가격: 400,000원</span>'
$scent_new = '<h4 class="font-bold text-lg text-kftaGreen mb-3">나만의 시그니처 무드향</h4>
                            <p class="text-sm text-gray-600 mb-6 flex-grow">시각적 스타일링에 더해 나만의 무드를 완성하는 후각적 테라피. 천연 에센셜 오일을 사용하여 그날의 감정과 TPO에 맞는 힐링 향수를 직접 조향해보는 원데이 클래스입니다.</p>
                            <div class="flex justify-between items-center mb-4 text-sm font-bold text-gray-700 border-t border-gray-100 pt-3">
    <span>가격: 100,000원 (단, 2인 이상 신청가능)</span>'

$beauty_old = '<h4 class="font-bold text-lg text-kftaGreen mb-3">4050 뷰티큐레이션</h4>
                            <p class="text-sm text-gray-600 mb-6 flex-grow">노화하는 4050 신체적 특징에 맞는 진단을 하며, 나이듦을 수용하고 자신의 체형에 맞는 스타일링 공식을 세워보는 뷰티 클래스입니다.</p>
                            <div class="flex justify-between items-center mb-4 text-sm font-bold text-gray-700 border-t border-gray-100 pt-3">
    <span>가격: 400,000원</span>'
$beauty_new = '<h4 class="font-bold text-lg text-kftaGreen mb-3">4050 뷰티큐레이션</h4>
                            <p class="text-sm text-gray-600 mb-6 flex-grow">노화하는 4050 신체적 특징에 맞는 진단을 하며, 나이듦을 수용하고 자신의 체형에 맞는 스타일링 공식을 세워보는 뷰티 클래스입니다.</p>
                            <div class="flex justify-between items-center mb-4 text-sm font-bold text-gray-700 border-t border-gray-100 pt-3">
    <span>가격: 200,000원</span>'

$c = $c.Replace($scent_old, $scent_new)
$c = $c.Replace($beauty_old, $beauty_new)
$c = $c.Replace('<span>가격: 50,000원</span>', '<span></span>')

[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\academy.html", $c, [System.Text.Encoding]::UTF8)

# 2. academy_oneday.html
$c2 = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\academy_oneday.html", [System.Text.Encoding]::UTF8)
$c2 = $c2.Replace('후각적 테라피 (400,000원 / 120분)', '후각적 테라피 (100,000원 / 120분 / 단, 2인 이상 신청가능)')
$c2 = $c2.Replace('나이듦의 긍정 (400,000원 / 120분)', '나이듦의 긍정 (200,000원 / 120분)')
[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\academy_oneday.html", $c2, [System.Text.Encoding]::UTF8)

# 3. academy_oneday_scent.html
$c3 = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\academy_oneday_scent.html", [System.Text.Encoding]::UTF8)
$c3 = $c3.Replace('가격: 400,000원 / 소요 시간: 120분', '가격: 100,000원 (단 2인 이상 신청가능) / 소요 시간: 120분')
[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\academy_oneday_scent.html", $c3, [System.Text.Encoding]::UTF8)

# 4. academy_oneday_beauty.html
$c4 = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\academy_oneday_beauty.html", [System.Text.Encoding]::UTF8)
$c4 = $c4.Replace('가격: 400,000원 / 소요 시간: 120분', '가격: 200,000원 / 소요 시간: 120분')
[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\academy_oneday_beauty.html", $c4, [System.Text.Encoding]::UTF8)

# 5. academy_kids.html
$c5 = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\academy_kids.html", [System.Text.Encoding]::UTF8)
$oldKids1 = '나뭇잎, 꽃, 열매 등 자연의 재료와 다양한 미술 용품들을 활용해 화폭에 콜라주 작업을 하며 나만의 취향과 감정을 표현하는 창의 미술 테라피입니다.'
$newKids1 = '나뭇잎, 꽃, 열매 등 자연의 재료와 패션 도구(원단 스와치 등)들을 활용해 콜라주 작업을 하며 나만의 취향과 감정을 표현하는 창의 패션테라피입니다.'
$oldKids2 = '정해진 정답 없이 나만의 색채로 패션 아이템을 채색하며 스트레스를 해소하고, 아이의 자기 긍정감과 자율성을 기르는 프로그램입니다.'
$newKids2 = '정해진 정답 없이 나만의 색채로 다양한 패션 실루엣과 스타일링 요소를 채색하며 스트레스를 해소하고, 아이의 자기 긍정감과 자율성을 기르는 프로그램입니다.'
$c5 = $c5.Replace($oldKids1, $newKids1)
$c5 = $c5.Replace($oldKids2, $newKids2)
[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\academy_kids.html", $c5, [System.Text.Encoding]::UTF8)

