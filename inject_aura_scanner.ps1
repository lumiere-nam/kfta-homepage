$html1 = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\consulting_1.html", [System.Text.Encoding]::UTF8)

$auraSection = @"
    </ul>
    
    <h5 class="font-bold text-kftaGreen mt-12 border-b border-gray-200 pb-2 text-xl">특별한 진단 프로그램</h5>
    <div class="mt-6 bg-white p-8 rounded-2xl shadow-lg border border-gray-100 flex flex-col items-center text-center">
        <h6 class="font-bold text-3xl text-gray-800 mb-3 tracking-wide font-serif">AURA ENERGY SCANNER</h6>
        <p class="text-gray-600 mb-8 font-medium">에너지사이언스에서 개발한 AURA ENERGY SCANNER 측정기로 나의 MIND-BODY 심신상태를 과학적으로 분석합니다.</p>
        <img src="assets/aura_scanner.png" alt="AURA ENERGY SCANNER" class="w-full max-w-3xl rounded-xl shadow-md mb-8">
        <div class="grid grid-cols-1 md:grid-cols-3 gap-6 text-sm text-gray-700 max-w-3xl">
            <div class="bg-gray-50 p-4 rounded-lg">
                <strong class="block text-kftaGreen mb-2 text-base">생체 에너지 정보 측정</strong>
                생체 임피던스와 인덕턴스를 활용하여 몸에서 발생하는 미세한 전기적 신호를 감지합니다.
            </div>
            <div class="bg-gray-50 p-4 rounded-lg">
                <strong class="block text-kftaGreen mb-2 text-base">양손 측정 시스템</strong>
                안정적이고 정밀한 양손 스캐닝을 통해 좌우 뇌와 신체의 불균형 상태를 데이터화합니다.
            </div>
            <div class="bg-gray-50 p-4 rounded-lg">
                <strong class="block text-kftaGreen mb-2 text-base">정확한 오라 이미지화</strong>
                눈에 보이지 않는 나의 감정과 에너지(Aura)를 직관적인 컬러 이미지로 변환하여 보여줍니다.
            </div>
        </div>
    </div>
"@

$html1 = $html1.Replace('</ul>
    <h5 class="font-bold text-kftaGreen mt-10 border-b border-gray-200 pb-2 text-lg">무엇을 얻어갈 수 있나요?', "$auraSection`n    <h5 class=`"font-bold text-kftaGreen mt-12 border-b border-gray-200 pb-2 text-lg`">무엇을 얻어갈 수 있나요?")

[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\consulting_1.html", $html1, [System.Text.Encoding]::UTF8)
