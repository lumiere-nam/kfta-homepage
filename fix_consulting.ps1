$html = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\consulting.html", [System.Text.Encoding]::UTF8)

# I will replace the entire grid content to fix the nesting.
$pattern = '(?s)<!-- Card 1 -->.*<!-- Card 4 -->.*?</div>\s*</div>'

$fixedGrid = @"
<!-- Card 1 -->
<div class="bg-white rounded-xl overflow-hidden shadow-[0_4px_20px_rgba(0,0,0,0.05)] hover:shadow-[0_8px_30px_rgba(0,0,0,0.1)] transition-shadow duration-300 flex flex-col border border-gray-100">
    <img src="assets/consulting_1.jpg" class="w-full h-56 object-cover" alt="마인드 컬러 컨설팅">
    <div class="p-6 flex-grow flex flex-col text-left">
        <h3 class="font-sans font-bold text-xl text-gray-900 mb-2">마인드 컬러 컨설팅</h3>
        <p class="font-sans text-xs font-bold text-kftaRed mb-3 bg-red-50 inline-block px-3 py-1.5 rounded-full border border-red-100">250,000원</p>
        
        <p class="text-[11px] text-gray-500 mb-1">KFTA 오프라인 대면 컨설팅</p>
        <p class="text-[11px] text-[#FF477E] font-bold mb-5">상시 예약 오픈</p>
        
        <a href="consulting_1.html" class="block w-full bg-[#EF4444] hover:bg-red-600 text-white text-center font-bold py-3 rounded text-sm mb-5 transition-colors">
            예약하기
        </a>
        
        <div class="border-t border-gray-100 pt-4 mt-auto">
            <p class="text-xs text-gray-500 italic mb-2">심리 에너지 및 라이프스타일 맞춤 치유 컬러 도출</p>
            <p class="text-xs text-gray-400">최근 스트레스 받으시나요? 일상에 필요한 회복의 컬러는?</p>
        </div>
    </div>
</div>

<!-- Card 2 -->
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

<!-- Card 3 -->
<div class="bg-white rounded-xl overflow-hidden shadow-[0_4px_20px_rgba(0,0,0,0.05)] hover:shadow-[0_8px_30px_rgba(0,0,0,0.1)] transition-shadow duration-300 flex flex-col border border-gray-100">
    <img src="assets/consulting_3.png" class="w-full h-56 object-cover" alt="퍼스널 이미지 브랜딩 컨설팅">
    <div class="p-6 flex-grow flex flex-col text-left">
        <h3 class="font-sans font-bold text-xl text-gray-900 mb-2">퍼스널 이미지 브랜딩 컨설팅</h3>
        <p class="font-sans text-xs font-bold text-kftaRed mb-3 bg-red-50 inline-block px-3 py-1.5 rounded-full border border-red-100">500,000원</p>
        
        <p class="text-[11px] text-gray-500 mb-1">KFTA 오프라인 대면 컨설팅</p>
        <p class="text-[11px] text-[#FF477E] font-bold mb-5">상시 예약 오픈</p>
        
        <a href="consulting_3.html" class="block w-full bg-[#EF4444] hover:bg-red-600 text-white text-center font-bold py-3 rounded text-sm mb-5 transition-colors">
            예약하기
        </a>
        
        <div class="border-t border-gray-100 pt-4 mt-auto">
            <p class="text-xs text-gray-500 italic mb-2">소장 아이템 연계 컬러 배색 & 실전 맞춤형 룩북 가이드</p>
            <p class="text-xs text-gray-400">옷은 많은데 입을 게 없나요? 내게 찰떡인 코디 조합은?</p>
        </div>
    </div>
</div>

<!-- Card 4 -->
<div class="bg-white rounded-xl overflow-hidden shadow-[0_4px_20px_rgba(0,0,0,0.05)] hover:shadow-[0_8px_30px_rgba(0,0,0,0.1)] transition-shadow duration-300 flex flex-col border border-gray-100">
    <img src="assets/class_mom_profile.png" class="w-full h-56 object-cover" alt="엄마프사 프로젝트">
    <div class="p-6 flex-grow flex flex-col text-left">
        <h3 class="font-sans font-bold text-xl text-gray-900 mb-2">엄마프사 프로젝트</h3>
        <p class="font-sans text-xs font-bold text-kftaRed mb-3 bg-red-50 inline-block px-3 py-1.5 rounded-full border border-red-100">400,000원</p>
        
        <p class="text-[11px] text-gray-500 mb-1">퍼스널 브랜딩 (120분)</p>
        <p class="text-[11px] text-[#FF477E] font-bold mb-5">상시 예약 오픈</p>
        
        <a href="academy_oneday_mom.html" class="block w-full bg-[#EF4444] hover:bg-red-600 text-white text-center font-bold py-3 rounded text-sm mb-5 transition-colors">
            예약하기
        </a>
        
        <div class="border-t border-gray-100 pt-4 mt-auto">
            <p class="text-xs text-gray-500 italic mb-2">누구의 엄마, 아내가 아닌 '온전한 나'를 되찾는 시간.</p>
            <ul class="text-[11px] text-gray-400 list-disc pl-3">
                <li>자존감 회복을 위한 내면 인터뷰</li>
                <li>숨겨진 매력을 찾는 퍼스널 컬러 및 체형 진단</li>
                <li>나만의 인생샷 스타일링 코칭</li>
            </ul>
        </div>
    </div>
</div>
"@

$html = [regex]::Replace($html, $pattern, $fixedGrid)
[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\consulting.html", $html, [System.Text.Encoding]::UTF8)
