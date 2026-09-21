$html = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\academy_weekly.html", [System.Text.Encoding]::UTF8)

$oldGrid = '(?s)<div class="grid grid-cols-1 md:grid-cols-2 gap-8">.*?</div>\s*</div>'

$newGrid = @"
<div class="grid grid-cols-1 md:grid-cols-2 gap-8">
        <!-- 1화 -->
        <div class="bg-white rounded-2xl overflow-hidden shadow-lg flex flex-col border border-gray-100">
            <div class="w-full h-48 bg-gray-200"><img src="assets/class_weekly_reading2.png" class="w-full h-full object-cover" alt="클래스 이미지"></div>
            <div class="p-6 flex-grow flex flex-col">
                <h3 class="font-bold text-xl text-kftaGreen mb-3">[1화] 사람 읽는 법_비언어적 소통</h3>
                <p class="text-sm text-gray-600 text-justify">옷차림에 담긴 비언어적 메시지를 이해하고, 타인의 고유한 취향과 라이프스타일을 존중하는 소통의 시각을 기르는 시간</p>
            </div>
        </div>
        <!-- 2화 -->
        <div class="bg-white rounded-2xl overflow-hidden shadow-lg flex flex-col border border-gray-100">
            <div class="w-full h-48 bg-gray-200"><img src="assets/class_weekly_scarf2.png" class="w-full h-full object-cover" alt="클래스 이미지"></div>
            <div class="p-6 flex-grow flex flex-col">
                <h3 class="font-bold text-xl text-kftaGreen mb-3">[2화] 매체론_스카프</h3>
                <p class="text-sm text-gray-600 text-justify">목선을 감싸는 유연한 드레이핑 속에 숨겨진 감정 표현 방식과 섬세한 자기 연출법</p>
            </div>
        </div>
        <!-- 3화 -->
        <div class="bg-white rounded-2xl overflow-hidden shadow-lg flex flex-col border border-gray-100">
            <div class="w-full h-48 bg-gray-200"><img src="assets/class_weekly_belt.png" class="w-full h-full object-cover" alt="클래스 이미지"></div>
            <div class="p-6 flex-grow flex flex-col">
                <h3 class="font-bold text-xl text-kftaGreen mb-3">[3화] 매체론_벨트</h3>
                <p class="text-sm text-gray-600 text-justify">실루엣의 중심을 잡는 벨트를 통해 알아보는 개인의 심리적 경계선과 통제 태도</p>
            </div>
        </div>
        <!-- 4화 -->
        <div class="bg-white rounded-2xl overflow-hidden shadow-lg flex flex-col border border-gray-100">
            <div class="w-full h-48 bg-gray-200"><img src="https://images.unsplash.com/photo-1514327605112-b887c0e61c0a?q=80&w=600&auto=format&fit=crop" class="w-full h-full object-cover" alt="클래스 이미지"></div>
            <div class="p-6 flex-grow flex flex-col">
                <h3 class="font-bold text-xl text-kftaGreen mb-3">[4화] 매체론_모자</h3>
                <p class="text-sm text-gray-600 text-justify">시선을 가리거나 끌어당기는 모자의 조형적 특성과 자아 표현</p>
            </div>
        </div>
        <!-- 5화 -->
        <div class="bg-white rounded-2xl overflow-hidden shadow-lg flex flex-col border border-gray-100">
            <div class="w-full h-48 bg-gray-200"><img src="assets/class_weekly_bag2.png" class="w-full h-full object-cover" alt="클래스 이미지"></div>
            <div class="p-6 flex-grow flex flex-col">
                <h3 class="font-bold text-xl text-kftaGreen mb-3">[5화] 매체론_가방</h3>
                <p class="text-sm text-gray-600 text-justify">소장품을 담아내는 정체성의 공간으로서 가방의 형태와 크기가 말해주는 삶의 가치관</p>
            </div>
        </div>
        <!-- 6화 -->
        <div class="bg-white rounded-2xl overflow-hidden shadow-lg flex flex-col border border-gray-100">
            <div class="w-full h-48 bg-gray-200"><img src="assets/class_weekly_shoes.png" class="w-full h-full object-cover" alt="클래스 이미지"></div>
            <div class="p-6 flex-grow flex flex-col">
                <h3 class="font-bold text-xl text-kftaGreen mb-3">[6화] 매체론_신발</h3>
                <p class="text-sm text-gray-600 text-justify">세상을 디디는 접지점(Grounding)으로서 태도와 자존감을 결정짓는 신발의 기호학</p>
            </div>
        </div>
        <!-- 7화 -->
        <div class="bg-white rounded-2xl overflow-hidden shadow-lg flex flex-col border border-gray-100">
            <div class="w-full h-48 bg-gray-200"><img src="https://images.unsplash.com/photo-1515562141207-7a88fb7ce338?q=80&w=600&auto=format&fit=crop" class="w-full h-full object-cover" alt="클래스 이미지"></div>
            <div class="p-6 flex-grow flex flex-col">
                <h3 class="font-bold text-xl text-kftaGreen mb-3">[7화] 매체론_주얼리</h3>
                <p class="text-sm text-gray-600 text-justify">빛과 금속이 전하는 고유의 메시지, 자신을 증명하고 기념하는 조용한 존재감의 가치</p>
            </div>
        </div>
        <!-- 8화 -->
        <div class="bg-white rounded-2xl overflow-hidden shadow-lg flex flex-col border border-gray-100">
            <div class="w-full h-48 bg-gray-200"><img src="assets/class_weekly_framework.png" class="w-full h-full object-cover" alt="클래스 이미지"></div>
            <div class="p-6 flex-grow flex flex-col">
                <h3 class="font-bold text-xl text-kftaGreen mb-3">[8화] 매체론_프레임워크 완성</h3>
                <p class="text-sm text-gray-600 text-justify">6가지 소품을 통합하여 나만의 균형 잡힌 시그니처 룩을 완성하는 종합 해독 과정</p>
            </div>
        </div>
    </div>
    
    <div class="mt-16 text-center border-t border-gray-200 pt-12">
        <span class="inline-block px-4 py-1.5 bg-gray-100 text-gray-600 text-xs font-bold rounded-full mb-4">비정기 클래스</span>
        <h3 class="font-serif font-bold text-2xl text-kftaGreen mb-4">위클리 토크는 비정기적으로 열립니다</h3>
        <p class="text-gray-600 mb-8 max-w-xl mx-auto">위클리 토크는 소규모 집중 프로그램으로, 일정 인원 모집 시 또는 협회 일정에 따라 오픈됩니다. 대기자 명단에 등록하시면 새로운 기수가 열릴 때 가장 먼저 안내해 드립니다.</p>
        <a href="community.html#contact" class="inline-block bg-kftaGreen hover:bg-green-900 text-white font-bold py-4 px-12 rounded-full transition-all duration-300 shadow-lg text-lg">
            대기자 등록 및 수강 문의하기
        </a>
    </div>
</div>
"@

$html = [regex]::Replace($html, $oldGrid, $newGrid)

[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\academy_weekly.html", $html, [System.Text.Encoding]::UTF8)

