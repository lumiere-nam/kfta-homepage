$template = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\academy_oneday.html", [System.Text.Encoding]::UTF8)

$oldMain = '(?s)<main.*?</main>'
$newMain = @"
<main class="bg-kftaLight py-12 px-6 relative font-sans text-gray-800">
    <div class="max-w-5xl mx-auto bg-white shadow-2xl rounded-3xl overflow-hidden border border-gray-200">
        <div class="bg-kftaGreen p-10 text-white">
            <p class="text-sm text-kftaBeige mb-2 font-semibold">KFTA Academy</p>
            <h1 class="font-serif font-bold text-4xl lg:text-5xl mb-4">Kids & Family Class</h1>
            <p class="text-lg opacity-90">아이의 정서 발달과 가족의 소통을 돕는 패션 테라피</p>
        </div>
        <div class="p-10 space-y-16">
            
            <div class="grid grid-cols-1 lg:grid-cols-2 gap-10 border-b pb-10">
                <img src="assets/class_kids_5senses.png" class="rounded-2xl w-full h-80 object-cover shadow-lg">
                <div>
                    <h3 class="text-2xl font-bold text-kftaGreen mb-2">오감 테라피</h3>
                    <p class="text-kftaRed font-bold mb-4">패션 소재 촉감 놀이</p>
                    <p class="text-gray-600 leading-relaxed text-justify mb-4">(5세~7세 권장) 실크, 면, 니트 등 다양한 패션 소재를 직접 만지고 느끼며 아이의 숨겨진 감각과 감성을 깨우는 체험형 촉감 놀이 시간입니다.</p>
                </div>
            </div>

            <div class="grid grid-cols-1 lg:grid-cols-2 gap-10 border-b pb-10">
                <img src="assets/class_kids_designer.png" class="rounded-2xl w-full h-80 object-cover shadow-lg lg:order-2">
                <div class="lg:order-1">
                    <h3 class="text-2xl font-bold text-kftaGreen mb-2">꼬마 디자이너의 안목</h3>
                    <p class="text-kftaRed font-bold mb-4">자연물 컬러 콜라주</p>
                    <p class="text-gray-600 leading-relaxed text-justify mb-4">나뭇잎, 꽃, 열매 등 자연의 재료와 원단 스와치(원단 샘플), 그리고 다양한 미술 용품들을 활용해 화폭에 콜라주 작업을 하며 나만의 취향과 감정을 표현하는 창의 미술 테라피입니다.</p>
                </div>
            </div>
            
            <div class="grid grid-cols-1 lg:grid-cols-2 gap-10 border-b pb-10">
                <img src="assets/class_kids_coloring.png" class="rounded-2xl w-full h-80 object-cover shadow-lg">
                <div>
                    <h3 class="text-2xl font-bold text-kftaGreen mb-2">마음을 칠하는 시간</h3>
                    <p class="text-kftaRed font-bold mb-4">반짝반짝 패션 컬러링</p>
                    <p class="text-gray-600 leading-relaxed text-justify mb-4">정해진 정답 없이 나만의 색채로 패션 아이템을 채색하며 스트레스를 해소하고, 아이의 자기 긍정감과 자율성을 기르는 프로그램입니다.</p>
                </div>
            </div>
            
            <div class="grid grid-cols-1 lg:grid-cols-2 gap-10 border-b pb-10">
                <img src="assets/class_kids_mirror2.png" class="rounded-2xl w-full h-80 object-cover shadow-lg lg:order-2">
                <div class="lg:order-1">
                    <h3 class="text-2xl font-bold text-kftaGreen mb-2">서로를 비추는 거울</h3>
                    <p class="text-kftaRed font-bold mb-4">가족 스타일링 테라피</p>
                    <p class="text-gray-600 leading-relaxed text-justify mb-4">엄마가 아이에게, 아이가 아빠에게 서로 어울리는 옷과 색을 골라주며 가족 간의 숨은 장점을 발견하고 칭찬과 마음을 나누는 가족 소통 프로그램입니다.</p>
                </div>
            </div>

        </div>
    </div>
</main>
"@

$html = [regex]::Replace($template, $oldMain, $newMain)
[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\academy_kids.html", $html, [System.Text.Encoding]::UTF8)

# Now fix the links in academy.html
$academy = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\academy.html", [System.Text.Encoding]::UTF8)
# Replace academy_oneday.html with academy_kids.html for Kids class section
$academy = $academy.Replace('href="academy_oneday.html" class="w-full block text-center bg-kftaGreen hover:bg-green-900 text-white font-bold py-3 rounded-xl transition-colors">신청하기</a>', 'href="academy_kids.html" class="w-full block text-center bg-kftaGreen hover:bg-green-900 text-white font-bold py-3 rounded-xl transition-colors">상세보기</a>')

[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\academy.html", $academy, [System.Text.Encoding]::UTF8)
