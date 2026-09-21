$html = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\consulting.html", [System.Text.Encoding]::UTF8)

# Remove VIP card completely. It starts at <!-- Card 4 --> and ends at </div> before </div> </div> </section>
$patternVIP = '(?s)<!-- Card 4 -->.*?</div>\s*</div>\s*</div>'
$replacement = @"
<!-- Card 4 -->
<div class="bg-white rounded-xl overflow-hidden shadow-[0_4px_20px_rgba(0,0,0,0.05)] hover:shadow-[0_8px_30px_rgba(0,0,0,0.1)] transition-shadow duration-300 flex flex-col border border-gray-100">
    <img src="https://images.unsplash.com/photo-1558769132-cb1aea458c5e?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80" class="w-full h-56 object-cover" alt="옷장 다이어트 컨설팅">
    <div class="p-6 flex-grow flex flex-col text-left">
        <h3 class="font-sans font-bold text-xl text-gray-900 mb-2">옷장 다이어트 컨설팅</h3>
        <p class="font-sans text-xs font-bold text-kftaRed mb-3 bg-red-50 inline-block px-3 py-1.5 rounded-full border border-red-100">400,000원</p>
        
        <p class="text-[11px] text-gray-500 mb-1">KFTA 오프라인 대면 컨설팅</p>
        <p class="text-[11px] text-[#FF477E] font-bold mb-5">상시 예약 오픈</p>
        
        <a href="academy_oneday_closet.html" class="block w-full bg-[#EF4444] hover:bg-red-600 text-white text-center font-bold py-3 rounded text-sm mb-5 transition-colors">
            예약하기
        </a>
        
        <div class="border-t border-gray-100 pt-4 mt-auto">
            <p class="text-xs text-gray-500 italic mb-2">내 옷장 안의 감정 찌꺼기를 비워내는 정리 테라피</p>
            <p class="text-xs text-gray-400">사놓고 입지 않는 옷이 가득하신가요?</p>
        </div>
    </div>
</div>

<!-- Card 5 -->
<div class="bg-white rounded-xl overflow-hidden shadow-[0_4px_20px_rgba(0,0,0,0.05)] hover:shadow-[0_8px_30px_rgba(0,0,0,0.1)] transition-shadow duration-300 flex flex-col border border-gray-100">
    <img src="assets/class_mom_profile.png" class="w-full h-56 object-cover" alt="엄마프사 컨설팅">
    <div class="p-6 flex-grow flex flex-col text-left">
        <h3 class="font-sans font-bold text-xl text-gray-900 mb-2">엄마프사 컨설팅</h3>
        <p class="font-sans text-xs font-bold text-kftaRed mb-3 bg-red-50 inline-block px-3 py-1.5 rounded-full border border-red-100">400,000원</p>
        
        <p class="text-[11px] text-gray-500 mb-1">KFTA 오프라인 대면 컨설팅</p>
        <p class="text-[11px] text-[#FF477E] font-bold mb-5">상시 예약 오픈</p>
        
        <a href="academy_oneday_mom.html" class="block w-full bg-[#EF4444] hover:bg-red-600 text-white text-center font-bold py-3 rounded text-sm mb-5 transition-colors">
            예약하기
        </a>
        
        <div class="border-t border-gray-100 pt-4 mt-auto">
            <p class="text-xs text-gray-500 italic mb-2">당당하고 아름다운 나의 모습을 되찾는 스타일링</p>
            <p class="text-xs text-gray-400">자녀의 엄마를 넘어, 오롯이 나로 빛나고 싶다면?</p>
        </div>
    </div>
</div>
"@

$html = [regex]::Replace($html, $patternVIP, $replacement)

[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\consulting.html", $html, [System.Text.Encoding]::UTF8)
