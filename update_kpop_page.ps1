$html = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\academy_kpop.html", [System.Text.Encoding]::UTF8)

$oldBlock = '(?s)<div class="grid grid-cols-1 lg:grid-cols-2 gap-10">.*?</ul>\s*</div>\s*</div>'

$newBlock = @"
<div class="space-y-12">
    <!-- Episode 1 -->
    <div class="grid grid-cols-1 lg:grid-cols-2 gap-10 items-center">
        <img src="assets/class_kpop_1.png" class="rounded-2xl w-full h-80 object-cover shadow-lg">
        <div>
            <h3 class="text-2xl font-bold text-kftaGreen mb-2">[1화] 페르소나의 확장</h3>
            <p class="text-kftaRed font-bold mb-4">퍼스널 이미지 메이킹 (120분)</p>
            <p class="text-gray-600 leading-relaxed text-justify mb-4">무대의상과 자아 확장: 화려한 콘셉트 뒤에 숨겨진 다중 자아의 표출 과정을 살펴봅니다. 다양한 무대 의상을 통해 자신만의 숨은 정체성을 탐구하고, 내면의 다양한 페르소나를 자유롭게 실험하며 자아를 확장해 나가는 심리학적 이해와 적용 방법을 배우는 시간입니다.</p>
        </div>
    </div>
    
    <!-- Episode 2 -->
    <div class="grid grid-cols-1 lg:grid-cols-2 gap-10 items-center">
        <div class="order-2 lg:order-1">
            <h3 class="text-2xl font-bold text-kftaGreen mb-2">[2화] 콘셉트를 입다</h3>
            <p class="text-kftaRed font-bold mb-4">퍼스널 이미지 메이킹 (120분)</p>
            <p class="text-gray-600 leading-relaxed text-justify mb-4">다채로운 K-pop 룩을 통해 알아보는 나의 내면 상태: 앨범마다 변하는 아이돌의 비주얼 콘셉트에 자신을 투영해보며, 30대부터 60대까지 다양한 연령층이 현재 자신의 감정 상태와 숨겨진 욕구를 진단해보고 이를 일상에서 긍정적으로 활용할 수 있는 방안을 모색하는 시간.</p>
        </div>
        <img src="assets/class_kpop_2.png" class="rounded-2xl w-full h-80 object-cover shadow-lg order-1 lg:order-2">
    </div>
    
    <!-- Episode 3 -->
    <div class="grid grid-cols-1 lg:grid-cols-2 gap-10 items-center">
        <img src="assets/class_kpop_3.png" class="rounded-2xl w-full h-80 object-cover shadow-lg">
        <div>
            <h3 class="text-2xl font-bold text-kftaGreen mb-2">[3화] 입는 순간 주인공이 된다</h3>
            <p class="text-kftaRed font-bold mb-4">퍼스널 이미지 메이킹 (120분)</p>
            <p class="text-gray-600 leading-relaxed text-justify mb-4">K-pop 스타일을 통한 숨겨진 페르소나 탐구: 눈으로만 즐기던 K-pop 스타일의 요소를 일상 속 과감한 포인트 컬러나 질감으로 차용해 보며, 주도적인 자아 발견과 자신감을 회복하는 패션 테라피 적용법. 일상의 제약에서 벗어나 스스로 삶의 주인공이 되는 패션 치유 과정을 다룹니다.</p>
        </div>
    </div>
    
    <!-- Episode 4 -->
    <div class="grid grid-cols-1 lg:grid-cols-2 gap-10 items-center">
        <div class="order-2 lg:order-1">
            <h3 class="text-2xl font-bold text-kftaGreen mb-2">[4화] 소통과 연대</h3>
            <p class="text-kftaRed font-bold mb-4">퍼스널 이미지 메이킹 (120분)</p>
            <p class="text-gray-600 leading-relaxed text-justify mb-4">팬덤 컬러와 상징적 연대: 굿즈와 같은 상징적인 소품을 공유하는 과정에서 형성되는 강력한 정서적 소속감을 알아봅니다. K-pop 팬덤의 끈끈한 연대감을 바탕으로, 타인과 공감하고 소통하며 안정적인 심리적 유대감을 일상 속 긍정적 에너지로 적용하는 방법을 다룹니다.</p>
        </div>
        <img src="assets/class_kpop_4.png" class="rounded-2xl w-full h-80 object-cover shadow-lg order-1 lg:order-2">
    </div>
</div>
"@

$html = [regex]::Replace($html, $oldBlock, $newBlock)

[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\academy_kpop.html", $html, [System.Text.Encoding]::UTF8)
