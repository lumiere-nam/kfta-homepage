$html = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\academy.html", [System.Text.Encoding]::UTF8)

# Find the messed up block and replace it correctly
$pattern = '(?s)<div class="bg-white rounded-2xl overflow-hidden shadow-lg flex flex-col hover:-translate-y-2 transition-transform duration-300">\s*<img src="https://images.unsplash.com/photo-1544716278-ca5e3f4abd8c\?ixlib=rb-4\.0\.3&auto=format&fit=crop&w=600&q=80" class="w-full h-48 object-cover" alt="패션 마인드 디톡스 원데이</h4>.*?</div>\s*</div>'

$replacement = @"
<div class="bg-white rounded-2xl overflow-hidden shadow-lg flex flex-col hover:-translate-y-2 transition-transform duration-300">
    <img src="https://images.unsplash.com/photo-1544716278-ca5e3f4abd8c?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80" class="w-full h-48 object-cover" alt="패션 마인드 디톡스 원데이">
    <div class="p-6 flex-grow flex flex-col">
        <h4 class="font-bold text-lg text-kftaGreen mb-3">패션 마인드 디톡스 원데이</h4>
        <p class="text-sm text-gray-600 mb-6 flex-grow">패션에 대한 나의 인지 오류와 부정적인 언어 습관을 발견하고, 이를 긍정적으로 개선하여 자신감을 되찾는 원데이 클래스입니다.</p>
        <div class="flex justify-between items-center mb-4 text-sm font-bold text-gray-700 border-t border-gray-100 pt-3">
            <span>가격: 120,000원</span>
            <span>시간: 60분</span>
        </div>
        <a href="checkout.html?item=패션 마인드 디톡스 원데이" class="w-full block text-center bg-kftaGreen hover:bg-green-900 text-white font-bold py-3 rounded-xl transition-colors">신청하기</a>
    </div>
</div>
"@

$html = [regex]::Replace($html, $pattern, $replacement)
[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\academy.html", $html, [System.Text.Encoding]::UTF8)
