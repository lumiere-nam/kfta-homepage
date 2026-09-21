$html = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\consulting.html", [System.Text.Encoding]::UTF8)

# Replace Card 2
$pattern2 = '(?s)<!-- Card 2 -->.*?</div>\s*</div>\s*</div>'
$replacement2 = @"
<!-- Card 2 -->
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
$html = [regex]::Replace($html, $pattern2, $replacement2)

# Delete Card 5 (which is the old "엄마프사 컨설팅")
$pattern5 = '(?s)<!-- Card 5 -->.*?</div>\s*</div>\s*</div>'
$html = [regex]::Replace($html, $pattern5, '')

[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\consulting.html", $html, [System.Text.Encoding]::UTF8)
