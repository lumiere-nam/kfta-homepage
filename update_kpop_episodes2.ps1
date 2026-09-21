$html = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\academy.html", [System.Text.Encoding]::UTF8)

# Replace K-POP Episode 2 (the second match for [2화], because the first is Weekly Talks)
# Alternatively, I can match the surrounding K-POP context, but there are only two [2화]s.
$pattern2 = '(?s)(<div class="bg-white rounded-2xl overflow-hidden shadow-lg flex flex-col hover:-translate-y-2 transition-transform duration-300 border-l-4 border-kftaGreen">.*?<div class="p-6 flex-grow flex flex-col">\s*)<h4 class="font-bold text-lg text-kftaGreen mb-3">\[2화\][^<]+</h4>\s*<p class="text-sm text-gray-600 mb-6 flex-grow">.*?</p>'
$replacement2 = '$1<h4 class="font-bold text-lg text-kftaGreen mb-3">[2화] 콘셉트를 입다</h4>
                              <p class="text-sm text-gray-600 mb-6 flex-grow">다채로운 K-pop 룩을 통해 알아보는 나의 내면 상태: 앨범마다 변하는 아이돌의 비주얼 콘셉트에 자신을 투영해보며, 30대부터 60대까지 다양한 연령층이 현재 자신의 감정 상태와 숨겨진 욕구를 진단해보는 시간.</p>'
$html = [regex]::Replace($html, $pattern2, $replacement2)

# Replace K-POP Episode 3
$pattern3 = '(?s)(<div class="bg-white rounded-2xl overflow-hidden shadow-lg flex flex-col hover:-translate-y-2 transition-transform duration-300 border-l-4 border-kftaGreen">.*?<div class="p-6 flex-grow flex flex-col">\s*)<h4 class="font-bold text-lg text-kftaGreen mb-3">\[3화\][^<]+</h4>\s*<p class="text-sm text-gray-600 mb-6 flex-grow">.*?</p>'
$replacement3 = '$1<h4 class="font-bold text-lg text-kftaGreen mb-3">[3화] 입는 순간 주인공이 된다</h4>
                              <p class="text-sm text-gray-600 mb-6 flex-grow">K-pop 스타일을 통한 숨겨진 페르소나 탐구: 눈으로만 즐기던 K-pop 스타일의 요소를 일상 속 과감한 포인트 컬러나 질감으로 차용해 보며, 주도적인 자아 발견과 자신감을 회복하는 패션 테라피 적용법.</p>'
$html = [regex]::Replace($html, $pattern3, $replacement3)

[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\academy.html", $html, [System.Text.Encoding]::UTF8)
