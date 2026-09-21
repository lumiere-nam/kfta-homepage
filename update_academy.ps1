$html = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\academy.html", [System.Text.Encoding]::UTF8)

# Replace Mom Profile
$pattern1 = '(?s)<div class="bg-white rounded-2xl overflow-hidden shadow-lg flex flex-col hover:-translate-y-2 transition-transform duration-300">\s*<img src="assets/class_mom_profile.png".*?</a>\s*</div>\s*</div>'
$replacement1 = @"
<div class="bg-white rounded-2xl overflow-hidden shadow-lg flex flex-col hover:-translate-y-2 transition-transform duration-300">
    <img src="https://images.unsplash.com/photo-1573496359142-b8d87734a5a2?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80" class="w-full h-48 object-cover" alt="나의 컬러 팔레트 맵">
    <div class="p-6 flex-grow flex flex-col">
        <h4 class="font-bold text-lg text-kftaGreen mb-3">나의 컬러 팔레트 맵</h4>
        <p class="text-sm text-gray-600 mb-6 flex-grow">퍼스널컬러와 심리를 결합하여 짧은 시간 안에 나의 내면의 색과 외면의 색을 찾는 미니 클래스입니다.</p>
        <div class="flex justify-between items-center mb-4 text-sm font-bold text-gray-700 border-t border-gray-100 pt-3">
            <span>가격: 150,000원</span>
            <span>시간: 60분</span>
        </div>
        <a href="checkout.html?item=나의 컬러 팔레트 맵" class="w-full block text-center bg-kftaGreen hover:bg-green-900 text-white font-bold py-3 rounded-xl transition-colors">신청하기</a>
    </div>
</div>
"@

$html = [regex]::Replace($html, $pattern1, $replacement1)

# Replace Closet Diet
$pattern2 = '(?s)<div class="bg-white rounded-2xl overflow-hidden shadow-lg flex flex-col hover:-translate-y-2 transition-transform duration-300">\s*<img src="https://images.unsplash.com/photo-1558769132-cb1aea458c5e[^>]+>\s*<div class="p-6 flex-grow flex flex-col">\s*<h4 class="font-bold text-lg text-kftaGreen mb-3">옷장 다이어트</h4>.*?</a>\s*</div>\s*</div>'
$replacement2 = @"
<div class="bg-white rounded-2xl overflow-hidden shadow-lg flex flex-col hover:-translate-y-2 transition-transform duration-300">
    <img src="https://images.unsplash.com/photo-1434389678369-183428d00c4c?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80" class="w-full h-48 object-cover" alt="패션 감정 다이어리 원데이">
    <div class="p-6 flex-grow flex flex-col">
        <h4 class="font-bold text-lg text-kftaGreen mb-3">패션 감정 다이어리 원데이</h4>
        <p class="text-sm text-gray-600 mb-6 flex-grow">감정 다이어리를 통해 현재 나의 스트레스를 해소하고, 하루의 패션 테라피를 경험하는 가벼운 입문 프로그램입니다.</p>
        <div class="flex justify-between items-center mb-4 text-sm font-bold text-gray-700 border-t border-gray-100 pt-3">
            <span>가격: 120,000원</span>
            <span>시간: 60분</span>
        </div>
        <a href="checkout.html?item=패션 감정 다이어리 원데이" class="w-full block text-center bg-kftaGreen hover:bg-green-900 text-white font-bold py-3 rounded-xl transition-colors">신청하기</a>
    </div>
</div>
"@

$html = [regex]::Replace($html, $pattern2, $replacement2)

[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\academy.html", $html, [System.Text.Encoding]::UTF8)
